<%@page import="java.time.*"%>
<%@ include file="../menu.jsp"%>
<%LocalDate date=LocalDate.parse(request.getParameter("date"));
PreparedStatement ps=(PreparedStatement)application.getAttribute("dateEmpRec");
ps.setObject(1, date);
ps.setString(2, request.getParameter("eid"));
ResultSet rst=ps.executeQuery();
%>

<div class='container my-4'>
   <div class='card mx-auto my-4'>
     <div class='card-body'>
      <div class='table scrollit'>
       <table class='table table-hover'>
        <thead>
         <tr>
          <th>S.No</th><th>E-Id</th><th>Out-Time</th><th>In-Time</th><th>Total-Time</th>
         </tr> 
        </thead>
        <tbody>
        <%
        int s=0;
        while(rst.next())
        {
        	%>
        	<tr>
        	  <td><%=++s%></td>
        	  <td><%=rst.getString(2)%></td>
        	  <td><%=rst.getString(3)%></td>
        	  <td><%=rst.getString(4)%></td>
        	  <td><%=rst.getString(5)%></td>
        	</tr>
        	<%
        }
        %>
        </tbody>
       </table>
      </div>
     </div>
   </div> 
   <button class="btn btn-secondary" onClick="history.back()">Back</button>
  </div>