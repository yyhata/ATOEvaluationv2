package pack;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URL;
import java.net.URLClassLoader;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Locale;
import java.util.Properties;
import java.util.ResourceBundle;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Common
 */
public class Common {

    public Common() {
        super();
        // TODO Auto-generated constructor stub
    }



    public void setAccountUpdateAttribute(HttpServletRequest request, HttpServletResponse response)
        throws IOException, ServletException {


    	request.setCharacterEncoding("UTF-8");

    	// ブラウザからの情報の読み取り
        String name 		 = request.getParameter("name");
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String userid 	 	 = request.getParameter("userID");
        String password 	 = request.getParameter("password");
        String phone 	     = request.getParameter("phone");
        String email        = request.getParameter("email");
        String amountLimit = request.getParameter("amountLimit");


        String zipcode 	 = request.getParameter("zipcode");
        String region 		 = request.getParameter("region");
        String city 		 = request.getParameter("city");
        String address1 	 = request.getParameter("address1");

        if (name == null) {
        	name = "";
        }
        if (firstname == null) {
        	firstname = "";
        }
        if (lastname == null) {
        	lastname = "";
        }
        if (userid == null) {
        	userid = "";
        }
        if (password == null) {
        	password = "";
        }
        if (phone == null) {
        	phone = "";
        }
        if (email == null) {
        	email = "";
        }
        if (amountLimit == null) {
        	amountLimit = "";
        }
        if (zipcode == null) {
        	zipcode = "";
        }
        if (region == null) {
        	region = "";
        }
        if (city == null) {
        	city = "";
        }
        if (address1 == null) {
        	address1 = "";
        }

        System.out.println(name + ", " + firstname + ", " + lastname + ", " +  userid + ", " + password + ", " +  phone + ", " +  email + ", " +  amountLimit + ", " + zipcode  + ", " + region  + ", " + city + ", " + address1);


        // セッションオブジェクトに保管
        HttpSession session = request.getSession(true);
        UserInfoBean userinfo = new UserInfoBean();

        userinfo.setUserid(userid);
        userinfo.setPassword(password);
        userinfo.setPhone(phone);
        userinfo.setEmail(email);
        userinfo.setName(name);
        userinfo.setFirstname(firstname);
        userinfo.setLastname(lastname);
        userinfo.setAmountLimit(amountLimit);

        userinfo.setZipcode(zipcode);
        userinfo.setRegion(region);
        userinfo.setCity(city);
        userinfo.setAddress1(address1);

        session.setAttribute("userinfo", userinfo);

        System.out.println(userinfo.getEmail());
    }



