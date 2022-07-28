<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	.section_wrap {
/* 		height: 100vh; */
/* 	    text-align: center; */
/* 	    background: url(./resources/upload/intro/intro.png) center 0; */
/* 	    background-repeat: repeat-y; */
/* 	    background-size: cover; */
/* 	    animation: movebg 1100s linear infinite */
	
	}
	
	.ant_select_selector {
		background: none;
	    padding: 0 13px;
	    height: 53px;
	}
	
	.section_title {
	    color: #ff4a2b;
	    font-size: 26px;
	    font-family: 'Chakra Petch', sans-serif;
	    font-weight: 600;
	    line-height: 1.3;
	
	}

	.project_select_wrap {
		border-bottom: 2px solid #ff4a2b;
	    width: 100%;
	    height: 57px;
	    color: #ff4a2b;
	    line-height: 55px;
	}
	
	.section_wrap {
	background: url('./resources/upload/intro/sample6.jpg');
	background-size: cover;
	animation: movebg 1100s linear infinite;
	height: 100vh;
/* 	background-repeat: repeat-y; */
	}
	
	
	.intro_text {
		display: block;
	    flex: 42%;
	    max-width: 50%;
	}
	
	.section_title_wrap {
		border: 2px solid #ff4a2b;
	    border-width: 2px 0;
	    padding: 13px 15px;
/* 	    width: 100%; */
	    z-index: 1;
	    position: sticky;
	    top: 0;
	    margin-top: -2px;
	    background: white;
	}
	
	.section_title {
		color: #ff4a2b;
	    font-size: 26px;
	    font-weight: 600;
	    line-height: 1.3;
	}
	
	.right_wrap {
		overflow-y: scroll;
	    overflow-x: hidden;
	}
	
	
	
	
	.students_wrap {
		display: flex;
    	flex-flow: row wrap;
	}
	
	
	
	
	.section_contents_wrap {
		margin-left: -16px;
	    margin-right: -16px;
	    row-gap: 0px;
	    display: flex;
    	flex-flow: row wrap;
    	padding-bottom: 65px;
     	padding: 20px 15px 65px 15px; 
    	white-space: pre-line;
	}
	
	.students_list_wrap{
		padding-left: 16px;
    	padding-right: 16px;
    	display: block;
	    flex: 0 0 100%;
	    max-width: 100%;
	    position: relative;
	    min-height: 1px;
	}
	
	.section_contents_title {
		color: #ff4a2b;
	    font-weight: 800;
	}
	
	.section_contents_list {
	
	}
	
	.students_wrap {
		row-gap: 0px;
    	margin-left: -16px;
    	margin-right: -16px;
    	display: flex;
    	flex-flow: row wrap;
	}
	
	.students_list_boxes {
/* 		display: block; */
	    flex: 0 0 33.33333333%;
	    max-width: 33.33333333%;
	    
	    margin-bottom: 4px;
	    padding-left: 16px;
    	padding-right: 16px;
    	display: grid;
    	grid-template-columns: 30% 70%;
   		height: 23px;
	}
	
	.students_list_boxes span + span {
		grid: 2;
	}
