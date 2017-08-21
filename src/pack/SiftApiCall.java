package pack;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.siftscience.EventRequest;
import com.siftscience.EventResponse;
import com.siftscience.SiftClient;
import com.siftscience.exception.SiftException;
import com.siftscience.model.Address;
import com.siftscience.model.Browser;
import com.siftscience.model.CreateAccountFieldSet;
import com.siftscience.model.Discount;
import com.siftscience.model.LoginFieldSet;
import com.siftscience.model.PaymentMethod;
import com.siftscience.model.Promotion;
import com.siftscience.model.Reason;
import com.siftscience.model.TransactionFieldSet;
import com.siftscience.model.UpdateAccountFieldSet;
import com.siftscience.model.VerificationFieldSet;

/**
 * Servlet implementation class SiftApiCall
 */
public class SiftApiCall {

	public static String SIFT_API_KEY = "コンストラクタにてプロパティファイルから登録";

	public static final String LOGIN_EVENT_PUT = "LOGIN EVENT PUT";
	public static final String LOGIN_SCORE_GET = "LOGIN SCORE GET";
	public static final String UPDATE_EVENT_PUT = "UPDATE EVENT PUT";
	public static final String UPDATE_SCORE_GET = "UPDATE SCORE GET";
	public static final String CREATE_EVENT_PUT = "CREATE EVENT PUT";
	public static final String CREATE_SCORE_GET = "CREATE SCORE GET";
	public static final String TRANSFER_EVENT_PUT = "TRANSFER EVENT PUT";
	public static final String TRANSFER_SCORE_GET = "TRANSFER SCORE GET";
	public static final String VERIFY_EVENT_PUT = "VERIFY EVENT PUT";


    public SiftApiCall() {
        super();

        Common common = new Common();
        SIFT_API_KEY = common.getPropertyByString("sift_api_key");

    }

	public boolean sendLoginEvent (UserInfoBean bean, HttpServletRequest request) {

		System.out.println("START sendLoginEvent");

		// Sample $login event
		SiftClient client = new SiftClient(SIFT_API_KEY);


		//リクエストの作成
		LoginFieldSet loginFieldSet = new LoginFieldSet()
		        // Required Fields
		        .setUserId(bean.getUserid())
		        .setLoginStatus("$success")

		        // Required only if using the ATO product
		        .setSessionId(request.getSession().getId())
		        .setIp(request.getRemoteHost())
		        .setBrowser(new Browser()
		        .setUserAgent(request.getHeaders("User-Agent").toString()));

		//スコア取得用のリクエスト
		EventRequest loginGetScore = client.buildRequest(loginFieldSet).withScores();


		System.out.println("ログインAPIコール");

		CSVOutputBean csvOutputBean = new CSVOutputBean();
		csvOutputBean.setEventName(LOGIN_SCORE_GET);
		csvOutputBean.setUserid(bean.getUserid());
		csvOutputBean.setScoreFlag(true);

		//スコア取得
		EventResponse scoreResponse = callAPI(loginGetScore, csvOutputBean);		//get scores

		if (scoreResponse == null) {
			return false;
		}

		//コンソールにログ出力
		printResponseContents(scoreResponse);

		return scoreResponse.isOk();

	}

	public EventResponse sendCreateAccountEvent(UserInfoBean bean, HttpServletRequest request) {

		SiftClient client = new SiftClient(SIFT_API_KEY);

		CreateAccountFieldSet createAccountFieldSet = new CreateAccountFieldSet()
		        // Required Fields
		        .setUserId(bean.getUserid())
		        // Supported Fields
		        .setSessionId(request.getSession().getId())
		        .setUserEmail(bean.getEmail())
		        .setName(bean.getName())
		        .setPhone(bean.getPhone())
		        .setBillingAddress(createAddress(bean))

		        // Suggested Custom Fields
		        .setCustomField("transfer_amount_limit", bean.getAmountLimit());

		EventRequest scoreRequest = client.buildRequest(createAccountFieldSet).withScores();

		CSVOutputBean csvOutputBean = new CSVOutputBean();
		csvOutputBean.setEventName(CREATE_SCORE_GET);
		csvOutputBean.setUserid(bean.getUserid());
		csvOutputBean.setScoreFlag(true);

		EventResponse scoreResponse = callAPI(scoreRequest, csvOutputBean);

		if (scoreResponse == null) {
			return null;
		}

		//コンソールにログ出力
		printResponseContents(scoreResponse);

		return scoreResponse;
	}


