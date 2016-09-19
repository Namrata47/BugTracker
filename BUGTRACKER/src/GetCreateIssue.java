

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

/**
 * Servlet implementation class GetCreateIssue
 */
@WebServlet("/GetCreateIssue")
public class GetCreateIssue extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetCreateIssue() {
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
		String title = request.getParameter("title");
		String type = request.getParameter("type");
		String status = request.getParameter("status");
		String estimate = request.getParameter("estimate");
		String Description = request.getParameter("Description");
		String assignee = request.getParameter("assignee");
		String developer = request.getParameter("developer");
		String qa = request.getParameter("qa");
		String Reporter = request.getParameter("Reporter");
		String comments = request.getParameter("comments");

		PreparedStatement spmt1 = null;
		Connection con = null;
		con = (Connection) JdbcConnection.getConnectionString();
		String sql1 = "insert into bugtracker.issue(title, type, description, assignee, developer, qa, reporter, comments, estimate, status)values(?,?,?,?,?,?,?,?,?,?)";
		try {
			spmt1 = (PreparedStatement) con.prepareStatement(sql1);
			spmt1.setString(1, title);
			spmt1.setString(2, type);
			spmt1.setString(3, Description);
			spmt1.setString(4, assignee);
			spmt1.setString(5, developer);
			spmt1.setString(6, qa);
			spmt1.setString(7, Reporter);
			spmt1.setString(8, comments);
			spmt1.setString(9, estimate);
			spmt1.setString(10, status);
			spmt1.executeUpdate();
			response.sendRedirect("jsp/Index.jsp");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	}


