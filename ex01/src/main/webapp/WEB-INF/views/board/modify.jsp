<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@include file="../include/header.jsp" %>

<form form="form" method="post">
	<input type='hidden' name='bno' value="${boardVO.bno}">
</form>

		<div class="box-body">
			<div class="form-group">
				<label for="exampleInputEmail1">Title</label>
				<input type="text"
					name="title" class="form-control" placeholder="Enter Title">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Title</label>
				<textarea rows="3"
					name="content" class="form-control" placeholder="Enter.."></textarea>
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Writer</label>
				<input type="text"
					name="writer" class="form-control" placeholder="Enter Writer">
			</div>
		</div>
		
<!-- /.box-body -->
<div class="box-footer">
	<button type="submit" class="btn btn-primary">SAVE</button>
	<button type="submit" class="btn btn-warning">CANCEL</button>
</div>

<script>
$(document).ready(function() {
	var formObj = $("form[role='form']");
	console.log(formObj);
	
	$(".btn-warning").on("click", function() {
		self.location = "/board/listAll";
	});
	
	$(".btn-primary").on("click", function() {
		formObj.submit();
	});
});



</script>
<%@include file="../include/footer.jsp" %>