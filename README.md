# lavraStroe
2021-1 - SSD


## **2021_ 1 시스템 소프트웨어 개발 : 웹 개발 프로젝트**

> 프로젝트 기간 : 2021.05.09 ~ 2021.06.28
>
> Spring을 기반으로 개발한 악세사리의 쇼핑부터, 개인거래, 공동 구매  웹 사이트 _ Lavra 

### Use Case : 

<img src="https://user-images.githubusercontent.com/59916029/141234125-59fc347d-e956-4207-87fd-0775499773bf.png">

<br/>

### 주요기능 : *gif 크기 초과 > 추후 수정 예정. 

<table>
    <tr>
        <td align = "center"> <b> 메인페이지 </b> </td>
        <td align = "center"> <b> 회원가입 * 로그인 </b> </td>
    </tr>
	<tr>
		<td> <img width="480" src="https://images.velog.io/images/yujeong136/post/7164bedc-d625-4486-a422-7f09103eceee/lav_%EB%A9%94%EC%9D%B8%ED%8E%98%EC%9D%B4%EC%A7%80.gif"</td>
        <td> <img width="480" src="https://images.velog.io/images/yujeong136/post/bce4548d-37ed-44dd-b516-db2eed81e33f/lav_login.gif"</td>
	</tr>
     <tr>
        <td align = "center"> <b> 쇼핑몰 이용 </b> </td>
        <td align = "center"> <b> 위시리시트 / 카트  </b> </td>
    </tr>
	<tr>
		<td> <img width="480" src="https://images.velog.io/images/yujeong136/post/f81bf078-6d43-457c-b0cf-37894203e380/%EC%87%BC%ED%95%91%EB%AA%B0%20%EC%9D%B4%EC%9A%A9.gif"</td>
        <td> <img width="480" src="https://images.velog.io/images/yujeong136/post/17d1ebb6-8559-4577-91d6-75b53d35a39d/%EC%9C%84%EC%8B%9C%EC%B9%B4%ED%8A%B8.gif"</td>
	</tr>
    <tr>
        <td align = "center"> <b> 개인 거래 상품 등록 </b> </td>
        <td align = "center"> <b> 개인 거래 이용 </b> </td>
    </tr>
	<tr>
		<td> <img width="480" src="https://images.velog.io/images/yujeong136/post/0935fced-c73c-4af4-931b-376465b75702/%EA%B0%9C%EC%9D%B8%EA%B1%B0%EB%9E%98%20%EC%83%81%ED%92%88%20%EB%93%B1%EB%A1%9D.gif"</td>
        <td> <img width="480" src="https://images.velog.io/images/yujeong136/post/bbfd91a5-a954-4940-9f25-554ead300b27/lav_%EA%B0%9C%EC%9D%B8%EA%B1%B0%EB%9E%98%20%EA%B5%AC%EB%A7%A4.gif"</td>
	</tr>
    <tr>
        <td align = "center"> <b> 공동 구매 이용 </b> </td>
        <td align = "center"> <b> 리뷰 </b> </td>
    </tr>
	<tr>
		<td> <img width="480" src="https://images.velog.io/images/yujeong136/post/db0ecf83-a285-4070-a362-5833b4b62046/%EA%B3%B5%EB%8F%99%EA%B5%AC%EB%A7%A4.gif"</td>
        <td> <img width="480" src="https://images.velog.io/images/yujeong136/post/699e6278-1c21-437e-9a60-e3afc58c05d8/%EB%A6%AC%EB%B7%B0.gif"</td>
	</tr>
</table>

<br/>

### 기능 설명 

