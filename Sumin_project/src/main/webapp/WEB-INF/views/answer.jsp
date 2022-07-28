<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.js"></script>

<style type="text/css">

	.answer_contianer {
		
	    height: auto;
	    
	}
	
	.project_title_wrap {
		border-bottom: 2px solid #ff4a2b;
	    width: 100%;
	    height: 57px;
	    color: #ff4a2b;
	    line-height: 55px;
	    padding: 0 15px;
	    row-gap: 0px;
	    justify-content: space-between;
    	display: flex;
	
	}
	

	.section_title {
		color: #ff4a2b;
	    font-size: 26px;
	    font-weight: 600;
	
	}
	
	.section_send_message {
		font-size: 20px;
	    font-weight: 700;
	  	color: #ff4a2b;
	    
	}
	
	.form_title {
		background: #ff4a2b;
	    height: 28px;
	    display: flex;
	    align-items: center;
	    justify-content: center;
	    
	}
	
	.form_title p {
		font-size: 16px;
    	text-align: center;
    	color: white;
    	font-weight: 700;
	}
	
	
	.message_form_tag { 		
    	position: relative;
	    margin-bottom: 100px;
 	    
	}
	
	
	.answer_wrap{
		padding: 24px 100px 60px;
	    max-width: 1100px;
	    margin: 0 auto;
	}
	
	.mass_form_grid {
		display: grid;
		grid-template-columns: 25% 41.6667% 33.333%;
	}
	
	.mss_form_to {
		grid: 1;
	    flex-wrap: nowrap;
	    display: flex;
	}
	
	.mss_form_title {
		grid: 2;
    	flex-wrap: nowrap;
    	display: flex;
    	
	}
	
	.mss_form_from {
		grid: 3;
    	flex-wrap: nowrap;
    	display: flex;
	}
	
	.mss_form_item_to {
 	width: 33.3333%; 
     border-left: 2px solid #ff4a2b; 
     border-right: 2px solid #ff4a2b; 
	}
	.mass_from_input_to{
 	flex: auto; 
     max-width: 100%; 
     border-right: 2px solid #ff4a2b; 
	}
	.mss_form_item_title {
 	width: 20%; 
     border-right: 2px solid #ff4a2b; 
	}
	.mass_from_input_title {
 	flex: auto; 
     max-width: 100%; 
	}
	.mss_form_item_from {
 	width: 50%; 
     border-left: 2px solid #ff4a2b; 
     border-right: 2px solid #ff4a2b; 
	}
	.mass_from_input_from {
 	flex: auto; 
     max-width: 100%; 
     border-right: 2px solid #ff4a2b; 
	}
 	.mass_form_grid span { 
 	font-size: 16px; 
     color: #ff4a2b; 
     font-weight: 700; 
     height: 30px; 
     display: flex; 
     justify-content: center; 
     align-items: center; 
	
 	} 
	
 	.mass_form_grid input { 
 	width: 100%; 
     border: none; 
     padding: 4px 11px; 
 	} 
 	
 	.form_item_text {
 	    width: 100%;
    height: 130px;
    border: 2px solid #ff4a2b;
    margin-bottom: 15px;
 	}
 	
 	.mss_teaxarea {
 	width: 100%;
    padding: 10px 12px;
    height: 117px;
    min-height: 32px;
    line-height: 1.5715;
    vertical-align: bottom;
    transition: all 0.3s ease 0s, height 0s ease 0s;
    border: none;
 	}
 	
 	.send_btn_wrap {
 	display: flex;
    justify-content: end;	
 	}
 	
 	.send_btn_button {
 	border: solid 2px #ff4a2b;
    width: 190px;
    height: 40px;
    background: none;
    box-shadow: none;
    text-shadow: none;
    padding: 0;
    text-align: center;
 	}
 	
 	.send_btn {
 	font-size: 18px;
    font-weight: 700;
    color: #ff4a2b;
 	}
 	
 	.mss_list_container {
 	padding: 0 20px;
    border: 2px solid #ff4a2b;
    margin-bottom: 20px;
 	}
 	
 	.mss_list_boxes {
 	border-bottom: 2px dotted #ff4a2b;
    padding: 12px 0px 10px;
 	}
 	
 	.mss_info {
 	display: flex;
 	cursor: pointer;
 	}
 	
 	.list_to {
 	display: block;
    flex: 16%;
    max-width: 16%;
 	}
 	
 	.list_title {
 	display: block;
    flex: 68%;
    max-width: 68%;
 	}
 	
 	.list_from {
 	display: block;
    flex: 16%;
    max-width: 16%;
    text-align: right;
 	}
 	
 	.mss_list_boxes:last-child {
 		border-bottom: none 0;
 	}
 	
 	.mss_cont{
    padding: 12px 0 30px;
    
    margin-left: 16%;
    
    height: auto;
    
    font-size: 13px;
    line-height: 1.6;
    height: auto;
    
    display: none;
 	}
 	
