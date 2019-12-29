<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
	<head>
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	 	<title>방명록</title>
	</head>
	<script type="text/javascript">
		$(document).ready(function(){
					
			$(".cancel_btn").on("click", function(){
				event.preventDefault();
				location.href = "/board/list";
			})
			$(".write_btn").on("click",function(){
				var writer=$("#writer").val();
				if(!validateEmail(writer)){
					//이메일 체크 안되었을 때 
					alert("이메일을 입력해주세요 ");
				}else if(){
					//제목 입력 안되었을 때
				}else if(){
					//내용 입력 안되었을 때 
				}
				else{
					$("#writeContainer").submit();
				}
				
				
			})
			
		})
		function validateEmail(email) {
			var re = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
			return re.test(email);
		}
		
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
				<form name="writeForm" id="writeContainer" role="form" method="post" action="/board/write">
					<table>
						<tbody>
							<tr>
								<td>
									<label for="title">제목</label><input type="text" id="title" name="title" class="chk" title="제목을 입력하세요." />
								</td>
							</tr>	
							<tr>
								<td>
									<label for="content">내용</label><textarea id="content" name="content" class="chk" title="내용을 입력하세요." ></textarea>
								</td>
							</tr>
							<tr>
								<td>
									<label for="writer">작성자</label><input type="text" id="writer" name="writer" class="chk" title="작성자를 입력하세요." />
								</td>
							<tr>
								<td>						
									<button type="button" class="write_btn">작성</button>
									<button type="button" class="cancel_btn">취소</button>
								</td>
							</tr>
										
						</tbody>			
					</table>
				</form>
			</section>
			<hr />
		</div>
	</body>
</html>