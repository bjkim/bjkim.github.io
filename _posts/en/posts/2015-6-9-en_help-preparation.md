---
title: Preparation
tags: help
published: true
permalink: /en/preparation.html
---

TBD

Thing+ 서비스에 대해서 전반적인 내용을 파악할 수 있는 가이드입니다.

* [시작하기 전에](#id-starting)
* [용어집](#id-term) 
* [주요기능](#id-feature)
* [어디서든 활용하기](#id-anytime)
* [사례](#id-usecase)

---
<div id='id-starting'></div>
### 시작하기 전에
<br>
![](/assets/1_thingplus.png)
#### [Thing+ 란?](http://www.daliworks.net/?page_id=72)
  * Thing+ (씽플러스)는 나만의 IoT 서비스를 구축할 수 있는 클라우드 서비스입니다.
  * Thing+ 에 가입만 하면 바로 나만의 IoT 서비스가 만들어 집니다.
  * Thing+ 와 연동된 하드웨어 제품을 사용하여 IoT 서비스를 쉽게 구축할 수 있습니다.
  * 스마트 홈, 스마트 팜, 스마트 에너지 등 다양한 분야에서 활용 가능한 클라우드 환경을 제공합니다.

#### Thing+ 는 어떻게 유용한가요?
* 누구나 쉽고 빠르게 자신의 IoT 환경을 저렴한 가격으로 구축할 수 있습니다.
* 다양한 활용 사례는 [여기](http://www.daliworks.net/?page_id=94)에서 확인할 수 있습니다.

#### Thing+를 다음과 같이 시작해보세요.
  * Thing+ 포털에 회원가입을 합니다.
  * Thing+ 와 연동된 하드웨어 제품을 구매하고 Thing+ 에 연결합니다.
  * 센서의 상태를 모니터링하고 분석합니다.
  * 원하는 규칙을 만들고 센서를 제어합니다.
  * 어디서든 Thing+ 포털에 접속하고 활용합니다.

<br>

---
<div id='id-term'></div>
### 용어집
<br>
#### 서비스, 사이트
* Thing+ 서비스는 서비스와 사이트로 구분되어 관리됩니다.
  - 예를들어 학교의 각 교실 온도를 모니터링 하고 싶은 경우
    - 학교라는 서비스를 만듭니다.
    - 그리고 각각의 교실을 사이트로 구분하여 만듭니다.
    - 각 사이트에 온도를 측정할 수 있는 하드웨어를 설치하고 등록합니다.
    - 각 교실의 학생들을 사이트에 가입합니다.
    - 이제 학생들은 자기 교실의 온도를 Thing+ 포털을 통하여 확인할 수 있습니다.
* 서비스는 기업 고객을 대상으로 만들어집니다.
* 서비스는 {서비스명}.thingplus.net 와 같이 독립적인 URL을 사용합니다.
  - 예) smarthome.thingplus.net, hello.thingplus.net 등
* 서비스는 내부적으로 관리할 수 있는 사이트를 만들 수 있습니다.
  - 예) smarthome 서비스의 경우 101동, 102동, 103동 등이 사이트가 됩니다.
* 사이트는 서로 등록된 자원에 대하여 접근을 할 수 없습니다.
* 사이트에는 사용자와 게이트웨이를 등록할 수 있습니다.

#### 관리자, 사용자
* 관리자는 서비스 관리자와 사이트 관리자로 나뉘어 집니다.
  - 서비스 관리자는 서비스내의 모든 권한을 가집니다.
  - 사이트 관리자는 사이트내의 모든 권한을 가집니다.
  - 사용자는 사이트 내에 등록된 일반 사용자를 뜻하며, 관리자가 부여하는 권한에 따라 접근할 수 있는 게이트웨이가 결정됩니다.

#### 게이트웨이, 디바이스, 센서
* 하드웨어는 게이트웨이 > 디바이스 > 센서 와 같이 3개의 계층 구조로 되어있습니다.
    - 예) 라즈베리파이 > 아두이노 > 온도센서
    - 예) 스마트폰 > 블루투스 장비 > (블루투스장비 내의) 3축 센서
* 게이트웨이에는 Thing+ Embedded(Gateway or Device)가 탑재되어 있어서, Thing+ Cloud에 연결됩니다.
* 게이트웨이는 연결된 장치들의 값을 송수신하는 역할을 합니다.
* 디바이스는 게이트웨이에 유/무선으로 연결되어있으며, 센서들이 붙어있는 구조입니다.
* 센서는 값을 읽을 수 있는 Sensor(센서)와 제어를 할 수 있는 Actuator(액츄에이터)를 포함합니다.
  - 예) Sensor - 온도, 습도, 조도 등
  - 예) Actuator - 조명등, 파워스위치, 카메라 등

#### 태그
* 태그는 논리적으로 센서들을 그룹핑(Group)할 수 있도록 해줍니다.
  - 예) smarthome의 101동, 102동, 103동의 각 게이트웨이상의 CO2센서들에 '우리 아파트 CO2'라는 이름으로 태그를 생성하면, 마치 하나의 게이트웨이 CO2가 3개 붙어 있는 것처럼 확인할 수 있습니다.

