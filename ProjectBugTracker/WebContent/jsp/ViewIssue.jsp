<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><center><h1>VIEW & EDIT ISSUE</h1></center>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script language="javascript" type="text/javascript">  
      var xmlHttp  
      var xmlHttp
      function showState(str){
        xmlHttp=GetXmlHttpObject();
      	if(xmlHttp==null){
      		alert ("Browser does not support HTTP Request")
       		return
        }
      	var url="ViewIssue2.jsp";
      	url +="?subid=" +str;
  
      	xmlHttp.onreadystatechange = stateChange;
      	xmlHttp.open("get", url, true);
      	xmlHttp.send(null);
      }
      function stateChange(){   
    	  if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   
	    	  document.getElementById("state").innerHTML=xmlHttp.responseText   
     	 	}   
      }
     
      function GetXmlHttpObject(){
         var xmlHttp=null;
         try{
          xmlHttp=new XMLHttpRequest();
         }
         catch(e)
         {
			 //Internet Explorer
			 try
			  {
				  xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
			  }
			 catch (e)
			  {
				  xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
			  }
	 	}
		return xmlHttp;
}
</script> 
<body bgcolor="#F7DC6F">
<form action="" style="background-color:#EC7063; width:1350px; height: 70px" >
 
  <br/>
<%
			Connection conn = null;
			Class.forName("com.mysql.jdbc.Driver");
			conn =(Connection) DriverManager.getConnection("jdbc:mysql://localhost/test", "root", "admin");
			response.setContentType("text/html");
			
			PreparedStatement pStmt1 = null;
			String sql1="select id from bugtracker.issue";
			pStmt1 = (PreparedStatement) conn.prepareStatement(sql1);
			ResultSet rs1 = (ResultSet) pStmt1.executeQuery(sql1);
		
%>
 &nbsp;&nbsp;<span style="font-size:1.1em;">Issue Id</span>:&nbsp;
      <select name='programmeid1' onchange="showState(this.value)">  
      <option value="none">Select</option>  
    <%
		 while(rs1.next()){
     %>
      <option value="<%=rs1.getString(1)%>"><%=rs1.getString(1)%></option>  
 		
      <%
       
 }
    
     %>

</select>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="EditIssue.jsp"><span style="font-size:1.1em;">Edit Issue</span> </a>
    <br><br><div id="state">
    </div>
	
</form>
</body>
</html>