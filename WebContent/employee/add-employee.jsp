<%@ include file="../menu.jsp" %>
<div class="container my-4">
	<form  method="post" action="save-record.jsp">
  <div class="mb-3">
    <label for="eid" class="form-label">Enter Employee Id :</label>
    <input type="text" class="form-control" id="eid" name="eid" required>  </div>
  <div class="mb-3" style="color: red; text-align: center;">
    <label for="ename" class="form-label">Enter Employee Name :</label>
    <input type="text" class="form-control" id="ename" name="ename" required>
  </div>
  <div class="mb-3">
    <label for="edepartment" class="form-label">Select Employee Department :</label>
    <select class="form-select" name="department">
    <option selected value="-1">Department</option>
       <option>Training</option>
       <option>Marketing</option>
       <option>Sales</option>
       <option>Human Resource</option>
       <option>Accounts</option>
  </select>
  </div>
  
  <button type="submit" class="btn btn-success">Save record</button>
</form>
</div>