<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<FORM METHOD="post" ACTION="/BUGTRACKER/GetCreateIssue">
		<table>
			<tr>
				<td>Title</td>
				<td><INPUT TYPE="text" NAME="title" size="100"></td>
			</tr>
			<tr>
				<td>Type</td>
				<td><SELECT NAME="type">
						<OPTION VALUE="bug" selected>Bug</OPTION>
						<OPTION VALUE="enhancement">Enhancement</OPTION>
						<OPTION VALUE="Support">Support Task</OPTION>
						<OPTION VALUE="other">Other</OPTION>
				</SELECT></td>
			</tr>
			<tr>
				<td>Status</td>
				<td><SELECT NAME="status">
						<OPTION VALUE="analysis" selected>Analysis</OPTION>
						<OPTION VALUE="progress">In Progress</OPTION>
						<OPTION VALUE="testing">Testing</OPTION>
						<OPTION VALUE="complete">Complete</OPTION>
						<OPTION VALUE="hold">On Hold</OPTION>
						<OPTION VALUE="close">Closed</OPTION>
				</SELECT></td>
			</tr>
			<tr>
				<td>Estimate Hours</td>
				<td><INPUT TYPE="text" NAME="estimate"></td>
			</tr>
			<tr>
				<td>Description</td>
				<td><TEXTAREA NAME="Description" ROWS="5" COLS="100"></TEXTAREA></td>
			</tr>
			<tr>
				<td>Assignee</td>
				<td><INPUT TYPE="text" NAME="assignee"></td>
			</tr>
			<tr>
				<td>Developer</td>
				<td><INPUT TYPE="text" NAME="developer"></td>
			</tr>
			<tr>
				<td>QA</td>
				<td><INPUT TYPE="text" NAME="qa"></td>
			</tr>
			<tr>
				<td>Reporter</td>
				<td><INPUT TYPE="text" NAME="Reporter"></td>
			</tr>
			<tr>
				<td>Comments</td>
				<td><TEXTAREA NAME="comments" ROWS="5" COLS="100"></TEXTAREA></td>
			</tr>
		</table>
		<INPUT TYPE="submit" name="Create" value="Create">

	</FORM>
</body>
</html>