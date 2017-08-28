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
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {

	private static final long serialVersionUID = 1L;
    ServletContext ctx = null;


    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();

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

		System.out.println("GETメソッドで呼び出されました");

		Common common = new Common();
		common.setLoginAttribute(request, response);

		UserInfoBean userInfoBean = (UserInfoBean) request.getSession(true).getAttribute("userinfo");

	//	common.sendGmail();

		//siftかsimilityかを判断
		String prefix = Util.judgeURI(request);

		if (prefix.equals("/simility")) {

			SimilityApiCall similityApiCall = new SimilityApiCall();
			similityApiCall.sendLoginEvent(userInfoBean);

		} else if (prefix.equals("/sift")) {

			SiftApiCall siftApiCall = new SiftApiCall();
			siftApiCall.sendLoginEvent(userInfoBean, request);

		}

        // 画面を表示
		RequestDispatcher rd = null;

		//遷移元の画面のJS有無によって、フォワード先を変える
		String JS = request.getParameter("JS");

		if(JS!=null && JS.equals("true")) {
			rd = ctx.getRequestDispatcher(prefix + "/MainPage.jsp");
		} else {
			rd = ctx.getRequestDispatcher(prefix + "/MainPage-noJS.jsp");
		}
        rd.forward(request, response);

	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("POSTメソッドで呼び出されました");

		doGet(request, response);
	}

}