#### 규칙
* 규칙은 특정 조건에 따라서 무엇인가를 실행할 수 있도록 해줍니다.
  - 예) 화재가 감지되면, SMS 알림을 받을 수 있습니다. CO2가 너무 높으면, 공기청정기를 실행할 수 있습니다.

#### 타임라인
* 타임라인은 규칙에 의해서 발생되는 모든 이벤트들을 시간 순서로 보여주는 역할을 합니다.

<br>

---
<div id='id-feature'></div>
### 주요 기능
<br>
#### 대시보드 꾸미기
* Thing+ 의 다양한 위젯을 기반으로 자신만의 맞춤형 대시보드를 꾸밀 수 있습니다.
* 언제 어디서나 실시간 모니터링이 가능하며, PC, 태블릿, 모바일 등 모든 클라이언트 환경을 지원합니다.

<!---
* [세부설명 바로가기]()
-->

#### 규칙 만들기
* 센서들을 이용해 내가 원하는 규칙을 만들 수 있습니다.

<!---
* [세부설명 바로가기]()
-->

#### 이벤트 타임라인
* 설정한 규칙에 의해 발생하는 모든 이벤트를 트위터와 같은 타임라인 형태로 제공합니다.
* 단계(심각/경고/정보)를 지정할 수 있으며, 규칙 및 디바이스 별로 발생한 타임라인을 분류해서 확인할 수 있습니다.

<!---
* [세부설명 바로가기]()
-->

#### 센서목록
* 연결한 센서의 상태를 게이트웨이/지도/태그 뷰 별로 확인할 수 있습니다.

<!---
* [세부설명 바로가기]()
-->

#### 차트분석
* 센서를 차트형태로 분석/모니터링할 수 있습니다.

<!---
* [세부설명 바로가기]()
-->

<br>

---
<div id='id-anytime'></div>
### 어디서든 활용하기
<br>
데스크탑, 태블릿, 스마트폰 등 언제 어느 기기에서나 웹으로 접속 가능합니다.

1. 웹 어플리케이션을 실행한 뒤 주소창에 {서비스명}.thingplus.net을 입력합니다.
* 접속 후 로그인을 하면, 자신의 서비스 메인 대시보드를 볼 수 있습니다.
* 즐겨찾기 혹은 홈화면 바로가기를 통해서 보다 편리하게 이용할 수 있습니다.

<br>

---
<div id='id-usecase'></div>
### 사례
<br>
#### 집안 습도 모니터링
  * 습도 센서를 이용해서 집안의 습도상태를 실시간으로 확인할 수 있습니다. 또한 규칙설정을 통해서 습도 이상 알림을 받아 조취를 할 수도 있습니다.

1. 준비사항
  * _하드웨어 구매바로가기는 준비중입니다._
2. 하드웨어 등록
  * Thing+에 하드웨어를 등록합니다.
3. 규칙 만들기
  * 메뉴 우측의 설정버튼을 눌러서 메뉴를 클릭합니다. 규칙관리 페이지 상단의 플러스 버튼을 눌러 를 선택합니다.
  * 규칙 만들기에서는 트리거, 컨디션, 액션의 각 단계를 거쳐 규칙을 설정할 수 있습니다.예제에서는 “습도가 30 이하일 때 SMS를 보내시오” 라는 규칙을 만들어보도록 하겠습니다.
  * 규칙을 시작할 트리거 종류를 선택합니다. 예제에서는 습도센서를 고르도록 하겠습니다.
  * 두 번째 단계에서는 습도센서의 범위를 지정하도록 하겠습니다. 습도가 30도 이하일 때에 대한 규칙을 설정해야 하므로 “이상”을 선택하도록 하겠습니다.
  * 세 번째 단계에서는 트리거 세부항목을 지정할 수 있습니다.
    - 규칙에서 기준이 되는 값을 입력할 수 있습니다. 예제에서는 습도 30%에 해당하는 30을 입력합니다.
    - 트리거가 될 습도센서를 지정합니다.
  * 설정이 모두 끝났으면 "Action 선택"을 선택합니다. 액션시작화면에서는 이전에 선택한 트리거를 확인 할 수 있습니다. "Action 시작"을 눌러 계속 진행합니다.
  * 액션 선택화면에서는 SMS를 선택합니다.
  * SMS에 대한 액션방법으로는 “SEND(보내기)”를 선택합니다.
  * 액션의 마지막 단계에서는 메시지 본문을 입력할 수 있습니다. ""를 눌러 HTML을 입력하거나 ""를 눌러 메시지 내용을 확인할 수 있습니다. 예제에서는 별도의 수정 없이 기본으로 설정된 메시지를 사용하도록 하겠습니다. ""을 눌러 액션을 마무리 합니다.
  * 규칙설정의 마지막 단계에서는 규칙의 이름과 상세설명을 입력할 수 있습니다. 그리고 규칙의 심각도를 설정하고 "완료"버튼을 누르면 규칙이 만들어 집니다.

<!---
  * 더 자세한 규칙생성 사례 보기

#### 사무실 공기 환기 알림 서비스
1. 준비사항
  - 하드웨어

2. 하드웨어 등록

3. 규칙 만들기
* CO2가 높으면 창문을 여세요.

#### 제어 서비스
-->

<!---
1. 시작하기전에
* 용어집
* 주요 기능
* 어디서든 활용하기
* 사례
-->