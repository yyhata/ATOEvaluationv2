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
 * Servlet implementation class Transfer
 */
public class Transfer extends HttpServlet {
	private static final long serialVersionUID = 1L;
    ServletContext ctx = null;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Transfer() {
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


		Common common = new Common();
		common.setTransferAttribute(request, response);

        request.setAttribute("updateMessage", "送金完了しました！");

        UserInfoBean userInfoBean = (UserInfoBean) request.getSession(true).getAttribute("userinfo");
        TransferBean transferBean = (TransferBean) request.getAttribute("transfer");

        //Sift Scince APIコール
        SiftApiCall siftApiCall = new SiftApiCall();
        siftApiCall.sendTransferEvent(userInfoBean, transferBean, request);

        //Simility APIコール
		SimilityApiCall similityApiCall = new SimilityApiCall();
        similityApiCall.sendTransferEvent(userInfoBean, transferBean);


        // 画面を表示
		RequestDispatcher rd = null;
		//siftかsimilityかを判断
		String prefix = Util.judgeURI(request);
		//遷移元の画面のJS有無によって、フォワード先を変える
		if(request.getParameter("JS").equals("true")) {
			rd = ctx.getRequestDispatcher(prefix + "/Transfer.jsp");
		} else {
			rd = ctx.getRequestDispatcher(prefix + "/Transfer-noJS.jsp");
		}
        rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
