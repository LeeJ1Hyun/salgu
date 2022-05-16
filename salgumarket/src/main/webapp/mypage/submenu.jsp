<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<link rel="stylesheet" href="css/main.css" >
<script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function(){
		leftmenuInvokeEvent();
	});
	
	//Header Invoke Event
	function leftmenuInvokeEvent() {
		leftNavigationEventHandler();		// Left Menu
		initLeftmenuNavigation()			// 시작
	}
	
	function leftNavigationEventHandler() {
		// Left Navigation Bar
		$('#lnb ul.depth2 > li > a').click(function() {
			var lnbLiCrt = $(this).parent('li');
			var lnbLiPrv = lnbLiCrt.siblings('li.on');
			
			$(this).parent('li').addClass('on');
			$(this).parent('li').siblings('li.on').removeClass('on');

			var mMenuId = $(this).data("mmenuid");
			var sMenuId = $(this).data("smenuid");

			moveSubmenu(mMenuId + ""  + sMenuId);
		});
	}
	
	function initLeftmenuNavigation() {
		$('#lnb > ul.depth2').removeClass('on');
		$('#lnb > ul.depth2 > li').removeClass('on');
		
		/* $("#lnb ul.depth2").hide(); */
		
		var mMenuId = "9";
		var sMenuId = "1";

		var title	= "마이페이지";

		var submenuId = mMenuId;

		$("#lnb ul#submenu" + submenuId).show();
		$("#lnb div.title").text(title);

		$('#lnb ul#submenu' + submenuId + ' > li:eq(' + (sMenuId - 1) + ') > a').trigger('click');
	}
	
	function moveSubmenu(menuInx){
		if (menuInx == "911")		{	// 마이페이지 > 판매내역
			$("article").load("saleList.jsp?timestamp=" + new Date().getTime());
		} else if (menuInx == "912") {	// 마이페이지 > 구매내역
			$("article").load("buyList.jsp?timestamp=" + new Date().getTime());
		} else if (menuInx == "913") {	// 마이페이지 > 내정보수정
			$("article").load("editMyinfo.jsp?timestamp=" + new Date().getTime());
		} else {
			$("article").html("잘못된 서블릿 호출입니다.");
		}
	}	
</script>

<div id="lnb">
	<div class="title"></div>
	<ul  id="submenu9" class="depth2" style="display:none;">
		<li><a href="javascript:;" data-mmenuid="9" data-smenuid="11" style="background: none;">판매내역</a></li>
		<li><a href="javascript:;" data-mmenuid="9" data-smenuid="12" style="background: none;">구매내역</a></li>
		<li><a href="javascript:;" data-mmenuid="9" data-smenuid="13" style="background: none;">내정보수정</a></li>
	</ul>
</div>