var page=1;

function loadMap(gpsy,gpsx){
	var container = document.getElementById('concerthallMap'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new daum.maps.LatLng(gpsx, gpsy), //지도의 중심좌표.
		level: 3 //지도의 레벨(확대, 축소 정도)
	};

	var map = new daum.maps.Map(container, options); //지도 생성 및 객체 리턴
}

$( document ).ready(function() {
	$("#tab1").height("31");
	$("#tab1").css("background-color","#fff");
	
	$( "#tab1" ).click(function() {
		page = 1;
		$("#hallIntro").css("display","block");
		$("#hallMap").css("display","none");
		$("#hallOngoing").css("display","none");
		$("#hallSeat").css("display","none");
		$("#seatReview").css("display","none");
		
		$("#tab1").height("31");
		$("#tab1").css("background-color","#fff");
		$("#tab2").height("30");
		$("#tab2").css("background-color","#eee"); 
		$("#tab3").height("30");
		$("#tab3").css("background-color","#eee");
		$("#tab4").height("30");
		$("#tab4").css("background-color","#eee");
		$("#tab5").height("30");
		$("#tab5").css("background-color","#eee");  
		
	});
	
	$( "#tab2" ).click(function() {
		page = 2;
		$("#hallIntro").css("display","none");
		$("#hallMap").css("display","block");
		$("#hallOngoing").css("display","none");
		$("#hallSeat").css("display","none");
		$("#seatReview").css("display","none");
		
		$("#tab2").height("31");
		$("#tab2").css("background-color","#fff");
		$("#tab1").height("30");
		$("#tab1").css("background-color","#eee"); 
		$("#tab3").height("30");
		$("#tab3").css("background-color","#eee"); 
		$("#tab4").height("30");
		$("#tab4").css("background-color","#eee");
		$("#tab5").height("30");
		$("#tab5").css("background-color","#eee"); 
		
		console.log($("#gpsx").val(),$("#gpsy").val());
		loadMap($("#gpsx").val(),$("#gpsy").val());
		
	});
	
	$( "#tab3" ).click(function() {
		page = 3;
		$("#hallIntro").css("display","none");
		$("#hallMap").css("display","none");
		$("#hallOngoing").css("display","block");
		$("#hallSeat").css("display","none");
		$("#seatReview").css("display","none");
		
		
		$("#tab3").height("31");
		$("#tab3").css("background-color","#fff");
		$("#tab1").height("30");
		$("#tab1").css("background-color","#eee"); 
		$("#tab2").height("30");
		$("#tab2").css("background-color","#eee"); 
		$("#tab4").height("30");
		$("#tab4").css("background-color","#eee");
		$("#tab5").height("30");
		$("#tab5").css("background-color","#eee"); 
		
	});
	
	$( "#tab4" ).click(function() {
		page = 4;
		$("#hallIntro").css("display","none");
		$("#hallMap").css("display","none");
		$("#hallOngoing").css("display","none");
		$("#hallSeat").css("display","block");
		$("#seatReview").css("display","none");
		
		
		$("#tab4").height("31");
		$("#tab4").css("background-color","#fff");
		$("#tab1").height("30");
		$("#tab1").css("background-color","#eee"); 
		$("#tab2").height("30");
		$("#tab2").css("background-color","#eee"); 
		$("#tab3").height("30");
		$("#tab3").css("background-color","#eee"); 
		$("#tab5").height("30");
		$("#tab5").css("background-color","#eee"); 
		
	});
	
	$( "#tab5" ).click(function() {
		page = 5;
		$("#hallIntro").css("display","none");
		$("#hallMap").css("display","none");
		$("#hallOngoing").css("display","none");
		$("#hallSeat").css("display","none");
		$("#seatReview").css("display","block");
		
		
		$("#tab5").height("31");
		$("#tab5").css("background-color","#fff");
		$("#tab1").height("30");
		$("#tab1").css("background-color","#eee"); 
		$("#tab2").height("30");
		$("#tab2").css("background-color","#eee"); 
		$("#tab3").height("30");
		$("#tab3").css("background-color","#eee"); 
		$("#tab4").height("30");
		$("#tab4").css("background-color","#eee"); 
		
	});
	

	$( "#tab1" ).mouseenter(function() {
		if(page==2 || page==3 || page==4 || page==5){
			$("#tab1").height("31");
			$("#tab1").css("background-color","#fff"); 
		}
	});
	$( "#tab1" ).mouseleave(function() {
		if(page==2 || page==3 || page==4 || page==5){
			$("#tab1").height("30");
			$("#tab1").css("background-color","#eee"); 
		}
	});		
			
	$( "#tab2" ).mouseenter(function() {
		if(page==0 || page==1 || page==3 || page==4 || page==5){
			$("#tab2").height("31");
			$("#tab2").css("background-color","#fff"); 
		}
	});
	$( "#tab2" ).mouseleave(function() {
		if(page==0 || page==1 || page==3 || page==4 || page==5){
			$("#tab2").height("30");
			$("#tab2").css("background-color","#eee"); 
		}
	});
	
	$( "#tab3" ).mouseenter(function() {
		if(page==0 || page==1 || page==2 || page==4 || page==5){
			$("#tab3").height("31");
			$("#tab3").css("background-color","#fff");
		}
	});
	$( "#tab3" ).mouseleave(function() {
		if(page==0 || page==1 || page==2 || page==4 || page==5){
			$("#tab3").height("30");
			$("#tab3").css("background-color","#eee"); 
		}
	});
	
	$( "#tab4" ).mouseenter(function() {
		if(page==0 || page==1 || page==2 || page==3 || page==5){
			$("#tab4").height("31");
			$("#tab4").css("background-color","#fff");
		}
	});
	$( "#tab4" ).mouseleave(function() {
		if(page==0 || page==1 || page==2 || page==3 || page==5){
			$("#tab4").height("30");
			$("#tab4").css("background-color","#eee"); 
		}
	});	
	
	$( "#tab5" ).mouseenter(function() {
		if(page==0 || page==1 || page==2 || page==3 || page==4){
			$("#tab5").height("31");
			$("#tab5").css("background-color","#fff");
		}
	});
	$( "#tab5" ).mouseleave(function() {
		if(page==0 || page==1 || page==2 || page==3 || page==4){
			$("#tab5").height("30");
			$("#tab5").css("background-color","#eee"); 
		}
	});
		
		
	
	
	
	
	
	//----------------------------tab3-----------------------------//
});

