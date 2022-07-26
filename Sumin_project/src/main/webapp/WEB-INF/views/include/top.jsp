<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.js"></script>

<style type="text/css">
	
	html, body {
		height: 100%;
	    scroll-behavior: smooth;
		margin: 0;
    	padding: 0;
    	
    	font-variant: tabular-nums;
	    line-height: 1.5715;
	    background-color: #fff;
	    font-feature-settings: 'tnum', "tnum";
	    
	    font-weight: normal;
	    font-size: 15px;
	    vertical-align: baseline;
	    color: #000000;
	    -webkit-text-size-adjust: none;
	    text-rendering: geometricPrecision;
	    -webkit-font-smoothing: antialiased;
		
	}
	
	
	p {
	    display: block;
	    margin-block-start: 1em;
	    margin-block-end: 1em;
	    margin-inline-start: 0px;
	    margin-inline-end: 0px;
	    margin-top: 0;
	    margin-bottom: 0;
/*     margin-bottom: 1em; */
	}
	
	a {
		text-decoration: none;
	}
	
	ul {
		list-style-type: none;
		padding: 0px;
	}
	
	.ant_row {
		display: flex;
/* 		flex-flow: row wrap; */
	
	}
	.contents_container {
		width: 100%;
	    height: calc(100vh - 50px);
	    margin: 0 auto;
	    position: relative;
	
	}
	.contents_wrap {
		padding: 0 15px;
   	 	height: calc(100% - 57px);
	}
	
	.scrollbar_wrap{
		overflow-y: scroll;
	    overflow-x: hidden;
	    height: calc(100vhvh- 180px);
	}
	.left_wrap {
		display: block;
	    flex: 0 0 37.5%;
	    max-width: 37.5%;
	    border-right: 2px solid #ff4a2b;
	}
	
	.right_wrap {
		display: block;
	    flex: 0 0 62.5%;
	    max-width: 62.5%;
/*  	    border-right: 2px solid #ff4a2b;  */
 	    
	}
	
	
	
	
	
	
	
	
	.top_banner_warrper{
		width: 100%;
	    height: 50px;
	    position: relative;
	}

	.top_banner_container{
		position: fixed;
	    top: 0;
	    left: 50%;
	    transform: translateX(-50%);
	    z-index: 99;
	    background: #ff4a2b;
	    height: 50px;
/* 	    padding: 0 18px; */
	    display: flex;
	    align-items: center;
	    
	  
	
	}
	
	.banner_btn_right_side {
		position: fixed;
	    top: 0;
	    right: 0;
	    height: 100vh;
	    width: 60px;
	    z-index: 9999;
	}
	
	.banner_btn_wrap {
		display: block;
	    margin: 0 auto;
	    text-align: center;
	    margin-top: 14px;
	    cursor: pointer;
	}
	
	
	.top_banner_container, .main_container {
	  	width: 100%;
	    max-width: calc(100vw - 120px);
	    margin: 0 auto;
 	    border: 2px solid #ff4a2b; 
	    border-width: 0 2px;
	    padding-right: 2px;
	
	}
	
	.main_title_link {
		font-size: 34px;
    	color: white;
	}
	
	.header_container{
	    position: fixed;
	    top: 0;
	    z-index: 9998;
 	    width: 0px; 
 	    opacity: 0; 
	    border-left: 2px solid #ff4a2b;
	    height: 100%;
	    right: 60px;
	    overflow-x: hidden;
	    transition: 0.45s;
	    
	}
	
	.header_container.true {
	    width: 400px;
    	right:59px;
    	opacity: 1;
    	transition: 0.45s;
    	background:white;
	}
	
	
