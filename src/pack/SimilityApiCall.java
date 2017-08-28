package pack;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URL;
import java.sql.Timestamp;

import javax.net.ssl.HttpsURLConnection;

import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

public class SimilityApiCall {

	//予めSimilityが定めているイベント名（エンティティ名）
	public static final String LOGIN_ENTITY = "be_login";
	public static final String SIGNUP_ENTITY = "be_signup";
	public static final String PASSWORD_UPDATE_ENTITY = "be_password_change";
	public static final String LIMIT_UPDATE_ENTITY = "be_transfer_limit_change";
	public static final String TRANSFER_ENTITY = "be_transfer";


    public SimilityApiCall() {
        super();

    }

	public boolean sendLoginEvent (UserInfoBean bean) {

		System.out.println("START 1");

        try {

        	//ログインイベントのペイロードを作成
	        JSONObject fieldsJson = new JSONObject();
	        fieldsJson.put("user_id", bean.getUserid());
	        fieldsJson.put("account_age", 1);   //本来はアカウント作成からの日数を入れるが、今回は固定値
	        fieldsJson.put("first_name", bean.getFirstname());
	        fieldsJson.put("last_name", bean.getLastname());


			//API呼び出し
	        long start = System.currentTimeMillis();
	        JSONObject decision = callAPI(fieldsJson, LOGIN_ENTITY);
	        long end = System.currentTimeMillis();

	        long responseTime = end - start;

	        //結果をログ出力
	        printResponseContents(decision);

	        //CSV出力
	        outputCSV(decision, responseTime);

        }catch (Exception e){
        	e.printStackTrace();
        	return false;
        }

        return true;

	}

	public boolean sendCreateAccountEvent(UserInfoBean bean) {

		System.out.println("START 3");
		Common common = new Common();

        try {

        	//口座開設イベントのペイロードを作成
	        JSONObject fieldsJson = new JSONObject();
	        fieldsJson.put("user_id", bean.getUserid());
	        fieldsJson.put("first_name", bean.getFirstname());
	        fieldsJson.put("last_name", bean.getLastname());

	        fieldsJson.put("password_hash", common.toEncryptedHashValue("MD5", bean.getPassword()));
	        fieldsJson.put("phone", bean.getPhone());
	        fieldsJson.put("email", bean.getEmail());
	        fieldsJson.put("transfer_limit", bean.getAmountLimit());
	        fieldsJson.put("postal_code", bean.getZipcode());
	        fieldsJson.put("region", bean.getRegion());
	        fieldsJson.put("city", bean.getCity());
	        fieldsJson.put("address", bean.getAddress1());


			//API呼び出し
	        long start = System.currentTimeMillis();
	        JSONObject decision = callAPI(fieldsJson, SIGNUP_ENTITY);
	        long end = System.currentTimeMillis();

	        long responseTime = end - start;

	        //結果をログ出力
	        printResponseContents(decision);

	        //CSV出力
	        outputCSV(decision, responseTime);

        }catch (Exception e){
        	e.printStackTrace();
        	return false;
        }

        return true;
	}


	public boolean sendPasswordChangeEvent(UserInfoBean bean, String oldPassword) {

		System.out.println("START 3");
		Common common = new Common();

        try {

        	//パスワード変更イベントのペイロードを作成
	        JSONObject fieldsJson = new JSONObject();
	        fieldsJson.put("user_id", bean.getUserid());
	        fieldsJson.put("old_password_hash", common.toEncryptedHashValue("MD5", oldPassword));
	        fieldsJson.put("new_password_hash", common.toEncryptedHashValue("MD5", bean.getPassword()));

			//API呼び出し
	        long start = System.currentTimeMillis();
	        JSONObject decision = callAPI(fieldsJson, PASSWORD_UPDATE_ENTITY);
	        long end = System.currentTimeMillis();

	        long responseTime = end - start;

	        //結果をログ出力
	        printResponseContents(decision);

	        //CSV出力
	        outputCSV(decision, responseTime);


        }catch (Exception e){
        	e.printStackTrace();
        	return false;
        }

        return true;

	}

	public boolean sendLimitChangeEvent(UserInfoBean bean, String oldTransferLimit) {

		System.out.println("START 4");

        try {

        	//限度額変更イベントのペイロードを作成
	        JSONObject fieldsJson = new JSONObject();
	        fieldsJson.put("user_id", bean.getUserid());
	        fieldsJson.put("old_transfer_limit", oldTransferLimit);
	        fieldsJson.put("new_transfer_limit", bean.getPassword());


			//API呼び出し
	        long start = System.currentTimeMillis();
	        JSONObject decision = callAPI(fieldsJson, LIMIT_UPDATE_ENTITY);
	        long end = System.currentTimeMillis();

	        long responseTime = end - start;

	        //結果をログ出力
	        printResponseContents(decision);

	        //CSV出力
	        outputCSV(decision, responseTime);


        }catch (Exception e){
        	e.printStackTrace();
        	return false;
        }

        return true;

	}

