<%@page import="java.time.*"%>
<%@page import="com.ett.*"%>
<%@ include file="menu.jsp"%>
<html>
	<body>
		<%
		PreparedStatement ps1=(PreparedStatement)application.getAttribute("getOutTime");
		String eid=request.getParameter("emp");
		ps1.setString(1, eid);
		ResultSet rs=ps1.executeQuery();
		rs.next();
		String intime=rs.getString(1);
		
		
		PreparedStatement ps2=(PreparedStatement)application.getAttribute("updateTimeInfo");
		String outtime=TimeUtility.getCurrentTime();
		ps2.setString(1,outtime);
		ps2.setString(2, TimeUtility.getTotalTime(intime,outtime));
		ps2.setString(3, eid);
		ps2.executeUpdate();
		
		
		PreparedStatement ps3=(PreparedStatement)application.getAttribute("updateStatus");
		ps3.setString(1,"in");
		ps3.setString(2,request.getParameter("emp"));
		ps3.executeUpdate();
		
		%>
		
		<h1>Employee(<%=request.getParameter("emp") %>) in-time has been recorded</h1>
	</body>
</html>