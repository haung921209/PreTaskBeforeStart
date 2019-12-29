<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
	<head>
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
		<title>삭제</title>
	</head>
	<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='deleteForm']");
			$(".delete_btn").on("click",function(){
				var deleteYN=confirm("정말 삭제하시겠습니까?");
				if(deleteYN==true){
					
					formObj.attr("action","/board/delete");
					formObj.attr("method","post");
					formObj.submit();
				}
				
				
				
				
			})
			$(".cancel_btn").on("click", function(){
				event.preventDefault();
				location.href = "/board/list";
			})
			
		})
		
		
	
	
	
	
	</script>
	
	<body>
		<div id="root">
			<header>
				<h1>삭제창</h1>
			</header>
			<hr />
			<div>
				<%@include file="nav.jsp" %>
			</div>
			<hr />
			<section id="container">
				<form name="deleteForm" role="form" method="post">
					<input type="hidden" id="bno" name="bno" value="${read.bno}" />
				</form>
				<div>
				
					<button type="button" class="delete_btn">삭제</button>
					<button type="button" class="cancel_btn">취소</button>
				</div>
			</section>
		
		
		</div>
	
	</body>
</html>