	public boolean sendTransferEvent(UserInfoBean userBean, TransferBean tranBean) {

		System.out.println("START 5");

        try {
        	//送金イベントのペイロードを作成
        	JSONObject fieldsJson = new JSONObject();
        	fieldsJson.put("user_id", userBean.getUserid());
        	fieldsJson.put("origin_account", userBean.getAccountNumber()); //from account number
	        fieldsJson.put("destination_name", tranBean.getToName());
	        fieldsJson.put("destination_account", tranBean.getAccountNumber());
	        fieldsJson.put("amount", tranBean.getAmount());
	        fieldsJson.put("currency_code", "JPY"); //ISO 4217 currency code

			//API呼び出し
	        long start = System.currentTimeMillis();
	        JSONObject decision = callAPI(fieldsJson, TRANSFER_ENTITY);
	        long end = System.currentTimeMillis();

	        long responseTime = end - start;

	        //結果をログ出力
	        printResponseContents(decision);

	        //CSV出力
	        outputCSV(decision, responseTime);


        }catch (Exception e){
        	e.printStackTrace();
        	return false;
        }

        return true;

	}


	private JSONObject callAPI(JSONObject fieldsJson, String eventEntity) {

		JSONObject similityResponse = null;
		JSONObject decision = null;
		long timeStampMillis  = System.currentTimeMillis();
        JSONObject ingressBody = new JSONObject();

		try {

			String userId = fieldsJson.getString("user_id");

	    	//ペイロードの準備（共通部分）
	        ingressBody.put("id", userId + "_" + timeStampMillis);
	        ingressBody.put("entity", eventEntity);

	        fieldsJson.put("timestamp", new Timestamp(timeStampMillis));
	        ingressBody.put("fields", fieldsJson);

			//送信するペイロード完成
			JSONArray payload = new JSONArray().put(ingressBody);


			//API送信の準備
			Common common = new Common();
	        URL url = new URL(common.getPropertyByString("simility_endpoint"));
	        String apiKey = common.getPropertyByString("simility_api_key");

	        HttpsURLConnection con = (HttpsURLConnection) url.openConnection();
	        con.setRequestProperty("Content-Type", "application/json");
	        con.setRequestProperty("Accept", "application/json");
	        con.setRequestProperty("Authorization", "bearer " + apiKey);
	        con.setRequestMethod("POST");
	        con.setDoOutput(true); //POSTを可能にするためのプロパティ


	        //API接続
	        OutputStreamWriter wr = new OutputStreamWriter(con.getOutputStream());
	        wr.write(payload.toString()); //ここでPOSTが行われる
	        wr.flush();
	        wr.close();

	        int responseCode = 0;

	        //レスポンスの取得
	        try {

	            responseCode = con.getResponseCode();

	            if (responseCode == 200) {

	            	//POSTした結果を取得（InputStreamに入っている）
	                BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));

	                String inputLine;
	                StringBuffer response = new StringBuffer("");

	                //POST結果をresponseに格納
	                while ((inputLine = in.readLine()) != null) {
	                    response.append(inputLine);

	                }
	                in.close();

	                //結果（APIのレスポンス全体）
	                similityResponse = new JSONObject(String.valueOf(response));

	                //結果（スコア部分）
	                decision = similityResponse.getJSONArray("entries").getJSONObject(0);

	            } else {
	                System.out.println("No valid response: " + responseCode);
	            }

	        } catch (IOException e) {
	            System.out.println("Failed with exception: " + e);
	        }

		} catch (Exception e) {
			e.printStackTrace();
		}

        return decision;

	}



	private void printResponseContents(JSONObject decision) {

		if (decision == null) {
			return;
		}

		try {
			String id = decision.getString("id");
	        int score = decision.getInt("score");

	        JSONArray decisionLabels = decision.getJSONArray("decisionLabels");
	        JSONObject leadLabels = decision.getJSONObject("leadLabels");

	        System.out.printf("Simility Response:\nID: %s\nScore: %d\nDecisions: %s\nReasons: %s\n", id, score, decisionLabels, leadLabels);

		} catch (JSONException e) {

			e.printStackTrace();
		}

	}

	private void outputCSV(JSONObject decision, long responseTime) {

		CSVOutputBean csvOutputBean = new CSVOutputBean();

		try {

			csvOutputBean.setUserid(decision.getString("id"));
			csvOutputBean.setAccountTakeoverScore((decision.getString("score")));
			csvOutputBean.setEventName(decision.getString("entity"));
			csvOutputBean.setWaitTime(responseTime);

		} catch (JSONException e) {
			e.printStackTrace();
		}

		Common common = new Common();
		common.outputCSV(csvOutputBean);

	}

}
