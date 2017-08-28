package pack;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateProfile
 */
public class UpdateProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
    ServletContext ctx = null;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateProfile() {
        super();
        // TODO Auto-generated constructor stub
    }

    public void init(ServletConfig config) {
        synchronized(this) {
         if(ctx == null) {
           ctx = config.getServletContext();
         }
        }
    }


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		UserInfoBean userInfoBean = (UserInfoBean) request.getSession(true).getAttribute("userinfo");

		//セッション情報の退避
		String oldPassword = userInfoBean.getPassword();
		String oldTransferLimit = userInfoBean.getAmountLimit();

		//ユーザーが入力した情報をセッションにセット
		Common common = new Common();
		common.setAccountUpdateAttribute(request, response);
        request.setAttribute("updateMessage", "登録情報が更新されました！");


		//siftかsimilityかを判断
		String prefix = Util.judgeURI(request);

		if (prefix.equals("/simility")) {

			SimilityApiCall similityApiCall = new SimilityApiCall();

			//新しい情報の取得
			String newPassword = request.getParameter("password");
			String newTransferLimit = request.getParameter("amountLimit");

			//Passwordの変更があった場合、APIコール
			if (!oldPassword.equals(newPassword)) {

				System.out.println("password変更");
				similityApiCall.sendPasswordChangeEvent(userInfoBean, oldPassword);
			}

			//送金限度額の変更があった場合、APIコール
			if (!oldTransferLimit.equals(newTransferLimit)) {

				System.out.println("limit変更");
				similityApiCall.sendLimitChangeEvent(userInfoBean, oldTransferLimit);
			}

		} else if (prefix.equals("/sift")) {

			//Sift Science API呼び出し
	        SiftApiCall siftApiCall = new SiftApiCall();
			siftApiCall.sendUpdateAccountEvent(userInfoBean, request);

		}

        // 画面を表示
		RequestDispatcher rd = null;
		String JS = request.getParameter("JS");

		//遷移元の画面のJS有無によって、フォワード先を変える
		if(JS.equals("true")) {
			rd = ctx.getRequestDispatcher(prefix + "/ChangeProfile.jsp");
		} else {
			rd = ctx.getRequestDispatcher(prefix + "/ChangeProfile-noJS.jsp");
		}

        rd.forward(request, response);

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
