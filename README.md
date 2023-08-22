

# KB-OneEdu-Project



## 0. 구성원

<table>
  <tbody>
    <tr>
      <td align="center"><a href="https://github.com/songhee1"><img src="https://github.com/songhee1/algorithm-study/assets/96781855/6083c24c-c667-46b6-9a7e-5a993d2c8ed5" width="300px;" alt="최송희"/><br /><sub><h3>BE 팀장 : 최송희 </h3></sub></a><br /></td>
      <td align="center"><a href=""><img src="https://github.com/songhee1/algorithm-study/assets/96781855/8796786b-64bc-4862-a10d-2c370035ca67" width="300px;" alt="김가빈"/><br /><sub><h3>BE 팀원 : 김가빈 </h3></sub></a><br /></td>
      <td align="center"><a href=""><img src="https://github.com/songhee1/algorithm-study/assets/96781855/e60d9e79-0b3b-47fd-8e5a-9ba4e2032799" width="300px;" alt="맹영욱"/><br /><sub><h3>BE 팀원 : 맹영욱 </h3></sub></a><br /></td>
    </tr>
  </tbody>
</table>

<br>
<br>

## 1. 프로젝트 주제

Java 8 을 이용해 온라인 교육 플랫폼을 주제로 선정, 이클립스를 활용하여 JDBC연결, Oracle 8 버전 SQL 쿼리 로직 작성을 완료하였습니다. 메서드 오버로딩, 생성자 오버라이딩, 예외처리, 커넥션 활용을 통하여 자바 백엔드 기능을 구현하였습니다.

## 2. 프로젝트 목적 및 배경

비대면 서비스 시대에 맞춰서 온라인 교육 플랫폼 제작을 생각하게 되었습니다. 

지금까지의 강의를 바탕으로 서비스 클래스를 확장한 DAO 구현과 DB 테이블 설계 과정을 프로젝트로 구현해보고자 제작해보게 되었습니다. 

## 3. Use case Diagram
    
