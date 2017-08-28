package pack;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class SimilityLevelSet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    ServletContext ctx = null;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public SimilityLevelSet() {
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

		Common common = new Common();
		common.setLoginAttribute(request, response);


		String similityLiteLevel = request.getParameter("level");
		System.out.println("similityLiteLevel = " + similityLiteLevel);

        // セッションオブジェクトに保管
        HttpSession session = request.getSession(true);
        session.setAttribute("similityLiteLevel", similityLiteLevel);

        // 画面を表示
		RequestDispatcher rd = null;
		rd = ctx.getRequestDispatcher("/simility/Login.jsp");

		System.out.println("forward = " + similityLiteLevel);
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
