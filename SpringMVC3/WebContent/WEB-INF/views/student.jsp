<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset=utf-8>
	<title>Spring MVC</title>
</head>
<body>
	<h1>SINH VIÊN</h1>
	<form:form action="student/index.php" modelAttribute="stu">
		<div>
			<div>Id</div>
			<form:input path="id"/>
		</div>
		<div>
			<div>FullName</div>
			<form:input path="fullname"/>
		</div>
		<div>
			<div>Marks</div>
			<form:input path="marks"/>
		</div>
		<div>
			<div>Gender</div>
			<form:radiobutton path="gender" value="true" label="Male"/>
			<form:radiobutton path="gender" value="false" label="Female"/>
		</div>
		<div>
			<div>Class</div>
			
			<!-- Way 1: Default Values on form - using select/option forms -->
			<%-- <form:select path="clazz">
				<form:option value="PT001">Ứng dụng phần mềm</form:option>
				<form:option value="PT002">Thiết kế trang web</form:option>
				<form:option value="PT003">Lập trình di động</form:option>
			</form:select> --%>
			
			<!-- Way 2: Default Values by ModelAttribute in StudentController -->
			<form:select path="clazz" items="${clazzs}" 
				itemValue="id" itemLabel="name"/>
			
			<!-- Way 3: Default Values on form - using radio buttons form -->
			<%-- <form:radiobuttons path="clazz" 
				items="${clazzs}" itemValue="id" itemLabel="name"/> --%>
			
			<!-- Way 4: Default Values on form - using radio buttons form -->
			<%-- <form:checkboxes path="clazz" 
				items="${clazzs}" itemValue="id" itemLabel="name"/> --%>
		</div>
		<div>
			<button>Save</button>
		</div>
	</form:form>
</body>
</html>