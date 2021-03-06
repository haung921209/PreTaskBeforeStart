<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	 	<title>방명록 </title>
	</head>
	<script type="text/javascript">
		$(document).ready(function(){
			
			
			$(".cancel_btn").on("click", function(){
				event.preventDefault();
				location.href = "/board/list";
			})
			
			$(".update_btn").on("click", function(){
				var updateYN=confirm("정말 수정하시겠습니까?");
				var value=$('#pwd').val();
				
				if(updateYN==true){
					if("${update.pwd}"==value){
						$("#updateContainer").submit();	
					}
					else{
						alert("암호를 확인해주세요!");
					}
					
				}
				
				
				
						
			
			})
		})
			
		
	
		
	</script>
	<body>
	
		<div id="root">
			<header>
				<h1> 방명록</h1>
			</header>
			<hr />
			 
			<div>
				<%@include file="nav.jsp" %>
			</div>
			<hr />
			       
			<section id="container">
				<form name="updateForm" id="updateContainer" role="form" method="post" action="/board/update">
					<input type="hidden" name="bno" value="${update.bno}" readonly="readonly"/>
					<table>
						<tbody>
							<tr>
								<td>
									<label for="title">제목</label><input type="text" id="title" name="title" value="${update.title}" class="chk" title="제목을 입력하세요."/>
								</td>
							</tr>	
							<tr>
								<td>
									<label for="content">내용</label><textarea id="content" name="content" class="emailchk" title="내용을 입력하세요."><c:out value="${update.content}" /></textarea>
								</td>
							</tr>
							<tr>
								<td>
									<label for="writer">작성자</label><input type="text" id="writer" name="writer" value="${update.writer}" readonly="readonly"/>
								</td>
							</tr>
							<tr>
								<td>
									<label for="pwd">암호 </label><input type="text" id="pwd" name="pwd" class="chk" title="암호를 입력하세요." />
								</td>
							</tr>
							<tr>
								<td>
									<label for="regdate">작성날짜</label>
									<fmt:formatDate value="${update.regdate}" pattern="yyyy-MM-dd"/>					
								</td>
							</tr>		
						</tbody>			
					</table>
					<div>
						<button type="button" class="update_btn">저장</button>
						<button type="button" class="cancel_btn">취소</button>
					</div>
				</form>
			</section>
			<hr />
		</div>
	</body>
</html>