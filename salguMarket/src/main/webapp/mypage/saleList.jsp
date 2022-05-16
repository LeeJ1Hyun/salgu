<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="divContent">
	<div class="tit_01" style="float:left;">
		<img src="../img/titleIcon1.png" alt="제목 아이콘"/>&nbsp;판매목록
	</div>
	
	<div style="clear:both;"></div>
	
	<div>
		<input type="button" style="width:80px;float:right;margin-left:5px;" value="검색"/>
		<input type="text" style="width:150px;height:20px;float:right;margin-left:5px;" placeholder="상품, 이름 입력"/>
		<div style="height:20px;float:right;">
			<div style="height:20px;">
				<input type="checkbox" name="saleGbnChk" value="0" checked="checked"/>판매중
				<input type="checkbox" name="saleGbnChk" value="1" checked="checked"/>판매완료
			</div>
		</div>
	</div>
	
	<div style="clear:both;"></div>
	
	<div style="margin-top:10px;">
		<table id="tblSaleList" class="tb">
			<caption></caption>
			<colgroup>
			<!-- 1set 24% 16%, 2set 15% 25% -->
				<col width="15%" />
				<col width="25%" />
				<col width="12%" />
				<col width="12%" />
				<col width="12%" />
				<col width="12%" />
				<col width="12%" />
			</colgroup>
			<thead>
				<tr>
					<th>상품</th>
					<th>상품명</th>
					<th>가격</th>
					<th>카테고리</th>
					<th>판매 등록일</th>
					<th>구매자</th>
					<th>판매구분</th>
				</tr>
			</thead>
			<tfoot></tfoot>
			<tbody>
				<tr>
					<td class="tc">
						<img src="../img/salgu.png" style="width:150px;height:150px;"/>
					</td>
					<td class="tc">살구1</td>
					<td class="tc">10원</td>
					<td class="tc">과일</td>
					<td class="tc">2022.05.12</td>
					<td class="tc"></td>
					<td class="tc">판매중</td>
				</tr>
				<tr>
					<td class="tc">
						<img src="../img/salgu.png" style="width:150px;height:150px;"/>
					</td>
					<td class="tc">살구2</td>
					<td class="tc">20원</td>
					<td class="tc">과일</td>
					<td class="tc">2022.04.12</td>
					<td class="tc">정지효</td>
					<td class="tc">판매완료</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>