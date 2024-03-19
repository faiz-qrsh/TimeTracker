<%@page import="java.time.*"%>
<%@ include file="menu.jsp" %>
<html>
 <body>
  <%
PreparedStatement ps=(PreparedStatement)application.getAttribute("selectAllEmp");
ResultSet rst=ps.executeQuery();
%>

<div class='container my-4'>
<h3>Welcome to Employee Time Tracker</h3>
   <div class='card mx-auto my-4'>
     <div class='card-body'>
      <div class='table scrollit'>
       <table class='table table-hover'>
        <thead>
         <tr>
          <th>E-Id</th><th>Name</th><th>Department</th><th>Status</th>
         </tr> 
        </thead>
        <tbody>
        <%
        while(rst.next())
        {
        	%>
        	<tr>
        	  <td><%=rst.getString(1)%></td>
        	  <td><%=rst.getString(2)%></td>
        	  <td><%=rst.getString(3)%></td>
        	  <td><%=rst.getString(4)%></td>
        	</tr>
        	<%
        }
        %>
        </tbody>
       </table>
      </div>
     </div>
   </div> 
  </div>
  </div>
 </body>
</html>