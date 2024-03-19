<%@page import="java.time.*"%>
<%@ include file="menu.jsp"%>
<html>
	<body>
		<%
		PreparedStatement ps=(PreparedStatement)application.getAttribute("insertTimeInfo");
		ps.setString(1,request.getParameter("emp"));
		LocalTime time=LocalTime.now();
		  String tt=time.getHour()+":"+time.getMinute()+":"+time.getSecond();
		  ps.setString(2,tt);
		  ps.setString(3,"Not in yet");
		  ps.setString(4,"Not applicable");
		  LocalDate date=LocalDate.now();
		  ps.setObject(5,date);
		  ps.executeUpdate();
		  PreparedStatement ps1=(PreparedStatement)application.getAttribute("updateStatus");
		  ps1.setString(1,"out");
		  ps1.setString(2,request.getParameter("emp"));
		  ps1.executeUpdate();
		%>
		<h1>Employee(<%=request.getParameter("emp") %>) out-time has been recorded</h1>
	</body>
</html>