</style>

<script type="text/javascript">
	$(function(){
		$('.mss_info').click(function(){
			$(this).next().slideToggle();
			$(this).next().siblings('.mss_cont').slideUp();
		});
		
	});

</script>

</head>
<body>
<c:set var="slist" value="${aList }" />

	<jsp:include page="include/top.jsp"/>
	
	<div class="main_container">
	
		<div class="contents_container answer_contianer">
		
			<div class="project_title_wrap">
				<div class="section_title">
					ANSWER US
				</div>
				
				<div>
					<a href="#" class="section_send_message">
						SEND A MESSAGE
					</a>
				</div>
			</div> <!-- project_title_wrap -->
			
			<div class="answer_wrap">
				<div class="answer_container">
					<div class="message_form_wrap">
						<div class="form_title">
							<p class="form_title">
								SEND A MESSAGE
							</p>
						</div><!-- form_title -->
						<form class="message_form_tag" method="post" action="<%=request.getContextPath() %>/insertMessage.do">
							<div class="mass_form_grid">
								<div class="mss_form_to">
									<div class="mss_form_item_to">
										<span>TO</span>
									</div>
									<div class="mass_from_input_to">
										<input name="tname" required>
									</div>
								</div>
								
								<div class="mss_form_title">
									<div class="mss_form_item_title">
										<span>제목</span>
									</div>
									 <div class="mass_from_input_title">
									 	<input name="title" required>
									 </div>
								</div>
								
								<div class="mss_form_from">
									<div class="mss_form_item_from">
										<span>FROM</span>
									</div>
									<div class="mass_from_input_from">
										<input name="fname" required>
									</div>
								</div>
							</div> <!-- mass_form_grid -->
							<div class="form_item_text">
								<textarea name="cont" class="mss_teaxarea" placeholder="메시지를 입력해주세요." required>
								
								</textarea>
							</div>
							<div class="send_btn_wrap">
								<button class="send_btn_button">
									<span class="send_btn">
										SEND
									</span>
								</button>
							</div>
						</form>
					</div> <!-- message_form_wrap -->
					<div class="message_list_wrap">
						<div class="form_title">
							<p class="form_title">
								VISITOR'S MESSAGE
							</p>
						</div><!-- form_title -->
						<div class="mss_list_container">
							<c:forEach items="${slist }" var="dto">
								<div class="mss_list_boxes">
									<div class="mss_info">
										<div class="list_to">TO.${dto.tname }</div>
										<div class="list_title">${dto.title }</div>
										<div class="list_from">FROM.${dto.fname }</div>
									</div> 
									<div class="mss_cont">
										<p>${dto.cont }</p>
									</div>
								</div> <!-- mss_list_boxes -->
							</c:forEach>
						</div> <!-- mss_list_container -->
						
						
					</div> <!-- message_list_wrap -->
				</div>	<!-- answer_container -->
			
			</div> <!-- answer_wrap -->
			
		</div> <!-- contents_container -->
	
	</div> <!-- main_container -->
</body>
</html>