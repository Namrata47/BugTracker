<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
/* function ValidationEvent() 
{
	// Storing Field Values In Variables
	var title = document.getElementsByName("title").value;
	var type = document.getElementsByName("type").value;
	var status = document.getElementsByName("status").value;
	var estimate = document.getElementsByName("estimate").value;
	var description = document.getElementsByName("Description").value;
	var assignee = document.getElementsByName("assignee").value;
	var developer = document.getElementsByName("developer").value;
	var qa = document.getElementsByName("qa").value;
	var reporter = document.getElementsByName("Reporter").value;
	var comments = document.getElementsByName("comments").value;
	
	// Conditions
	if ((title == null||title == "") && (estimate == null||estimate=="") && (description == null||description=="") && (assignee == null||assignee == "") && (developer == null||developer == "") && (qa == null||qa == "") && (reporter == null||reporter == "") && (comments == null|| comments == "")) 
	{
	alert("All fields are required.....!");
	return false;
	} 
	 else 
	{
	alert("Submitted successfully");
	return true; 
	} 
} */

</script>
</head>
<body bgcolor="#F7DC6F">
	<FORM method="post" action="/ProjectBugTracker/GetCreateIssue" >
	<fieldset>
					<legend align="center">
						<font face="Lucida Console" size="5"> <b><u>BUG REPORTING</u>
				</b>
				</font>
			</legend>
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
		<br><br><center><INPUT TYPE="submit" name="Create" value="Create"></center>
	</fieldset>
	</FORM>
</body>
</html>