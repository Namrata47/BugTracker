<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
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
 <FORM METHOD="post" ACTION="/ProjectBugTracker/GetEditIssue">
<%String Pid=(String)session.getAttribute("Pid");
			Connection conn = null;
			Class.forName("com.mysql.jdbc.Driver");
			conn =(Connection) DriverManager.getConnection("jdbc:mysql://localhost/test", "root", "admin");
			response.setContentType("text/html");
			PreparedStatement pStmt = null;
			PreparedStatement pStmt1 = null;
			PreparedStatement pStmt2 = null;
%><br>
<%
    String sql3="select title, type, description, assignee, developer, qa, reporter, comments, estimate, status from bugtracker.issue where id='"+Pid+"'" ;
    pStmt = (PreparedStatement) conn.prepareStatement(sql3);
    ResultSet rs1 = (ResultSet) pStmt.executeQuery(sql3);
		 while(rs1.next()){
%>
Title:<INPUT TYPE="text" NAME="title" value="<%=rs1.getString(1)%>"><br/><br/>  
Description:<INPUT TYPE="text" NAME="description" value="<%=rs1.getString(3)%>">  <br/><br/>
Assignee:<INPUT TYPE="text" NAME="assignee" value="<%=rs1.getString(4)%>">  <br/><br/>
Developer:<INPUT TYPE="text" NAME="developer" value="<%=rs1.getString(5)%>">  <br/><br/>
QA:<INPUT TYPE="text" NAME="qa" value="<%=rs1.getString(6)%>">  <br/><br/>
Reporter<INPUT TYPE="text" NAME="reporter" value="<%=rs1.getString(7)%>">  <br/><br/>
Comments:<INPUT TYPE="text" NAME="coments" value="<%=rs1.getString(8)%>"><br/><br/>
Estimate:<INPUT TYPE="text" NAME="estimate" value="<%=rs1.getString(9)%>">  <br/><br/>
      <%
 }
	%>
	Type:
    <select name='type' >  
						<OPTION VALUE="bug" selected>Bug</OPTION>
						<OPTION VALUE="enhancement">Enhancement</OPTION>
						<OPTION VALUE="Support">Support Task</OPTION>
						<OPTION VALUE="other">Other</OPTION>
    </select>	
    <br><br>
	Status:
    <SELECT NAME="status">
						<OPTION VALUE="analysis" selected>Analysis</OPTION>
						<OPTION VALUE="progress">In Progress</OPTION>
						<OPTION VALUE="testing">Testing</OPTION>
						<OPTION VALUE="complete">Complete</OPTION>
						<OPTION VALUE="hold">On Hold</OPTION>
						<OPTION VALUE="close">Closed</OPTION>
				</SELECT>
    <br><br>

<INPUT TYPE="submit" value="submit">

	
	</FORM>
</body>
</html>