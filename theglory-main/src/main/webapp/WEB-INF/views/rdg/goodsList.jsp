<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
    
<style>

.mt-n1 {
  margin: -0.25rem !important;
}

</style>


	</br></br>
	<div class="container">
	<!-- �����̵� ���� -->
	<div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
		<div class="carousel-indicators">
	    	<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
	    	<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
	    	<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
	    	<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="3" aria-label="Slide 4"></button>
	    	<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="4" aria-label="Slide 5"></button>
	    	<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="5" aria-label="Slide 6"></button>
	    	<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="6" aria-label="Slide 7"></button>
	    	<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="7" aria-label="Slide 8"></button>
	  	</div>
	  	
	  	
	  	<div class="carousel-inner">
	    	<div class="carousel-item active" data-bs-interval="2000">
	      		<img src="resources/img/goodsmovieticket.jpg" class="d-block w-100" alt="�̹����� �����ϴ�.">
      			<div class="carousel-caption d-none d-md-block">
		        	<h5><span class="text-dark fs-2 fw-bolder fst-italic text-white">��ȭǥ</span></h5>
      			</div>
	    	</div>
	    	<div class="carousel-item" data-bs-interval="2000">
		    	<img src="resources/img/goodsnailclipperset.jpg" class="d-block w-100" alt="�̹����� �����ϴ�.">
	    		<div class="carousel-caption d-none d-md-block">
	        		<h5><span class="text-dark fs-2 fw-bolder fst-italic text-white">������ ��Ʈ</span></h5>			
      			</div>
	    	</div>
	    	<div class="carousel-item" data-bs-interval="2000">
	      		<img src="resources/img/goodspokemonset.jpg" class="d-block w-100" alt="�̹����� �����ϴ�.">
	      		<div class="carousel-caption d-none d-md-block">
        			<h5><span class="text-dark fs-2 fw-bolder fst-italic text-white">���ϸ��� ����</span></h5>
	      		</div>
	    	</div>
	    	<div class="carousel-item" data-bs-interval="2000">
	      		<img src="resources/img/goodscosmeticset.jpg" class="d-block w-100" alt="�̹����� �����ϴ�.">
	      		<div class="carousel-caption d-none d-md-block">
        			<h5><span class="text-dark fs-2 fw-bolder fst-italic text-white">ȭ��ǰ ��Ʈ</span></h5>
	      		</div>
	    	</div>
	    	<div class="carousel-item" data-bs-interval="2000">
	      		<img src="resources/img/goodsairfryer.jpg" class="d-block w-100" alt="�̹����� �����ϴ�.">
	      		<div class="carousel-caption d-none d-md-block">
        			<h5><span class="text-dark fs-2 fw-bolder fst-italic text-white">���������̱�</span></h5>
	      		</div>
	    	</div>
	    	<div class="carousel-item" data-bs-interval="2000">
	      		<img src="resources/img/goodsmicrowave.jpg" class="d-block w-100" alt="�̹����� �����ϴ�.">
	      		<div class="carousel-caption d-none d-md-block">
        			<h5><span class="text-dark fs-2 fw-bolder fst-italic text-white">���ڷ�����</span></h5>
	      		</div>
	    	</div>
	    	<div class="carousel-item" data-bs-interval="2000">
	      		<img src="resources/img/goodsgalaxyS.jpg" class="d-block w-100" alt="�̹����� �����ϴ�.">
	      		<div class="carousel-caption d-none d-md-block">
        			<h5><span class="text-dark fs-2 fw-bolder fst-italic text-white">������S</span></h5>
	      		</div>
	    	</div>
	    	<div class="carousel-item" data-bs-interval="2000">
	      		<img src="resources/img/goodsipad.jpg" class="d-block w-100" alt="�̹����� �����ϴ�.">
	      		<div class="carousel-caption d-none d-md-block">
        			<h5><span class="text-dark fs-2 fw-bolder fst-italic text-white">�����е�</span></h5>
	      		</div>
	    	</div>
	  	</div>
		<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
		   <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		   <span class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span>
			<span class="visually-hidden">Next</span>
		</button>
	</div>

	<!-- ī�念�� -->
	<div class="row">
		<c:forEach var="g" items="${goodsList}">
			<div class="card w-25 border border-0">	
		  		<img src="${g.pic_goods}" class="card-img-top" alt="�̹����� �����ϴ�.">
		  		<div class="card-body border border-dark">
		    		<p class="card-text " align="center"><span class="text-dark fs-2 fw-bolder fst-italic">${g.name_goods}</span>
		    		</br></br><span class="fs-5">${g.explain_goods}</span>
		    		</br></br><span class="text-dark fs-6 fw-bold fst-italic text-decoration-underline">${g.value_goods}</span></p>
		  		</div>			
			</div>	
		</c:forEach>
	</div>	
</div>	