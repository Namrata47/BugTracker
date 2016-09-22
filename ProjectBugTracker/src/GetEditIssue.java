

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import myPackage.JdbcConnection;

/**
 * Servlet implementation class GetEditIssue
 */
@WebServlet("/GetEditIssue")
public class GetEditIssue extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetEditIssue() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		HttpSession session = request.getSession(true);
		String Pid=(String)session.getAttribute("Pid");
		String title = request.getParameter("title");
		String type = request.getParameter("type");
		String status = request.getParameter("status");
		String estimate = request.getParameter("estimate");
		String Description = request.getParameter("description");
		String assignee = request.getParameter("assignee");
		String developer = request.getParameter("developer");
		String qa = request.getParameter("qa");
		String Reporter = request.getParameter("reporter");
		String comments = request.getParameter("comments");

		PreparedStatement spmt1 = null;
		Connection con = null;
		con = (Connection) JdbcConnection.getConnectionString();
		
		String sql1 = "update bugtracker.issue set title='"+title+"', type='"+type+"', description='"+Description+"', assignee='"+assignee+"', developer='"+developer+"', qa='"+qa+"', reporter='"+Reporter+"', comments='"+comments+"', estimate='"+estimate+"', status='"+status+"' where id ='"+Pid+"'";
		try {
			spmt1 = (PreparedStatement) con.prepareStatement(sql1);
			
			spmt1.executeUpdate();
			response.sendRedirect("jsp/Index.jsp");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
