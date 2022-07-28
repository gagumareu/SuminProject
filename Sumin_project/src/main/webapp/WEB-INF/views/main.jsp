<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	
	.ant_select {
		box-sizing: border-box;
	    margin: 0;
	    padding: 0;
	    color: rgba(0, 0, 0, 0.85);
	    font-size: 14px;
	    font-variant: tabular-nums;
	    line-height: 1.5715;
	    list-style: none;
	    font-feature-settings: 'tnum', "tnum";
	    position: relative;
	    display: inline-block;
	    cursor: pointer;
	}
	
	.ant_select_selector {
		background: none;
	    padding: 0 13px;
	    height: 53px;
	}
	
	
	
	.project_select_wrap {
		border-bottom: 2px solid #ff4a2b;
	    width: 100%;
	    height: 57px;
	    color: #ff4a2b;
	    line-height: 55px;
	}
	
	
	
	.text_wrap {
		padding-bottom: 60px;
		
	}
	
	.text_wrap p {
		white-space: pre-line;
    	word-break: keep-all;
	}
	
	.desc_en {
		white-space: pre-line;
    	word-break: keep-all;
	}
	.title_wrap {
		margin-bottom: 16px;
	}
	
	.selection_title {
		color: #ff4a2b;
	    font-size: 26px;
	    font-family: 'Chakra Petch', sans-serif;
	    font-weight: 600;
	    line-height: 1.3;
	}
	.section_wrap {
		border-bottom: 1px solid #ff4a2b;
	    padding-bottom: 20px;
/* 	    margin-bottom: 20px; */
	    position: sticky;
	    position: -webkit-sticky;
	    top: 0;
	    padding: 20px 0;
	    background-color: white;
	}
	
	.to_bold {
		font-size: 15px;
		font-weight: 700;
	}
	
	.section_title {
	    color: #ff4a2b;
	    font-size: 26px;
	    font-family: 'Chakra Petch', sans-serif;
	    font-weight: 600;
	    line-height: 1.3;
	
	}
	
	
	
	
	.section_wrap_right {
		margin-left: -8px;
	    margin-right: -8px;
	    row-gap: 16px;
		display: flex;
    	flex-flow: row wrap;
    	
    	/*** 임시 ***/
    	justify-content: center;
    	column-gap: 8px;
	}
	
	.contents_boxes {
		padding-left: 8px;
    	padding-right: 8px;
    	display: block;
  		flex: 50%;
/*   		max-width: 50%; */
  		max-width: 47%;
  		border: 1px solid red;
  		
	}
	
	.img_wrap {
		position: relative;
	}
	
	.img_wrap img {
		width: 100%;
	    height: auto;
	    vertical-align: middle;
	}
	
	.img_wrap a {
		opacity: 0;
	    display: flex;
	    justify-content: center;
	    flex-direction: column;
	    text-align: center;
	    position: absolute;
	    top: 0;
	    left: 0;
	    z-index: 1;
	    width: 100%;
	    height: 100%;
	    background: rgba(0,0,0,0.6);
/* 	    padding: 0 30px; */
	}
	
	.img_wrap a p {
		padding: 10px 0;
   		font-size: 20px;
   		font-weight: 700;
	}
	
	.project_link:hover {
    text-decoration: none;
    color: #ff4a2b;
    opacity: 1;
}
</style>
</head>
<body>
	<c:set var="slist" value="${studentsList }" />
	<jsp:include page="include/top.jsp"/>
	
	<div class="main_container">
	
		<div class="ant_row contents_container">
		
			<div class="left_wrap">
				<div class="ant_select project_select_wrap">
					<div class="ant_select_selector">
						<span class="section_title">
							STUDIO A
						</span>
					</div> <!-- ant_select_selector -->
				</div> <!-- ant_select project_select_wrap -->
				<div class="contents_wrap scrollbar_wrap">
					<div class="section_wrap title__wrap">
						<div class="title_wrap"> 
							<p class="section_title">
								장소성과 포스트 코로나
							</p>
							<p class="section_title">
								Placeness & Post Corona
							</p>
							<p class="section_title">
								Placeness & Post Corona
							</p>
						</div> <!-- title_wrap -->
						<div class="prof_wrap">
							<span class="to_bold" style="margin-right: 20px">
								지도 교수: 이찬
							</span>
							<span class="to_bold">
								Professor: Chan Lee
							</span>
						</div> <!-- prof_wrap -->
					</div> <!-- section__wrap title__wrap -->
					<div class="text_wrap">
						<p>
						장소는 실존적 공간과 인간 사이에서 상호작용의 관계로 형성되는 물질적, 비물질적 텍스트의 모든 것을 담고 있기 때문에 그 개념을 정확하게 정의 내리기 쉽지 않다. 인간이 이루어 놓은 문명사회에서 한 사회의 정치·경제적 발전은 각종 건축물이나 도시계획을 통해 그 이상을 추구하고 실현해 놓았다. 동시에 그 구성원인 인간들은 공간의 일원으로서 일정 부분의 영역을 관리하고 조작하여 각자의 생활방식을 만들어낸다. 그러면서 이 안에서 일어나는 다양한 행위와 가치관은 시간적 맥락과 함께 누적됨으로써 하나의 장소성을 획득하게 된다. 즉 장소는 물리적 공간과 인간의 관계가 총망라된 종합체인 것이다. 장소성이 구축되는 요소는 여러 관점에서 논할 수 있으나 에드워드 렐프 (E. Relph)는 정적인 요소로 물리적 환경과 동적 요소인 인간의 활동이 결합되어 끊임없는 장소적 의미가 구축된다고 하였다. 즉 정적 요소인 물리적 요소로서는 지정학적 조건과 인간의 활동으로서는 과거와 현재성이라는 동적 요소가 결합되어 장소의 의미가 형성된다고 볼 수 있는 것이다.

						장소란 위치 이상의 의미를 가지며 하나의 큰 맥락 속에서 다른 장소와 구분될 수 있는 그 자체의 특이성과 질서 체계를 지닌다. 결국 장소는 물리적 구축환경과 형태의 결과물로서, 인간의 경험을 통해 의미가 부여되는 상징적 대상이자 고유의 아이덴티티가 구축되는 것이라 할 수 있다. 이푸 투안(Yi Fu Tuan)은 장소성에 대해 ‘장소 정신과 장소성의 변증법적 산물로서, 장소가 가지는 특별한 정체성’이라고 주장하였다. 즉 장소성은 개인의 의미화 과정이 집단적 차원으로 확장되어 장소 인식에서의 일관성이 이루어질 때 형성된다는 의미인 것이다.
						
						전통적 개념으로서의 도시공간은 물리적 컨텍스트나 비물리적 컨텍스트의 결합체로서 지리적, 물리적 요소와 문화, 역사, 사회 등과 같은 요소들 간의 융합체이다. 지금까지 지정학적 의미와 물리적 영역인 가시적이고 구축적 요소가 중시된 장소성의 개념이 우세하였다면 앞으로는 비가시적 요소인 정보와 소통의 매개체인 미디어에 의한 공간 융합적 현상이 두드러질 것으로 예상된다.
						
						이미 현 상황에서는 전통적 요소의 주체자인 각 개인의 의미가 사회적 의미보다 우세해지는 현상이 나타나고 있음을 보고 있다. 이는 기존의 장소성이라는 전통적 의미가 와해되고 있는 ‘장소성의 상실’이라는 시대를 맞이하게 됨을 의미하고 있다. 특히 최근 2년간 온 세상이 코로나 팬데믹으로 인하여 미증유의 혼란에 빠져있다. 사회적 거리는 기존의 장소적 의미를 와해시키고 있다. 21세기 들어 최대 화두였던 ‘공유’라는 단어는 사라지고, 가상 세계를 극대화하기 위한 공간인 메타버스가 확장일로에 있다. 이러한 시대적 변화와 함께 공간디자이너인 우리는 포스트 코로나 시대를 선도하기 위해서 기존의 개념을 극복하기 위한 더 많은 담론의 장에서 진지한 고민을 해야 할 것이다.
						
						</p>
						
						<p class="desc_en">
						 "It is not easy to accurately define the concept of place because it contains all the material and non-material texts that are formed through the interaction between existential space and humans. In a civilized society achieved by mankind, the political and economic development of society has pursued and realized ideals through various architectures and urban planning.. At the same time, its members, humans manage and manipulate certain areas of space to create their own lifestyles. All the while, various actions and values that occur in this space accumulate along with the temporal context, thereby acquiring placeness. In other words, a space is a composite of the relationship between physical space and human beings. The elements of constructing placeness can be discussed from various perspectives, but Edward Relph said that the place’s physical setting, which is a static component, and human activity, which is a dynamic element, are combined to establish a constant meaning of place.
						Accordingly, the meaning of a place is formed by combining the geographical setting as a static physical component element and the mobility components of the past and nowness as human activities.
						
						Generally, ‘Place’ has more meaning than ‘site’ and has its own singularity and order system that can be distinguished from other places in one large context. Therefore, the place as the result of the physical construction environment and form, it is a symbolic object and a unique identity that is given meaning through human experience. Yi Fu Tuan argued that placeness is a ‘special identity of place as a dialectical product of place spirit and placeness.’ In other words, placeness means that it is formed when the individual's process of meaning extends to the collective level and consistency in place recognition is achieved.
						
						Urban space as a traditional concept is a combination of physical or non-physical contexts and is a fusion between geographic and physical elements and elements such as culture, history, society, etc. So far, the concept of placeness, which emphasizes the geographical meaning and constructive component, has prevailed. However, spatial convergence by media, a medium of information and communication, is expected to stand out in the future.
						
						There is already a phenomenon that the meaning of the individual, which is the subject of the constructive component, is prevailing over social meaning. This means that the traditional meaning of placeness is disintegrating in the era of 'loss of placeness'. Over the past two years, the whole world has been in unprecedented confusion due to the COVID-19 Pandemic. Social distance is destroying the existing meaning of place. The word ‘sharing’, which was the biggest topic in the 21st century, has disappeared, and Metabus, a space to maximize the virtual world, is expanding. Along with this chronological change, we, spatial designers, should consider in a discourse space to overcome the existing concepts to lead the post-Corona era."
						</p>
					</div> <!-- text__wrap -->
				</div> <!-- contents_wrap scrollbar_wrap -->
			</div> <!-- left_wrap -->
			
			<div class="right_wrap">
				<div class="ant_select project_select_wrap">
					<span class="ant_select_selector section_title">
						PROJECT
					</span> <!-- ant_select_selector -->
				</div> <!-- ant_select project_select_wrap -->
				
				<div class="contents_wrap scrollbar_wrap">
					<div class="section_wrap_right">
						
						<c:forEach items="${slist }" var="dto">
							<div class="contents_boxes">
								<div class="img_wrap">
									<img alt="" src="./resources/upload/img/${dto.images }">
									<a class="project_link" href="#">
										<p>${dto.project_name }</p>
										<p>${dto.name }</p>
									</a>
								</div> <!-- img_wrap -->
							</div> <!-- contents_boxes -->
						</c:forEach>
						
						
					</div> <!--section_wrap_right -->
				
				
				</div> <!-- contents_wrap scrollbar_wrap -->
				
				
				
				
			</div><!-- right_wrap -->
			
		</div> <!-- ant_row contents_container -->
	
	</div> <!-- main_container -->
</body>
</html>