	public boolean sendUpdateAccountEvent(UserInfoBean bean, HttpServletRequest request) {

		SiftClient client = new SiftClient(SIFT_API_KEY);

		UpdateAccountFieldSet updateAccountFieldSet = new UpdateAccountFieldSet()
		        // Required Fields
		        .setUserId(bean.getUserid())

		        .setSessionId(request.getSession().getId())
		        .setChangedPassword(true)
		        .setUserEmail(bean.getEmail())
		        .setName(bean.getName())
		        .setPhone(bean.getPhone())
		        .setBillingAddress(createAddress(bean))

		        // Suggested Custom Fields
		        .setCustomField("transfer_amount_limit", bean.getAmountLimit());

		EventRequest updateRequest = client.buildRequest(updateAccountFieldSet);
		EventRequest updateGetScore = client.buildRequest(updateAccountFieldSet).withScores();

		CSVOutputBean csvOutputBean = new CSVOutputBean();
		csvOutputBean.setEventName(UPDATE_SCORE_GET);
		csvOutputBean.setUserid(bean.getUserid());
		csvOutputBean.setScoreFlag(true);

		EventResponse scoreResponse = callAPI(updateGetScore, csvOutputBean);

		if (scoreResponse == null) {
			return false;
		}

		printResponseContents(scoreResponse);

		return scoreResponse.isOk();

	}

	public boolean sendTransferEvent(UserInfoBean userBean, TransferBean tranBean, HttpServletRequest request) {

		SiftClient client = new SiftClient(SIFT_API_KEY);

		TransactionFieldSet transactionFieldSet = new TransactionFieldSet()
		        // Required Fields
		        .setUserId(userBean.getUserid())
		        .setAmount(Long.parseLong(tranBean.getAmount()))
		        .setCurrencyCode("JPY")

		        .setSessionId(request.getSession().getId())
		        .setUserEmail(userBean.getEmail())
		        .setBillingAddress(createAddress(userBean));

		EventRequest transferGetScore = client.buildRequest(transactionFieldSet).withScores();

		CSVOutputBean csvOutputBean = new CSVOutputBean();
		csvOutputBean.setEventName(TRANSFER_SCORE_GET);
		csvOutputBean.setUserid(userBean.getUserid());
		csvOutputBean.setScoreFlag(true);

		System.out.println("transfer event = " + transferGetScore.getClass().getSimpleName());

		EventResponse scoreResponse = callAPI(transferGetScore, csvOutputBean);

		if (scoreResponse == null) {
			return false;
		}

		printResponseContents(scoreResponse);

		return scoreResponse.isOk();

	}


	public EventResponse setVerification (UserInfoBean bean, HttpServletRequest request) {

		SiftClient client = new SiftClient(SIFT_API_KEY);

		VerificationFieldSet VerificationFieldSet = new VerificationFieldSet()
		        // Required Fields
		        .setUserId(bean.getUserid())
		        .setSessionId(request.getSession().getId())
		        .setStatus("$pending")

		        // Optional fields if applicable
		        .setVerificationType("$email")
		        .setVerifiedValue("io9762010@yahoo.co.jp");


		CSVOutputBean csvOutputBean = new CSVOutputBean();
		csvOutputBean.setEventName(VERIFY_EVENT_PUT);
		csvOutputBean.setUserid(bean.getUserid());
		csvOutputBean.setScoreFlag(false);

		EventRequest verifyRequest = client.buildRequest(VerificationFieldSet);
		EventResponse verifyResponse = callAPI(verifyRequest,csvOutputBean);

		if (verifyResponse == null) {
			return null;
		}

		System.out.println(verifyResponse.getApiErrorMessage());

		return verifyResponse;

	}