/* 	.header_container{ */
/* 		width: 400px; */
/* 	    right: 62px; */
/* 	    opacity: 1; */
/* 	} */
	
	
	.header_wrap {
		padding: 30px 20px;
	}
	
	.hamburger_btn {
		position: relative;
		transition: .3s ease-in-out;
/* 		width: 45px; */
		height: 34px;
		display: flex;
   		justify-content: center;
	}
	
	.hamburger_btn span {
		position: absolute;
		width:40px;
		height: 2px;
		border-radius: 4px;
		background: #ff4a2b;
		top: 0;
		transition: 0.2s;
		
	}
	
	.hamburger_btn span:nth-child(1){
		top:0;
	}
	
	.hamburger_btn span:nth-child(2),
	.hamburger_btn span:nth-child(3){
		top:13px;
	}
	.hamburger_btn span:nth-child(4) {
		top: 26px;
	}
	
	
	.hamburger_btn.active span:nth-child(1),
	.hamburger_btn.active span:nth-child(4){
		opacity:0;
	}
	
	.hamburger_btn.active span:nth-child(2) {
		transform:rotate(45deg);
	}
	.hamburger_btn.active span:nth-child(3) {
		transform:rotate(-45deg);
	}
	
	.sidebar_overlay_dark {
		background: rgba(0,0,0,0.3);
	    z-index: -1;
	    width: calc(100% - 62px);
	    transform: none;
	    left: 0;
	    top: 0;
	    opacity: 0;
	    min-height: 100vh;
	    position: fixed;
	}
	
	.sidebar_overlay_dark.active {
		opacity: 1;
    	z-index: 999;
	} 
	
	.sideBar_text{
		font-size: 28px;
	    font-weight: 500;
	    color: #ff4a2b;
	}
	
	.sideBar_text_under {
		font-size: 20px;
	    font-weight: 500;
	    color: #ff4a2b;
	    
	}
	
	.header_wrap > ul > li {
		margin-top: 24px;
		
	}
	
	.header_list_wrap{
/* 		height: 324px; */
/* 	    opacity: 1; */
	    margin-bottom: 34px;
	    border-top: dotted 2px #ff4a2b;
	    margin: 10px 0;
	}
	
	.header_list_wrap > ul > li {
		border-bottom: dotted 2px #ff4a2b;
    	padding: 10px 35px;
	}
	
	
	
</style>
<script type="text/javascript">
	
	$(function(){
		$('.hamburger_btn').click(function(){
			$(this).toggleClass('active');
			$('.header_container').toggleClass('true')
			$('.sidebar_overlay_dark').toggleClass('active');
		});
	});

</script>
</head>
<body>

	<div class="top_banner_warrper">
		<div class="top_banner_container">
			<a class="main_title_link" href="<%=request.getContextPath()%>/goMainPage.do">
				<span> 
					SUMIN PROJECT
				</span>
			</a>
		</div> <!-- top_banner_container -->
		
		<div class="banner_btn_right_side">
			<div class="banner_btn_wrap">
				<div class="hamburger_btn">
					<span></span>
					<span></span>
					<span></span>
					<span></span>
				</div>
			</div> <!-- banner_btn_wrap -->
		</div> <!-- banner_btn_right_side -->
		
		
		<div class="header_container">
			<div class="header_wrap">
				<ul>
					<li>
						<a class="sideBar_text" href="<%=request.getContextPath()%>/goAboutPage.do">
							ABOUT
						</a>
					</li>
					<li>
						<span class="sideBar_text">PROJECT</span>
						<div class="header_list_wrap">
							<ul>
								<li>
									<a class="sideBar_text_under" href="<%=request.getContextPath()%>/goProjectAPage.do">
										STUDIO A
									</a>
								</li>
								<li>
									<a class="sideBar_text_under" href="<%=request.getContextPath()%>/goProjectBPage.do">
										STUDIO B
									</a>
								</li>
								<li>
									<a class="sideBar_text_under" href="<%=request.getContextPath()%>/goShopPage.do">
										STUDIO C
									</a>
								</li>
							</ul>
						</div>
					</li>
					<li>
						<a class="sideBar_text" href="<%=request.getContextPath()%>/goStudentsPage.do">
							STUDENTS
						</a>
					</li>
					<li>
						<a class="sideBar_text" href="<%=request.getContextPath()%>/goAnswerPage.do">
							ANSWER US
						</a>
					</li>
				</ul>
			</div> <!-- header_wrap -->
		</div> <!-- header_container -->
		<div class="sidebar_overlay_dark">
		
		</div>
	</div> <!-- top_banner_warrper -->


	
</body>
</html>