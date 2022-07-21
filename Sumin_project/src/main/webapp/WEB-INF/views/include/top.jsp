<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	
	html, body {
		height: 100%;
	    scroll-behavior: smooth;
		margin: 0;
    	padding: 0;
		
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
	
	}
	
	.main_title_link {
		font-size: 34px;
    	color: white;
	}
	
	.header_container{
	    position: fixed;
	    top: 0;
	    z-index: 9998;
/* 	    width: 0px; */
/* 	    opacity: 0; */
	    border-left: 2px solid #ff4a2b;
	    height: 100%;
	    right: 60px;
	    overflow-x: hidden;
	    background-color: yellow;
	}
	
/* 	.header_container{ */
/* 		width: 400px; */
/* 	    right: 62px; */
/* 	    opacity: 1; */
/* 	} */
	
	
	.header_wrap {
		padding: 30px 20px;
	}
</style>

</head>
<body>

	<div class="top_banner_warrper">
		<div class="top_banner_container">
			<a class="main_title_link" href="#">
				<span>
					SUMIN PROJECT
				</span>
			</a>
		</div> <!-- top_banner_container -->
		
		<div class="banner_btn_right_side">
			<div class="banner_btn_wrap">
				<div class="">
				
				</div>
			</div> <!-- banner_btn_wrap -->
		</div> <!-- banner_btn_right_side -->
		<div class="header_container">
			<div class="header_wrap">
				<ul>
					<li>
						ABOUT
						<a href="#">
							
						</a>
					</li>
					<li>
						PROJECT
						<div class="header_list_wrap">
							<ul>
								<li>
									STUDIO A
								</li>
								<li>
									STUDIO B
								</li>
								<li>
									STUDIO C
								</li>
							</ul>
						</div>
					</li>
				</ul>
			</div> <!-- header_wrap -->
		</div> <!-- header_container -->
		
	</div> <!-- top_banner_warrper -->


	
</body>
</html>