    public void setLoginAttribute(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {


        	request.setCharacterEncoding("UTF-8");

        	// ブラウザからの情報の読み取り

            String userID = request.getParameter("userID");
            String password = request.getParameter("password");

            System.out.println(userID + ", " + password);


            UserInfoBean bean = new UserInfoBean();


            ArrayList<ArrayList<String>> dummyUsers = loadDummyUsers();

            for (ArrayList<String> user : dummyUsers) {

            	if (user.get(0).equals(userID)) {

            		bean = setDummyData(bean,user);
            	}
            }

            // セッションオブジェクトに保管
            HttpSession session = request.getSession(true);
            session.setAttribute("userinfo", bean);
        }


	private UserInfoBean setDummyData(UserInfoBean bean, ArrayList<String> dummy) {

		bean.setUserid(dummy.get(0));
		bean.setPassword(dummy.get(1));
		bean.setName(dummy.get(2));
		bean.setPhone(dummy.get(3));
		bean.setEmail(dummy.get(4));
		bean.setAmountLimit(dummy.get(5));
		bean.setZipcode(dummy.get(6));
		bean.setRegion(dummy.get(7));
		bean.setCity(dummy.get(8));
		bean.setAddress1(dummy.get(9));
		bean.setLastname(dummy.get(10));
		bean.setFirstname(dummy.get(11));
		bean.setAccountNumber(dummy.get(12));

		return bean;

	}

    public void setTransferAttribute(HttpServletRequest request, HttpServletResponse response)
        throws IOException, ServletException {


    	request.setCharacterEncoding("UTF-8");

    	// ブラウザからの情報の読み取り
        String toName = request.getParameter("toName");
        String accountNumber = request.getParameter("accountNumber");
        String amount = request.getParameter("amount");

        if (toName == null) {
        	toName = "";
        }
        if (accountNumber == null) {
        	accountNumber = "";
        }
        if (amount == null) {
        	amount = "";
        }

        /*
        // セッションオブジェクトに保管
        HttpSession session = request.getSession(true);
        TransferBean transferBean = new TransferBean();

        transferBean.setToName(toName);
        transferBean.setAccountNumber(accountNumber);
        transferBean.setAmount(amount);

        session.setAttribute("transfer", transferBean);
        */

        //リクエストオブジェクトに保管
        TransferBean transferBean = new TransferBean();
        transferBean.setToName(toName);
        transferBean.setAccountNumber(accountNumber);
        transferBean.setAmount(amount);

        request.setAttribute("transfer", transferBean);

        System.out.println("transferBean = " + transferBean.getToName() + ", " +  transferBean.getAccountNumber() + ", " + transferBean.getAmount());

        HttpSession session = request.getSession(true);
        session.setAttribute("transfer2", transferBean);

    }

    public void sendGmail() {

        System.out.println("メール送信開始");

    	try{
            Properties property = new Properties();

            property.put("mail.smtp.host","smtp.gmail.com");

            //GmailのSMTPを使う場合
            property.put("mail.smtp.auth", "true");
            property.put("mail.smtp.starttls.enable", "true");
            property.put("mail.smtp.host", "smtp.gmail.com");
            property.put("mail.smtp.port", "587");
            property.put("mail.debug", "true");
            property.put("mail.smtp.timeout", "50000");

            Session session = Session.getInstance(property, new javax.mail.Authenticator(){
                protected PasswordAuthentication getPasswordAuthentication(){
                    return new PasswordAuthentication(getPropertyByString("gmailID"), getPropertyByString("gmailPass"));
                }
            });

            /*
            //一般的なSMTPを使う場合

            //ポートが25の場合は省略可能
            property.put("mail.smtp.port", 25);

            Session session =
                    Session.getDefaultInstance(property, null);
            */
            System.out.println("メール送信1");

            MimeMessage mimeMessage = new MimeMessage(session);

            InternetAddress toAddress =
//                    new InternetAddress("io9762010@yahoo.co.jp", "Test To Hata");
                    new InternetAddress(getPropertyByString("yahooMail"));

            mimeMessage.setRecipient(Message.RecipientType.TO, toAddress);

            InternetAddress fromAddress =
//                    new InternetAddress("yuyahata.mirraz@gmail.com","Test From Hata");
                    new InternetAddress(getPropertyByString("gmailID"));

            mimeMessage.setFrom(fromAddress);

//            mimeMessage.setSubject("テスト件名", "ISO-2022-JP");
            mimeMessage.setSubject("テスト件名");
//            mimeMessage.setText("テスト本文", "ISO-2022-JP");
            mimeMessage.setText("テスト本文");

            System.out.println("メール送信2");
            Transport.send(mimeMessage);

            System.out.println("メール送信完了");

        }
        catch(Exception e){

        	e.printStackTrace();

        }

    }


	public ArrayList<ArrayList<String>> loadDummyUsers() {


		ArrayList<ArrayList<String>> dummyUsers = new ArrayList<ArrayList<String>>();


		//負荷検証用ユーザー（P始まり）
		for (int i=0; i<51; i++) {

			String num = String.valueOf(i);

			if (num.length()==1) {
				num = "0" + num;
			}

			ArrayList<String> dummyUser = new ArrayList<String>();
			dummyUser.add("PID-00" + num); //ID
			dummyUser.add("pw00" + num);   //pw
			dummyUser.add("負荷ユーザー" + num);   //氏名
			dummyUser.add("080123400" + num);   //Phone
			dummyUser.add("p-newaccount" + num + "@newaccount" + num + ".com");   //email
			dummyUser.add("100");   //送金限度額
			dummyUser.add("1440052");   //zip
			dummyUser.add("東京都");   //region
			dummyUser.add("大田区蒲田");   //city
			dummyUser.add("アロマスクエア1" + num);   //address
			dummyUser.add("負荷" );   //last name
			dummyUser.add("ユーザー" + num );   //first name
			dummyUser.add("00000" + num );   //account number

			dummyUsers.add(dummyUser);
		}

		//個人用ユーザー（Pなし）
		for (int i=0; i<51; i++) {

			String num = String.valueOf(i);
			if (num.length()==1) {
				num = "0" + num;
			}

			ArrayList<String> dummyUser = new ArrayList<String>();
			dummyUser.add("ID-00" + num); //ID
			dummyUser.add("pw00" + num);   //pw
			dummyUser.add("通常ユーザー" + num);   //氏名
			dummyUser.add("080123400" + num);   //Phone
			dummyUser.add("newaccount" + num + "@newaccount" + num + ".com");   //email
			dummyUser.add("100");   //送金限度額
			dummyUser.add("1440052");   //zip
			dummyUser.add("東京都");   //region
			dummyUser.add("大田区蒲田");   //city
			dummyUser.add("アロマスクエア1" + num);   //address
			dummyUser.add("通常" );   //last name
			dummyUser.add("ユーザー" + num );   //first name
			dummyUser.add("11111" + num );   //account number

			dummyUsers.add(dummyUser);
		}

	    return dummyUsers;

	}

	public String getPropertyByString(String key) {

		String rtnContent = null;

		try {

	        //実行環境におけるプロパティファイルの絶対パスを取得
	        ClassLoader cls = Thread.currentThread().getContextClassLoader();

	    	File f = new File(cls.getResource("").toString());
	    	String classPath = f.getAbsolutePath();

	    	String s = File.separator;
	    	String contextPath = classPath.substring(classPath.lastIndexOf(s + "file:") + 6, classPath.length());

	    	//propertiesファイル名(.propertiesは不要)
	        String source = "private";

    	    //取得処理
    	    URLClassLoader urlLoader = new URLClassLoader(new URL[]{new File(contextPath).toURI().toURL()});
    	    ResourceBundle bundle = ResourceBundle.getBundle(source, Locale.getDefault(), urlLoader);
    	    rtnContent = bundle.getString(key);

    	} catch (Exception e) {

    		e.printStackTrace();

    	}

		return rtnContent;
	}


    public boolean outputCSV(CSVOutputBean csvOutputBean) {

	    try {
	        //出力先を作成する
	        FileWriter fw = new FileWriter("/var/log/tomcat8/test.csv", true);
	        PrintWriter pw = new PrintWriter(new BufferedWriter(fw));

	        //現在日時取得
	        Calendar c = Calendar.getInstance();
	        //フォーマットを指定
	        SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy/MM/dd");
	        SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
	        String currentDate = sdfDate.format(c.getTime());
	        String currentTime = sdfTime.format(c.getTime());

	        //内容を指定する
	        pw.print(currentDate);
	        pw.print(",");
	        pw.print(currentTime);
	        pw.print(",");
	        pw.print(csvOutputBean.getUserid());
	        pw.print(",");
	        pw.print(csvOutputBean.getEventName());
	        pw.print(",");
	        pw.print(csvOutputBean.getWaitTime());
	        pw.print(",");
	        pw.print(csvOutputBean.isScoreFlag());
	        pw.print(",");
	        pw.print(csvOutputBean.getAccountTakeoverScore());
	        pw.print(",");
	        pw.print(csvOutputBean.getAccountAbuseScore());
	        pw.println();

	        //ファイルに書き出す
	        pw.close();

	        //CSVファイルをS3に保管
//	        putCSVtoS3("/var/log/tomcat8/test.csv");

	        //終了メッセージを画面に出力する
	        System.out.println("出力が完了しました。");


	    } catch (IOException ex) {
	        //例外時処理
	        ex.printStackTrace();
	        return false;
	    }

	    return true;
    }

   private void putCSVtoS3(String uploadFile) throws IOException {

    	String bucketName     = "jisedai-ato-test";
    	String keyName        = "test-output.csv";

        try {
            System.out.println("Uploading a new object to S3 from a file\n");
            File file = new File(uploadFile);

            S3Access s3Access = new S3Access();
            s3Access.putObject(bucketName, keyName, file);

        } catch (Exception e) {

			e.printStackTrace();
		}

    }

   public String toEncryptedHashValue(String algorithmName, String value) {

	    MessageDigest md = null;
	    StringBuilder sb = null;

	    try {
	        md = MessageDigest.getInstance(algorithmName);

	    } catch (NoSuchAlgorithmException e) {
	        e.printStackTrace();
	    }

	    md.update(value.getBytes());
	    sb = new StringBuilder();

	    for (byte b : md.digest()) {
	        String hex = String.format("%02x", b);
	        sb.append(hex);
	    }

	    return sb.toString();
	}

}
