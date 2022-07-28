<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	.students_container {
	width: 100%;
    /* height: auto; */
    margin: 0 auto;
    padding: 24px 100px 60px;
    position: relative;
	
	}
	
	.sdutents_boxes_container {
	margin-left: -8px;
    margin-right: -8px;
    row-gap: 16px;
    display: flex;
    flex-flow: row wrap;
	}
	
	.students_box {
	padding-left: 8px;
    padding-right: 8px;
    
    margin-bottom: 30px;
    
    flex: 0 0 20%;
    max-width: 20%;
	}
	
	
	
	.student_img {
	margin-bottom: 10px;
    position: relative;
    border: 1px solid red;
	}
	
	.student_img img {
	width: 100%;
    height: auto;
    vertical-align: middle;
	}
	
	.project_wrap {
	position: absolute;
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    display: flex;
    flex-direction: column;
    justify-content: center;
    text-align: center;
	}
	
	.project_link {
	width: 100%;
    height: 100%;
    padding: 0 20px;
    opacity: 0;
    
    justify-content: center;
    align-items: center;
    display: flex;
    
    background: rgba(0,0,0,0.6);
    
	}
	
	.project_link:hover {
	 	opacity: 1;
		color: #ff4a2b;
	}
	
	.student_name {
	color: #ff4a2b;
    font-weight: 700;
	}
</style>
</head>
<body>
<c:set var="slist" value="${studentsList }" />

	<jsp:include page="include/top.jsp"/>
	
	<div class="main_container">
	
		<div class="ant_row contents_container students_container">
		
			<div class="sdutents_boxes_container">
				<c:forEach items="${slist }" var="dto">
					<div class="students_box">
						<div class="student_img">
							<img alt="" src="./resources/upload/img/${dto.images }">
							<div class="project_wrap">
								<a class="project_link" href="#">
								  <p>${dto.project_name }</p>
								</a>
							</div>
						</div>
						<div class="student_info">
							<p class="student_name">${dto.name } | ${dto.ename }</p>
							<p>${dto.email }</p>
						</div>
					</div>
				</c:forEach>
			</div> <!-- sdutents_boxes_container -->

		</div> <!-- ant_row contents_container -->
	
	</div> <!-- main_container -->
</body>
</html>