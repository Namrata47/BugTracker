<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<FORM method="post" action="/ProjectBugTracker/GetCreateIssue">
	<fieldset>
					<legend align="center">
						<font face="Lucida Console" size="5"> <b><u>BUG REPORTING</u>
				</b>
				</font>
			</legend>
	
		<br><br><table>
			<tr>
				<td>Title</td>
				<td><INPUT TYPE="text" NAME="title" size="100"></td>
			</tr><br>
			<tr>
				<td>Type</td>
				<td><SELECT NAME="type">
						<OPTION VALUE="bug" selected>Bug</OPTION>
						<OPTION VALUE="enhancement">Enhancement</OPTION>
						<OPTION VALUE="Support">Support Task</OPTION>
						<OPTION VALUE="other">Other</OPTION>
				</SELECT></td>
			</tr><br>
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
			</tr><br>
			<tr>
				<td>Estimate Hours</td>
				<td><INPUT TYPE="text" NAME="estimate"></td>
			</tr><br>
			<tr>
				<td>Description</td>
				<td><TEXTAREA NAME="Description" ROWS="5" COLS="100"></TEXTAREA></td>
			</tr><br>
			<tr>
				<td>Assignee</td>
				<td><INPUT TYPE="text" NAME="assignee"></td>
			</tr><br>
			<tr>
				<td>Developer</td>
				<td><INPUT TYPE="text" NAME="developer"></td>
			</tr><br>
			<tr>
				<td>QA</td>
				<td><INPUT TYPE="text" NAME="qa"></td>
			</tr><br>
			<tr>
				<td>Reporter</td>
				<td><INPUT TYPE="text" NAME="Reporter"></td>
			</tr><br>
			<tr>
				<td>Comments</td>
				<td><TEXTAREA NAME="comments" ROWS="5" COLS="100"></TEXTAREA></td>
			</tr><br><br><br>
		</table>
		<INPUT TYPE="submit" name="Create" value="Create" align="middle">
	</fieldset>
	</FORM>
</body>
</html>