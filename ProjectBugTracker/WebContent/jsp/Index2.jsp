<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String Pid=(String)request.getParameter("subid");
			Connection conn = null;
			Class.forName("com.mysql.jdbc.Driver");
			conn =(Connection) DriverManager.getConnection("jdbc:mysql://localhost/test", "root", "admin");
			response.setContentType("text/html");
			PreparedStatement pStmt = null;
%><br>
<%
    String sql3="select title, type, description, assignee, developer, qa, reporter, coments, estimate, status,id from bugtracker.issue where type='"+Pid+"'" ;
    pStmt = (PreparedStatement) conn.prepareStatement(sql3);
    ResultSet rs1 = (ResultSet) pStmt.executeQuery(sql3);
		 while(rs1.next()){
%>
	Id:<%=rs1.getString(10)%><br/><br/>  
Title:<%=rs1.getString(1)%><br/><br/>  
Type:<%=rs1.getString(2)%> <br/><br/> 
Description:<%=rs1.getString(3)%>  <br/><br/>
Assignee:<%=rs1.getString(4)%>  <br/><br/>
Developer:<%=rs1.getString(5)%>  <br/><br/>
QA:<%=rs1.getString(6)%>  <br/><br/>
Reporter:<%=rs1.getString(7)%>  <br/><br/>
Comment:<%=rs1.getString(8)%><br/><br/>
Estimate:<%=rs1.getString(9)%>  <br/><br/>
Status:<%=rs1.getString(10)%>  <br/><br/>
        
      
	
	
      <%}
 
	%>
</body>
</html>