> **회원 가입 / 로그인 : ** 
>
> 회원 가입 탭에서 회원가입이 가능하다. 회원가입 할 경우, 정보가 db에 저장, 로그인이 가능하다. 또한 해당 웹사이트의 대부분의 기능(각 카테고리의 구매, 리뷰작성, 상품 등록 등)은 로그인을 해야만 이용이 가능하다. 
>
> 회원가입 시 기입했던 사용자 정보와 비밀번호의 경우 myPage에서 수정이 가능하다. 
>
> **쇼핑몰 (악세사리) : **
>
> 쇼핑몰에서 항시 판매하는 제품란으로서, 사용자가 물건을 구매할 수 있다.  각 상품 종류에 따라 목록을 가지며, 페이징 형식이다. 상품 목록은 각 카테고리 별로, 인기순, 높은 가격순, 낮은 가격 순으로 정렬이 가능하다. 상품목록에서 상품 상세 페이지로 들어가 정보를 조회하고 구매 및 위시/카트에 저장이 가능하다. 이때 상품은 품절 상태를 가질 수 있으며, 품절될 경우, 구매 버튼이 비활성화 되게 된다. 
>
> **개인 거래 : **
>
> 개인 거래는 사용자가 등록한 상품을 다른 사용자가 구매할 수 있는 페이지로 각 상품 종류에 따라 목록을 가지며, 페이징 형식이다.  상품목록에서 상품 상세 페이지로 들어가 정보를 조회하고 구매 및 위시에 저장이 가능하다. 
>
> 또한 개인 거래는 크게 개인 거래 상품 등록과 구매로 나뉘며, 상품 등록은 탭바의 Sell Item에서 상품의 등록과 관리가 가능하다. 타  사용자가 개인 거래 상품을 구매 시, 구매가 완료, 구매 버튼이 비활성화 되는 구조이다. 
>
> **공동 구매 :  **
>
> 공동 구매는 관리자가 상품을 등록 시 목표금액과 마감일을 설정, 사용자는 각 상품을 구매 신청 할 수 있으며, 마감일날 목표금액을 달성하면 구매가 완료된다. 공동 구매 탭에서 상품 목록은 기본순, 높은 가격순, 낮은 가격 순으로 정렬이 가능하다.  상품목록에서 상품 상세 페이지로 들어가 정보를 조회하고 구매 및 위시에 저장이 가능하다. 
>
> 공동 구매 상품의 경우,  진행, 마감(성공, 실패)의 3가지의 형태로서 마감기한이 된 상품이 있는지 웹 사이트가 특정시간마다 확인, 마감된 상품의 경우 구매 신청 버튼이 비활성화,  목표금액을 달성했는지에 따라서 성공과 실패가 나뉜다.  주문 조회에서 주문 관련 정보와 함께 상품의 상태도 조회할 수 있다.
>
> **위시리스트 / 카트 : **
>
> 위시리스트는 각 상품 탭(악세사리 / 개인 거래 / 공동 구매) 의 상품 목록에서 이미지의 하트 마크를 클릭 시 위시리스트에 담기고, 하트마크를 다시 해제할 경우 위시리스트에서 제거되는 형태이다. 전체 위시리스트 관리는 위시리스트 탭에서 가능하다. 
>
> 카트의 경우는 악세사리 탭인 쇼핑몰에서만 이용 가능한 형태로서,  체크박스를 이용하여 여러 물건을 한번에 구매할 수 있는 기능을 제공한다. 
>
> **리뷰 : **
>
>   쇼핑몰과 공동 구매에 한해 이용할 수 있으며, 리뷰는 모든 이가 볼 수 있되, 작성은 해당 상품을 구매한 이력이 있는 사용자로 제한한다. ( 자신의 리뷰는 언제든지 삭제 가능. ) 

### 사양 :

**아키택처 :** MVC 방식을 이용. 

**개발 환경 및 사용 기술 : **

SpringBoot, Spring Data JPA, Spring Scheduler

 MyBatis, Oracle DB,  Java 1.8

Bootstrap,  REST API 

### 협업 방식 :

github 사용하였으며, 디스코드를 통해 매주 회의를 통하여 해당 주의 개발 목표와 이전의 개발한 것에 대해 정보 공유, 회고의 시간을 가짐. 



### 프로젝트 구조 :

src / main / java

- com.example.lavrastore
- com.example.lavrastore.controller
- com.example.lavrastore.dao
- com.example.lavrastore.dao.mybatis
- com.example.lavrastore.dao.mybatis.mapper
- com.example.lavrastore.data.jpa
- com.example.lavrastore.domain
- com.example.lavrastore.service

src / main / resources

* com / example / lavrastore / dao / mybatis / mapper (.xml)
* db / oracle
* static
  * images
  * js
  * style
* application.properties

src / main

* webapp
  * images
    * upload
  * WEB-INF
    * jsp
    * lib

pom.xml



### 역할 

* [강민주](https://github.com/Minjoo-kang123) : 위시리스트, 로그인, 회원가입, 마이페이지,  필요 이미지 업로드
* [안시현](https://github.com/ash0520) : 개인거래 ( 목록, 상세페이지, 등록, 구매)
* [윤예진](https://github.com/yejin-yun) : 쇼핑몰( 목록, 상세페이지, 구매 ), 위시리스트(하트 버튼), 위시리스트, 카트 , 메인페이지 등
* [이유정](https://github.com/You-jeong136) : 공동구매 (목록, 상세페이지, 구매), 리뷰, 주문 내역 조회 , 개인 거래 ( 구매, 등록 ) 등 

### 