</style>
</head>
<body>

	<c:set var="slist" value="${studentsList }"/>

	<jsp:include page="include/top.jsp"/>
	
	<div class="main_container">
	
		<div class="ant_row contents_container">
		
			<div class="left_wrap">
			
				<div class="section_wrap">
					
				</div> <!-- section_wrap -->
				
			</div> <!-- left_wrap -->
			
			<div class="right_wrap">
				
				
					<div class="section_wrap_right">
						
						<div class="section_wrap_right_contents">
						
							<div class="section_title_wrap">
								<p class="section_title">INTRO</p>							
							</div> <!-- ant_select project_select_wrap -->
							<div class="section_contents_wrap" style="margin-left: -16px; margin-right: -16px; row-gap: 0px;">
								<div class="intro_text" style="padding-left: 16px; padding-right: 16px;">
									"SIGNAL FROM THE SPACE展은 지구가 외계에 자신의 존재를 알리려 했던 것처럼→세상을 향해 우리 존재를 전달하고 더 넓은 세상과 닿고자 기획되었다.
	
									여기 42명은 본인의 생각과 작업을 메시지로 작성했다. 그리고 전시를 통해 지금껏 집적된 지식과 능력을 발휘해 공간디자인이라는 언어로 바깥 세계에 신호를 쏘아보낸다. 이렇게 우리는 신호를 통해 스스로를 증명하고 알린다.
									
									지금부터 관람자는 본인의 레이더를 이용해 신호를 추적하고 메시지를 해독한다. 관람이 끝나면 레이더망에 걸린 신호에 대해 답신을 남겨주길 바란다. 그렇게 세계를 확장해 나가자."
								</div>
								<div class="intro_text" style="padding-left: 16px; padding-right: 16px;">
									SIGNAL FROM THE SPACE 展 was designed to convey our existence toward the world and reach the wider space, just as the Earth tried to inform its existence to the outer world→.
									
	
									Here, 42 people wrote their thoughts and tasks in messages. Through the exhibition, they show their knowledge and abilities accumulated so far and send signals to the outside world in the language of spatial design. In this way, we prove and inform ourselves through signals.
									
									From now on, use your own radar to track signals and decode messages. When the tour is over, please leave a reply to the signal on the radar network. So, Let's expand our world. 
								</div>
							</div> <!-- section_contents_wrap -->
							
						</div> <!-- section_wrap_right_contents -->	
						
						<div class="section_wrap_right_contents">
						
							<div class="section_title_wrap">
								<p class="section_title">CREDIT</p>							
							</div> <!-- ant_select project_select_wrap -->
						
							<div class="section_contents_wrap" style="margin-left: -16px; margin-right: -16px; row-gap: 0px;">
								<div class="students_list_wrap" style="padding-left: 16px; padding-right: 16px;">
										<span class="section_contents_title">참여학생 | Students</span>
									<div class="section_contents_list">
										<div class="students_wrap">
											<c:forEach items="${slist }" var="dto">
												<div class="students_list_boxes">
													<span>${dto.name }</span>
													<span>${dto.ename }</span>
												</div> <!-- students_list_boxes -->
											</c:forEach>
										</div> <!-- students_wrap -->
									</div> <!-- section_contents_list -->
								</div> <!-- students_list_wrap -->	
							</div> <!-- section_contents_wrap -->
							
						</div> <!-- section_wrap_right_contents -->	
						
									
						<div class="section_wrap_right_contents">
						
							<div class="section_contents_wrap" style="margin-left: -16px; margin-right: -16px; row-gap: 0px;">
								<div class="intro_text" style="padding-left: 16px; padding-right: 16px;">
									"SIGNAL FROM THE SPACE展은 지구가 외계에 자신의 존재를 알리려 했던 것처럼→세상을 향해 우리 존재를 전달하고 더 넓은 세상과 닿고자 기획되었다.
	
									여기 42명은 본인의 생각과 작업을 메시지로 작성했다. 그리고 전시를 통해 지금껏 집적된 지식과 능력을 발휘해 공간디자인이라는 언어로 바깥 세계에 신호를 쏘아보낸다. 이렇게 우리는 신호를 통해 스스로를 증명하고 알린다.
									
									지금부터 관람자는 본인의 레이더를 이용해 신호를 추적하고 메시지를 해독한다. 관람이 끝나면 레이더망에 걸린 신호에 대해 답신을 남겨주길 바란다. 그렇게 세계를 확장해 나가자."
								</div>
								<div class="intro_text" style="padding-left: 16px; padding-right: 16px;">
									SIGNAL FROM THE SPACE 展 was designed to convey our existence toward the world and reach the wider space, just as the Earth tried to inform its existence to the outer world→.
									
	
									Here, 42 people wrote their thoughts and tasks in messages. Through the exhibition, they show their knowledge and abilities accumulated so far and send signals to the outside world in the language of spatial design. In this way, we prove and inform ourselves through signals.
									
									From now on, use your own radar to track signals and decode messages. When the tour is over, please leave a reply to the signal on the radar network. So, Let's expand our world. 
								</div>
							</div> <!-- section_contents_wrap -->
						
						</div> <!-- section_wrap_right_contents -->
						
						
						<div class="section_wrap_right_contents">
						
							<div class="section_contents_wrap" style="margin-left: -16px; margin-right: -16px; row-gap: 0px;">
								<div class="intro_text" style="padding-left: 16px; padding-right: 16px;">
									"SIGNAL FROM THE SPACE展은 지구가 외계에 자신의 존재를 알리려 했던 것처럼→세상을 향해 우리 존재를 전달하고 더 넓은 세상과 닿고자 기획되었다.
	
									여기 42명은 본인의 생각과 작업을 메시지로 작성했다. 그리고 전시를 통해 지금껏 집적된 지식과 능력을 발휘해 공간디자인이라는 언어로 바깥 세계에 신호를 쏘아보낸다. 이렇게 우리는 신호를 통해 스스로를 증명하고 알린다.
									
									지금부터 관람자는 본인의 레이더를 이용해 신호를 추적하고 메시지를 해독한다. 관람이 끝나면 레이더망에 걸린 신호에 대해 답신을 남겨주길 바란다. 그렇게 세계를 확장해 나가자."
								</div>
								<div class="intro_text" style="padding-left: 16px; padding-right: 16px;">
									SIGNAL FROM THE SPACE 展 was designed to convey our existence toward the world and reach the wider space, just as the Earth tried to inform its existence to the outer world→.
									
	
									Here, 42 people wrote their thoughts and tasks in messages. Through the exhibition, they show their knowledge and abilities accumulated so far and send signals to the outside world in the language of spatial design. In this way, we prove and inform ourselves through signals.
									
									From now on, use your own radar to track signals and decode messages. When the tour is over, please leave a reply to the signal on the radar network. So, Let's expand our world. 
								</div>
							</div> <!-- section_contents_wrap -->
						
						</div> <!-- section_wrap_right_contents -->
						
						
						
					</div> <!--section_wrap_right -->
				
				
				
				
			</div><!-- right_wrap -->
			
		</div> <!-- ant_row contents_container -->
	
	</div> <!-- main_container -->

 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>

</body>
</html>