---
title: 관리기능 사용법
tags: "user-guide"
published: true
img : ic-management.png
permalink: /ko/user-guide/management.html
---

서비스, 사이트, 사용자 및 게이트웨이 관리에 대한 가이드입니다.

1. [서비스 관리](#id-service-management)
2. [사이트 관리](#id-site-management)
3. [사용자 관리](#id-user-management)
4. [게이트웨이 관리](#id-gateway-management)

---
<div id='id-service-management'></div>

### 서비스 관리
**서비스 관리자를 위한 기능입니다.**

<br/>

#### 화면안내 
서비스에 대한 설정을 변경, 관리할 수 있습니다.

<br/>

#### 일반 설정
서비스의 일반적인 설정을 변경할 수 있습니다.

* `이름`: 서비스의 이름을 나타냅니다. 서비스의 이름은 포털 좌측 상단에 반영됩니다.
* `연락처`: 서비스의 웹푸시 알람이나 서비스 관련 정보 알림을 받을 수 있는 메일입니다. 서비스 페이지 하단의 contact의 링크로 표시됩니다.
* `상세설명`: 서비스의 상세한 설명으로 로그인, 회원가입 화면에서 보여집니다.
* `서비스 로고`: 서비스 로그인, 회원가입 화면에서 보여지는 로고 URL을 입력합니다. 서비스 로고가 없을 경우는 서비스 이름이 보여집니다.
* `서비스 홈페이지`: 서비스 로그인, 회원가입 화면에서 보여지는 홈페이지 또는 서비스 안내 페이지 URL을 입력합니다.

<br/>

#### 대시보드 설정
* 대시보드에 추가할 수 있는 `위젯리스트`를 추가/변경할 수 있습니다.
* 선택된 위젯리스트 요소들은 대시보드 페이지의 추가 버튼 하단에 보여집니다.

<br/>

#### 규칙 설정
* 규칙 생성시에 나타나는 `트리거와 액션 리스트`를 추가/변경할 수 있습니다.
* 선택된 트리거와 액션들은 규칙 생성 페이지에서 볼 수 있습니다.

<br/>

---
<div id='id-site-management'></div>

### 사이트 관리
**사이트 관리자를 위한 기능입니다.**

사이트를 만들고 관리할 수 있습니다.

* 전체 사이트 리스트를 볼 수 있습니다.
* 사이트를 선택하면 해당 사이트의 이름과 코드를 확인할 수 있습니다.

<br/>

#### 사이트 선택
* 사이트 이름에서 사이트를 선택할 수 있습니다. 사이트를 선택하면 해당 사이트만 화면에 나타납니다.

<br/>

#### 사이트 등록
* 우측 상단의 <i class="fa fa-plus-circle"></i> 버튼을 누르면 사이트 등록 페이지로 이동합니다.
* 사이트 이름과 사이트 코드를 입력하면 사이트를 등록할 수 있습니다.
* 사이트를 등록하면 생성된 사이트의 요금제를 선택할 수 있습니다.
* 요금제를 선택하면 해당 사이트의 요금제가 저장됩니다.

<br/>

---
<div id='id-user-management'></div>

### 사용자 관리
**서비스 및 사이트 관리자를 위한 기능입니다.**
![](/assets/5_m_user0.png)

<br/>

#### 화면안내
![](/assets/5_user_m.png)

* 서비스의 전체 사이트의 리스트와 각 사이트의 사용자를 확인할 수 있습니다.

<br/>

#### 사이트 선택
* 상단 ①사이트 이름에서 사이트를 선택할 수 있습니다. 사이트를 선택하면 해당 사이트에 속한 사용자 리스트만 화면에 나타납니다.

<br/>

#### 사용자 목록
* ②각 사이트별로 사용자 리스트를 볼 수 있습니다.
* ③사용자 리스트에는 ④사용자 아이디, ⑤이메일, ⑥사용 권한을 확인 및 (권한이 있는 경우) 편집할 수 있습니다.

<br/>

#### 사용자 권한
* 관리자가 부여하는 권한에 따라, 사용자는 접근할 수 있는 수준이 결정됩니다.
  -  예) 게이트웨이 보기 권한, 게이트웨이 설정 권한
* 암호 초기화
* 사용자 인증/비인증
* 사용자 지우기

<br>

---
<div id='id-gateway-management'></div>

### 게이트웨이 관리
**서비스 및 사이트 관리자를 위한 기능입니다.**
![](/assets/5_m_gateway0.png)

<br/>

#### 화면 안내
![](/assets/5_m_gateway.png)

<br/>

#### 게이트웨이
* 사이트 이름
* 게이트웨이 이름

<br/>

#### 게이트웨이 리스트
* 게이트웨이 기본정보
  - 아이디
  - 등록일
  - 이름
  - 데이터 전송주기
  - 검색 대상 자동 추가
    - 자동으로 센서 리스트를 게이트웨이가 획득할지 여부를 결정합니다.
* 추가 옵션
  - 위치
  - 이메일
  - 모바일
  - 상세설명
* 디바이스 및 센서 추가
* 게이트웨이/디바이스/센서 삭제
* 소프트웨어 관리
  - 소프트웨어 버전 정보
  - 소프트웨어 버전 업데이트
* 게이트웨이 재구동

<br/>

#### 게이트웨이 등록하기
![](/assets/5_m_gateway2.png)

1. 우측 상단의 <i class="fa fa-plus-circle"></i> 버튼을 눌러 게이트웨이를 추가합니다.
* ①게이트웨이 모델과 디바이스 모델을 고르게 됩니다.
* ②게이트웨이 아이디, ③이름을 입력합니다.
* 사용할 센서를 확인하게 됩니다.
* ④등록할 사이트를 지정할 수도 있습니다.

<br/>

---

<div class='scrolltop'>
    <div class='scroll icon'><i class="fa fa-arrow-circle-up"></i></div>
</div>
<!---
1. 서비스 관리
* 사이트 관리
* 사용자 관리
* 게이트웨이 관리
* 태그 관리
* 규칙 관리
-->