- 변경 전
    
  ![유스케이스 다이어그램 drawio (1)](https://github.com/songhee1/algorithm-study/assets/96781855/b7dfc155-5a8e-422d-b480-2b9e12f19c4d)
    
    - 액터 기준 유스케이스 다이어그램 작성  →  기능을 직관적으로 확인하기 어렵다는 점 + 클래스 위주 확인이 어렵다는 점 ⇒ 새롭게 재작성
    
- 변경 후
    
 ![유스케이스다이어그램 drawio (1)](https://github.com/songhee1/algorithm-study/assets/96781855/fcf1fdfb-96c5-4203-91bc-144234d05a3f)
    
    클래스 기능별로 다이어그램 재작성  + 기존 CRUD 기능과 추가 기능을 분리
    

## 4. DB Modeling

- 변경 전
    
    ![Untitled (5)](https://github.com/songhee1/algorithm-study/assets/96781855/dd219eb5-1cdf-47d1-8a86-cd2c437f5347)
   
- 변경 후
    
    ![Untitled (6)](https://github.com/songhee1/algorithm-study/assets/96781855/2408b23e-ed0a-4b57-a0f9-8caa6cce029a)
    
- 초기 DB 모델링 때는 실제 데이터베이스에서 허용되는 컬럼 명을  고려하지 못함. like 연산자나 check를 인식 X
- 유니크한 컬럼을 제외한 나머지들은 직관성을 위해 컬럼명을 수정하였고 데이터 타입의 사이즈를 알맞게 지정해주었다.

## 5. Class Diagram

<p align="center">
<img src="https://github.com/songhee1/algorithm-study/assets/96781855/88efffb3-a1f7-4ed0-90a3-b80653b57e69" width=auto height="600"/>
</p>

학생과 선생님의 테이블은 구분하였으나 상속 관계를 통해서 재사용성을 높이기 위해 위와 같이 클래스 관계를 설정했다. 

## 6. Frount UI (Figma)

https://www.figma.com/embed?embed_host=notion&url=https%3A%2F%2Fwww.figma.com%2Ffile%2FLOzgELsA3rPjTO39zFILla%2FUntitled%3Ftype%3Ddesign%26node-id%3D0%253A1%26mode%3Ddesign%26t%3DjpOVf217dqdEVwdD-1

- 상세 화면
    
    **1) 강의자 창**
    
    <p align="center">
	<img src="https://github.com/songhee1/algorithm-study/assets/96781855/3cd884cd-8c51-43ea-807a-23d574881e32" width=auto height="300"/>
    </p>
    
    강의자가 본인의 강의 ID와 강의명, 과목, 가격을 작성해 등록 및 변경하는 화면
    
    본인이 담당하고 있는 과목 조회
    
    **2) 학생창 - 수강중인 강의 목록**
    
    <p align="center">
	<img src="https://github.com/songhee1/algorithm-study/assets/96781855/febc41b7-a083-4295-a061-2f2777fd419e" width=auto height="300"/>
    </p>
    
    수강생이 수강 중인 강의 목록, 강의수강, 철회하는 화면
    
    선생님 이름, 강의명, 좋아요 수 표시
    

### 상세 기능

**CRUD**

- 강의자가 본인의 강의 ID와 강의명, 과목, 가격을 작성해 등록 및 변경
- 본인이 담당하고 있는 과목 조회
- 학생이 수강 중인 과목 정보 조회
- 과목별 선생님 전체 목록 조회
- 선생님 id로 강의 목록 조회
- 인기 강의 목록 조회
- 수강자 강의 목록에서 강의 삭제
- 선생님 등록, 조회, 변경

**추가 기능**

- 수강자의 특정 강의 좋아요 가능 여부 확인
- 특정 선생님 강의의 수강자 3개 이상 수강 중이면 강의 할인
- 강의 id로 좋아요 표시

## 7. Eclipse Project Structure

- 구조
    - com.edu.vo
        - User
        - Student
        - Teacher
        
    - com.edu.exception
        - IdNotFoundException
        - DuplicateException
    - com.edu.dao
        - EduDAO
        - com.edu.dao.impl
            - EduDAOImpl
    - com.edu.test
        - EduTest
    - config
        - ServcerInfo(interface)
- 시퀀스 쿼리문
    
     <p align="center">
	<img src="[https://github.com/songhee1/algorithm-study/assets/96781855/febc41b7-a083-4295-a061-2f2777fd419e](https://github.com/songhee1/algorithm-study/assets/96781855/aed769ce-6de8-4108-8cdc-1584c8a4d071)" width=auto height="300"/>
    </p>
    

## 8. Business Logic Template - Interface

```java
package com.edu.dao;

import java.util.ArrayList;

import com.edu.vo.User;

public interface EduDAO {

	//공통 커넥션 연결부
	public Connection getConnection() throws SQLException;
	
	// 존재여부 확인
	public int studentIdExist(int id, Connection conn);
	public int teacherIdExist(int id, Connection conn);
	public int lectureIdExist(int id);

	//close 메서드
	public void closeAll(ResultSet rs, PreparedStatement ps, Connection conn) throws Exception;
	public void closeAll(PreparedStatement ps, Connection conn) throws Exception;

	//**공통 기능** (가빈)
	public ArrayList<User> FindAllTeacher();  //선생님 전체 목록 조회
	public ArrayList<User> FindTeacherBySubject(String subject); //과목별 선생님 전체 목록 조회
	public ArrayList<Lecture> FindLectureByTeacher(int teacherId); //선생님 id로 강의 목록 조회
	public Lecture FindLectureById(int lectureId); // 강의명 id로 강의 조회
	public ArrayList<Lecture> FindBestLectures(); // 인기 강의 목록 조회
	//공통 기능 전부 : throw IdNotFoundException -> IdExist 메서드 호출 후 존재하지 않으면 예외 

	//**관리자** (영욱)
	public void addTeacher(Teacher teacher); 
	// 선생님 등록 -> 이메일이 동일하면 throw AlreadyExistException 
	
	public void updateTeacher(Teacher teacher); // 선생님 변경
	public void deleteTeacher(int teacherId); // 선생님 삭제
	//위 두개 메서드 전부 : throw IdNotFoundException -> IdExist 메서드 호출 후 존재하지 않으면 예외 

	//**강의자** (송희)
	public void addLecture(Lecture lecture); 
	
	public void updateLecture(Lecture lecture);
	//throw IdNotFoundException

	//**수강자**
	
	//(송희)
	public ArrayList<Lecture> getAllMyLecture(int studentId); // id로 수강자 강의 목록조회
	// throw IdNotFoundException

	public void applyLecture(int studentId, Lecture lecture); 
	//수강자 강의 목록에 강의 추가 -> getAllMyLecture 메서드 호출해서 강의 목록 출력
	// throw AlreadyExistException 

	public void cancleLecture(int studentId, Lecture lecture); // 수강자 강의 목록에서 강의 삭제
	// throw IdNotFoundException

	//(영욱)
	public boolean likePossible(int studentId, int lectureId); // 수강자가 강의 좋아요 가능 여부 확인
	// throw IdNotFoundException( 수강자 id랑 강의 id 둘다 확인)

	public void likeLecture(int lectureId); // 강의 id로 좋아요 표시
	// likePossible 호출해서 true 이면 likeLecture 호출
	// likePossible 호출해서 false이면 메서드 나가기	  

	public boolean discountPossible(int studentId, int teacherId); 
	// 선생님 강의를 수강자가 3개 이상 수강 중이면 강의 할인
	// throw IdNotFoundException
	
}
```

## 9. DB 테이블 요구사항 조건 및 충족 코드

- `student` 테이블 생성
    
    ```sql
    CREATE TABLE student (
    student_id number(38),
    student_name VARCHAR2(50),
    address VARCHAR2(255),
    phone VARCHAR2(30),
    student_email VARCHAR2(40)
    );
    ```
    
    **기본키 제약조건** 
    
    ```sql
    ALTER TABLE student ADD CONSTRAINT student_student_id_pk PRIMARY KEY(student_id);
    DESC student ON DELETE CASCADE;
    ```
    

- `lecture` 테이블 생성
    
    ```sql
    CREATE TABLE lecture(
    lecture_id number(38),
    lecture_name VARCHAR2(50),
    subject VARCHAR2(255),
    likes number(38),
    price number(38)
    );
    ```
    
    **기본키 제약조건** 
    
    ```sql
    ALTER TABLE lecture ADD CONSTRAINT lecture_lecture_id_pk PRIMARY KEY(lecture_id);
    DESC lecture ON DELETE CASCADE;
    ```
  
    

### 1) 분석함수 1개 이상 적용

- 적용가능한 기능
    
    여러가지 작성해보면 과목별 1-3위 강의 목록 추출, 강의 전체 중 1-5위 강의 목록 추출, 선생님별 인기 강사 1위-3위 목록 추출 `ROW_NUMBER()`, `RANK()`
    
    - **인기 강의 목록 조회** `FindBestLectures` : ROW_NUMBER() 함수
    
    : 강의 전체 중 1-5위 강의 목록 추출 (일단 3개만)
    
    ```sql
    SELECT lecture_id, name, subject, likes, price
    						FROM (SELECT  lecture_id, name, subject, likes, price,
    						ROW_NUMBER() OVER(ORDER BY likes DESC) AS ranking FROM lecture l)
    						WHERE ranking <= 3
    ```
    

### 2) DECODE, CASE문 적용

- 적용가능한 기능
    
    좋아요 수가 가장 많은 강의 → “인기강의” , 그렇지 않은 강의 → “만족도가 떨어지는 강의”
    
    - 수강생의 강의 가격 총합 → 회원 등급 구별 :  `getAllMyLecture`
    
     
    

### 3) 그룹함수 적용

- 적용가능한 기능
    - `discountPossible`

### 4) 기본 CRUD적용

강의 등록, 변경, 삭제, 조회

선생님 등록, 변경 

### 5) 메소드 오버로딩 적용

존재 유무 확인 메소드나 

조회 기능 메소드에 있어서 오버로딩 적용. 

### 6) 생성자 오버로딩 적용

vo 클래스 내에서 생성자 오버로딩을 적용.

### 7) 숫자 관련 값은 세자리씩 `,` 로 구분해서 출력

- 적용가능한 기능
    
    강의 조회 `discountPossible`
    
     아이디 별 강의 조회
    
    ```sql
    SELECT lecture_id, name,subject,likes,to_char(price,'999,999,999') FROM lecture WHERE lecture_id=?;
    ```
    

**(1) DAO와 DAOImpl**

- DAO 소스 코드
    
    ```java
    
    ```
    
- DAOImpl 소스코드
    
    ```java
    
    ```
    

**(2) 선생님 전체 조회**

- 소스 코드
    
    ```java
    
    ```
    
- 결과
    
    ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/09633d98-33df-426c-9525-7b412f9a8306/Untitled.png)
    

강사 이름과 이메일 주소, 담당 주과목 명이 출력되도록 하였습니다.

**(3) 과목별 선생님 조회**

- 소스코드
    
    ```java
    
    ```
    
- 결과

- 

## 11. 미니 프로젝트 제작 후기

- 김가빈
        
    - 추후 디벨롭 하고 싶은 내용
        
        : 별점 외에 수강 후기를 남길 수 있는 기능과 Q&A 기능을 추가해보고 싶다.
        
    - 프로젝트에서 좋았던 점
        
        : 핵심 기능을 선별하기 위해 사용자의 입장에서 시스템을 바라보고 기능들을 추출한 점이 좋았다. 
        
        더불어 고심하는 과정 속에서 온라인 교육 플랫폼의 체계를 이해할 수 있어 좋았고, 
        
        **테이블들은 일관성을 지키고 클래스는 재 사용성을 높이기 위해 상속 관계인 클래스들을 한 테이블로 구성하지 않아도 되는 것을 새롭게 배울 수 있어 좋았다**. 
        
- 맹영욱
    - 아쉬웠던 점
        
        : 
        
    - 추후 디벨롭 하고 싶은 내용
        
        :
        
    - 프로젝트에서 좋았던 점
        
        :
        
- 최송희
    - 아쉬웠던 점
        
        : 데이터베이스의 관계 설정에서 조금이라도 복잡해지면 옳게 설계하고 있는 것인지 헷갈리는 상황이 있었습니다. 이 부분에서 더 능숙하게 설계부분을 완성할 수 있었다면 기능은 다양화할 수 있었을 것 같습니다. 설계에서 많은 아이디어를 창출하기 어려웠지만 좋은 경험이었습니다. **유스케이스 다이어그램 기능을 액터 중심으로 작성했던 것이 처음에 큰 오류였지만 이번 경험을 계기로 정확하게 설계 능력을 향상**시켰습니다. 
        
    - 추후 디벨롭 하고 싶은 내용
        
        : **댓글 작성/삭제/수정/대댓글과 인공지능을 활용한 키워드 분석**을 통해 학생들의 **주요 관심 강의 목록을 업그레이드하는 내용**도 넣고싶습니다. 강의 수강에 필수적인 **강의 설명란과 강의 수강 후기 목록 리스트화로 실제 서비스에 가깝게 구현**하고 싶습니다.
        
    - 프로젝트에서 좋았던 점
        
        : 이번 프로젝트를 통하여 **VO, DAO 인터페이스, DAO 구현 클래스와 테스트 클래스 구현 능력을 향상**시켰습니다. **DAO 구현체 메서드는 해당 서비스에 대해 일대일로 호출**된다는 점을 코드 구현을 구체적으로 확인할 수 있어 **서비스의 동작원리에 대한 흐름을 체득**하였습니다. 오라클을 활용한 JDBC의 복잡한 쿼리문 작성능력을 구체화하여 교육 서비스 플랫폼 프로젝트에 적용할 수 있었습니다. 이보다 더 복잡한 서비스 구현에도 큰 어려움 없이 제작해나갈 것이라 생각합니다. 
        

→ 잘된 점 

: DAO 구현체 메서드는 해당 서비스에 대해 일대일로 호출된다는 점을 코드 구현을 구체적으로 확인할 수 있어 **서비스의 동작 원리에 대한 흐름을 체득**하였습니다.

핵심 기능을 선별하기 위해 **사용자의 입장에서 시스템을 바라보고 기능들을 추출한 점**이 좋았습니다.

테이블들은 일관성을 지키고 클래스는 재 사용성을 높이기 위해 **상속 관계인 클래스들을 한 테이블로 구성하지 않아도 되었던 점이 잘 했던 것 같다.** 

→ 아쉬운 점 

: 데이터베이스의 관계 설정에서 조금이라도 복잡해지면 옳게 설계하고 있는 것인지 헷갈리는 상황이 있었는데 **더 능숙하게 설계**할 수 있었다면  다양화할 수 있었을 것 같습니다. 

**유스케이스 다이어그램 기능을 액터 중심으로 작성했던 것이 처음에 큰 오류였던**것이 아쉬움이 남습니다.

또 개인의 단위 테스트를 **조금 더 세심하게** 살피면서 작성했다면 시간을 단축 시킬 수 있고 통합 테스트를 원할하게 진행할 수 있었을텐데 그러지 못한 점이 아쉽다. 추후에는 개인 작업 진행을 조금 더 세심하게 살펴야 함을 깨달았다.  

### 12. 프로젝트 당시 고민했던 부분
**1. to_Char이용해서 세자리 수 , 를 넣어서 표현할 때 Lecture DAO의  필드 price의 데이터 타입**
    <br>- to_char로 표현한 값을 String으로 읽어왔기에 price 필드의 데이터 타입을 String으로 변경했다. 그러나 실제 테이블에서 price의 데이터 타입은 NUMBER로 지정했기에 vo에서도 int로 설정해야 한다. 이를 어떻게 처리할지 고민 중이다.

**2. Eclipse와 Oracle DB에서 데이터 타입의 차이** 
   <br>- Number vs Integer= int
        <br>: 이클립스의 eXERD를 이용하여 DB 모델링을 작성하면 정수의 데이터 타입이 integer로 잡힌다. 그러나 실제 우리가 사용할 오라클 DB에서는 integer를 잘 사용하지 않으며, 사용 시 자체적으로 NUMBER 타입으로 변환한다. 따라서 회의 후, DB 모델링 작성 시 정수형 데이터 타입은 NUMBER로 통일했다.
