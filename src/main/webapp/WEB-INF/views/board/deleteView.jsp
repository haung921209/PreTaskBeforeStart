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
				var value=$('#pwd').val();
				
				if(deleteYN==true){
					
					if("${read.pwd}"==value){
						formObj.attr("action","/board/delete");
						formObj.attr("method","post");
						formObj.submit();
					}
					else{
						alert("암호를 확인해주세요");
					}
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
				
					<tr>
						<td>
							<label for="pwd">암호 </label><input type="text" id="pwd" name="pwd" class="chk" title="암호를 입력하세요." />
						</td>
					</tr>
					<tr>
						<td>
							<button type="button" class="delete_btn">삭제</button>
							<button type="button" class="cancel_btn">취소</button>
						</td>
					</tr>
					
					
				</div>
			</section>
		
		
		</div>
	
	</body>
</html>