	private Address createAddress (UserInfoBean bean) {

		return new Address()
				.setName(bean.getName())
                .setPhone(bean.getPhone())
                .setAddress1(bean.getAddress1())
                .setAddress2("") 				// 常に空欄にしとく
                .setCity(bean.getCity())
                .setRegion(bean.getRegion())
                .setCountry("JP")				 //日本で固定(ISO 3166-1 alpha-2で規定された英字2文字)
                .setZipCode(bean.getZipcode());

	}


	private PaymentMethod createPaymentMethod (UserInfoBean bean) {

		return new PaymentMethod()
				 .setPaymentType("$credit_card")
	                .setPaymentGateway("$braintree")
	                .setCardBin("542486")
	                .setCardLast4("4444");
	}


	private Promotion createPromotion (UserInfoBean bean) {

		return new Promotion()
				.setPromotionId("FirstTimeBuyer")
                .setStatus("$success")
                .setDescription("$5 off")
                .setDiscount(new Discount()
                        .setAmount(5000000L)
                        .setCurrencyCode("USD")
                        .setMinimumPurchaseAmount(25000000L));

	}

	private EventResponse callAPI(EventRequest eventRequest, CSVOutputBean csvOutputBean) {


		EventResponse eventResponse = null;

		try {

			long start = System.currentTimeMillis();
			eventResponse = eventRequest.send();          //API Call
			long end = System.currentTimeMillis();

			csvOutputBean.setWaitTime(end - start);


			Double ATOscore = eventResponse.getScore("account_takeover");
			if (ATOscore != null) {
				csvOutputBean.setAccountTakeoverScore(ATOscore.toString());
			} else {
				csvOutputBean.setAccountTakeoverScore("NULL");
			}

			Double AABscore = eventResponse.getScore("account_abuse");
			if (AABscore != null) {
				csvOutputBean.setAccountAbuseScore(AABscore.toString());
			} else {
				csvOutputBean.setAccountTakeoverScore("NULL");
			}

			Common common = new Common();
			common.outputCSV(csvOutputBean);


		} catch (SiftException e) {
		    System.out.println(e.getApiErrorMessage());
		    return eventResponse;

		} catch (IOException e) {

			e.printStackTrace();
			return eventResponse;
		}
		return eventResponse;

	}



	private void printResponseContents(EventResponse apiResponse) {

		if (apiResponse == null) {
			return;
		}

		System.out.println("ここからレスポンス");
		System.out.println(apiResponse.getBody().getScoreResponse().getLatestLabels());
		System.out.println(apiResponse.getApiErrorMessage());
		System.out.println("account_takeover = " + apiResponse.getScore("account_takeover"));
		System.out.println("**account_takeover = " + apiResponse.getAbuseScore("account_takeover"));
		System.out.println("account_abuse = " + apiResponse.getScore("account_abuse"));
		System.out.println("payment_abuse = " + apiResponse.getScore("payment_abuse"));
		System.out.println("content_abuse = " + apiResponse.getScore("content_abuse"));
		System.out.println("promotion_abuse = " + apiResponse.getScore("promotion_abuse"));

		List<Reason> reasons = apiResponse.getReasons("account_abuse");

		if (reasons != null ) {
			for(Reason reason : reasons){
	            System.out.println("acount abuse -- reason name  : " + reason.getName());
	            System.out.println("acount abuse -- reason value : " + reason.getValue());
	        }
		}

		System.out.println();

		reasons = apiResponse.getReasons("account_takeover");

		if (reasons != null ) {
			for(Reason reason : reasons){
	            System.out.println("acount takeover -- reason name  : " + reason.getName());
	            System.out.println("acount takeover -- reason value : " + reason.getValue());
	        }
		}
	}


}
