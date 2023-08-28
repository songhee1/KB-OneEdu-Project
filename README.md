

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
    

### 10. 프로젝트 소스 코드와 출력결과

**(1) DAO와 DAOImpl**

- DAO 소스 코드
    
    ```java
    package com.edu.dao;
    
    import java.sql.Connection;
    import java.sql.PreparedStatement;
    import java.sql.ResultSet;
    import java.sql.SQLException;
    import java.util.ArrayList;
    
    import com.edu.vo.Lecture;
    import com.edu.vo.Student;
    import com.edu.vo.Teacher;
    import com.edu.vo.User;
    
    public interface EduDAO {
    
    	//공통 커넥션 연결부
    	public Connection getConnection() throws SQLException;
    	
    	// 존재여부 확인
    	//private boolean studentIdExist(int id);
    	//private boolean teacherIdExist(int id);
    	//private boolean lectureIdExist(int id);
    
    	//close 메서드
    	public void closeAll(ResultSet rs, PreparedStatement ps, Connection conn) throws Exception;
    	public void closeAll(PreparedStatement ps, Connection conn) throws Exception;
    
    	//**공통 기능** (가빈)
    	public ArrayList<User> findAllTeacher() throws Exception;  //선생님 전체 목록 조회
    	public ArrayList<User> findTeacherBySubject(String subject) throws Exception; //과목별 선생님 전체 목록 조회
    	public ArrayList<Lecture> findLectureByTeacher(int teacherId) throws Exception; //선생님 id로 강의 목록 조회
    	public Lecture findLectureById(int lectureId) throws Exception; // 강의명 id로 강의 조회
    	public ArrayList<Lecture> findBestLectures() throws Exception; // 인기 강의 목록 조회
    	//공통 기능 전부 : throw IdNotFoundException -> IdExist 메서드 호출 후 존재하지 않으면 예외 
    
    	//**관리자** (영욱)
    	public void addTeacher(Teacher teacher) throws Exception; 
    	// 선생님 등록 -> 이메일이 동일하면 throw AlreadyExistException 
    	
    	public void updateTeacher(Teacher teacher) throws Exception; // 선생님 변경
    	public void deleteTeacher(int teacherId) throws Exception; // 선생님 삭제
    	//위 두개 메서드 전부 : throw IdNotFoundException -> IdExist 메서드 호출 후 존재하지 않으면 예외 
    
    	//**강의자** (송희)
    	public void addLecture(Lecture lecture) throws Exception; 
    	
    	public void updateLecture(Lecture lecture) throws Exception;
    	//throw IdNotFoundException
    	
    
    	//**수강자**
    	//(송희)
    	public ArrayList<Student> getAllStudents() throws Exception;
    	public String getStudentLectures(int studentId) throws Exception;
    	public ArrayList<Lecture> getAllMyLecture(int studentId) throws Exception; // id로 수강자 강의 목록조회
    	// throw IdNotFoundException
    
    	public void applyLecture(int studentId, Lecture lecture) throws Exception; 
    	//수강자 강의 목록에 강의 추가 -> getAllMyLecture 메서드 호출해서 강의 목록 출력
    	// throw AlreadyExistException 
    
    	public void cancleLecture(int studentId, Lecture lecture) throws Exception; // 수강자 강의 목록에서 강의 삭제
    	// throw IdNotFoundException
    
    	//(영욱)
    	public boolean likePossible(int studentId, int lectureId) throws Exception; // 수강자가 강의 좋아요 가능 여부 확인
    	// throw IdNotFoundException( 수강자 id랑 강의 id 둘다 확인)
    
    	public void likeLecture(int studentId, int lectureId) throws Exception; // 강의 id로 좋아요 표시
    	// likePossible 호출해서 true 이면 likeLecture 호출
    	// likePossible 호출해서 false이면 메서드 나가기
    
    	//public boolean discountPossible(int studentId, int teacherId);
    	// 선생님 강의를 수강자가 3개 이상 수강 중이면 강의 할인
    	// throw IdNotFoundException
    	
    	public int discountLecture(String subject, int discount) throws Exception;
    	//특정 subject의 가격 총 합에 할인율을 적용하여 패키지 가격을 알려준다.
    	//SELECT SUM(price) FROM lecture WHERE subject='수학';
    	
    }
    ```
    
- DAOImpl 소스코드
    
    ```java
    package com.edu.dao.impl;
    
    import java.sql.Connection;
    import java.sql.DriverManager;
    import java.sql.PreparedStatement;
    import java.sql.ResultSet;
    import java.sql.SQLException;
    import java.util.ArrayList;
    
    import com.edu.dao.EduDAO;
    import com.edu.exception.AlreadyExistException;
    import com.edu.exception.IdNotFoundException;
    import com.edu.vo.Lecture;
    import com.edu.vo.Teacher;
    import com.edu.vo.User;
    
    import config.ServerInfo;
    
    public class EduDAOImpl implements EduDAO {
    
    	private static EduDAOImpl dao = new EduDAOImpl();
    	
    	private EduDAOImpl() {
    		System.out.println("EduDAOImpl Creating...Using Singletone");
    	}
    	public static EduDAOImpl getInstance() {
    		return dao;
    	}
    	
    	@Override
    	public Connection getConnection() throws SQLException {
    		Connection conn = DriverManager.getConnection(ServerInfo.URL, ServerInfo.USER, ServerInfo.PASSWORD);
    		System.out.println("DB Connect...");
    		return conn;
    	}
    	
    	private boolean teacherIdExist(int id, Connection conn) throws SQLException {
    		String query = "SELECT teacher_id FROM teacher WHERE teacher_id=?";
    		PreparedStatement ps = conn.prepareStatement(query);
    		ps.setInt(1, id);
    		ResultSet rs = ps.executeQuery();
    		return rs.next();
    	}
    	
    	private boolean lectureIdExist(int id, Connection conn) throws SQLException {
    		String query = "SELECT lecture_id FROM lecture WHERE lecture_id=?";
    		PreparedStatement ps = conn.prepareStatement(query);
    		ps.setInt(1, id);
    		ResultSet rs = ps.executeQuery();
    		return rs.next();
    	}
    	
    	//가빈 코드
    	private boolean lectureSubjectExist(String subject,Connection conn)throws SQLException{
            PreparedStatement ps = null;
            ResultSet rs = null;
    
            String query = "SELECT subject FROM lecture WHERE subject=?";
            ps = conn.prepareStatement(query);
            ps.setString(1, subject);
            rs = ps.executeQuery();
            return rs.next();
        }
    	
    	//송희 코드
    	private boolean studentIdExist(int id, Connection conn) throws SQLException {
            String query = "SELECT STUDENT_ID FROM STUDENT WHERE STUDENT_ID = ?";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            
            boolean flag=  rs.next();
            System.out.println("수강자 아이디 조회결과 :  "+ flag);
            return flag;
        }
    	
    	private boolean learningIdExist(int lectureId, int studentId, Connection conn) throws SQLException {
            String query = "SELECT DISTINCT student_id FROM learning WHERE student_id = ? AND lecture_id = ?";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, studentId);
            ps.setInt(2, lectureId);
            ResultSet rs = ps.executeQuery();
            
            boolean flag=  rs.next();
            System.out.println("교육 테이블 아이디 조회결과 :  "+ flag);
            return flag;
        }
    	
    	private boolean learningIdExist(int studentId, Connection conn) throws SQLException {
            String query = "SELECT DISTINCT student_id FROM learning WHERE student_id = ?";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, studentId);
            ResultSet rs = ps.executeQuery();
            
            boolean flag=  rs.next();
            System.out.println("교육 테이블 아이디 조회결과 :  "+ flag);
            return flag;
        }
    
    	@Override
    	public void closeAll(ResultSet rs, PreparedStatement ps, Connection conn) throws Exception {
    		if(rs!=null) rs.close();
    		closeAll(ps, conn);
    	}
    
    	@Override
    	public void closeAll(PreparedStatement ps, Connection conn) throws Exception {
    		if(ps!=null) ps.close();
    		if(conn!=null) conn.close();
    	}
    
    	/////////////////////////// 공통 기능 //////////////////////////////
    	@Override
    	public ArrayList<User> findAllTeacher() throws Exception{
    	    Connection conn = null;
    	    PreparedStatement ps = null;
    	    ResultSet rs = null;
    	    
    	    ArrayList<User> list = new ArrayList<User>();
    	    try {
    	        conn = getConnection();
    	        String query ="SELECT teacher_id, name, email,subject FROM teacher";
    	        ps = conn.prepareStatement(query);
    	        rs = ps.executeQuery();
    	        
    	        while(rs.next()){
    	            list.add(new Teacher(rs.getInt("teacher_id"), 
    	                    rs.getString("name"), 
    	                    rs.getString("email"),
    	                    rs.getString("subject")
    	                    ));
    	        }
    	        
    	    }finally {
    	        closeAll(rs, ps, conn);
    	    }
    	    return list;
    	}
    	
    	@Override
    	public ArrayList<User> findTeacherBySubject(String subject) throws Exception {
    	    Connection conn = null;
    	    PreparedStatement ps = null;
    	    ResultSet rs = null;
    	    
    	    ArrayList<User> list = new ArrayList<User>();
    	    try {
    	        conn = getConnection();
    	        if(lectureSubjectExist(subject,conn)) {
    	            String query ="SELECT teacher_id, name, email,subject FROM teacher WHERE subject=?";
    	            ps = conn.prepareStatement(query);
    	            ps.setString(1, subject);
    	            rs = ps.executeQuery();
    	            
    	            while(rs.next()){
    	                list.add(new Teacher(rs.getInt("teacher_id"), 
    	                        rs.getString("name"), 
    	                        rs.getString("email"),
    	                        rs.getString("subject")
    	                        ));
    	            }
    	        }else {
    	            throw new IdNotFoundException("해당 과목을 담당하는 선생님이 없습니다.");
    	        }
    	        
    	    }finally {
    	        closeAll(rs, ps, conn);
    	    }
    	    return list;
    	}
    	
    	@Override
    	public ArrayList<Lecture> findLectureByTeacher(int teacherId) throws Exception {
    	    Connection conn = null;
    	    PreparedStatement ps = null;
    	    ResultSet rs = null;
    	    
    	    ArrayList<Lecture> list = new ArrayList<Lecture>();
    	    
    	    try {
    	        conn = getConnection();
    	        if(teacherIdExist(teacherId,conn)) {
    	            String query ="SELECT lecture_id,name,subject,likes,to_char(price,'9,999,999') FROM lecture WHERE lecture_id in (SELECT lecture_id FROM education where teacher_id=?)";
    	            ps = conn.prepareStatement(query);
    	            ps.setInt(1, teacherId);
    	            rs = ps.executeQuery();
    	            
    	            while(rs.next()) {
    	                list.add(new Lecture(rs.getInt("lecture_id"), 
    	                        rs.getString("name"), 
    	                        rs.getString("subject"),
    	                        rs.getInt("likes"),
    	                        rs.getString("to_char(price,'9,999,999')")
    	                        ));
    	            }
    	        }else {
    	            throw new IdNotFoundException("등록된 선생님이 아닙니다.");
    	        }
    
    	    }finally {
    	        closeAll(rs, ps, conn);
    	    }
    	    return list;
    	}
    	
    	@Override
    	public Lecture findLectureById(int lectureId) throws Exception  {
    	    Connection conn = null;
    	    PreparedStatement ps = null;
    	    ResultSet rs = null;
    
    	    Lecture lecture = new Lecture();
    	    try {
    	        conn = getConnection();
    	        if(lectureIdExist(lectureId,conn)) {
    	            String query ="SELECT lecture_id, name,subject,likes,to_char(price,'9,999,999') FROM lecture WHERE lecture_id=?";
    	            ps = conn.prepareStatement(query);
    	            ps.setInt(1, lectureId);
    	            rs = ps.executeQuery();
    	            
    	            if(rs.next()){
    	                lecture.setId(lectureId);
    	                lecture.setName(rs.getString("name"));
    	                lecture.setSubject(rs.getString("subject"));
    	                lecture.setLikes( rs.getInt("likes"));
    	                lecture.setPrice(rs.getString("to_char(price,'9,999,999')"));
    	            }
    	        }else {
    	            throw new IdNotFoundException("존재하지 않는 강의입니다.");
    	        }
    	        
    	    }finally {
    	        closeAll(rs, ps, conn);
    	    }
    	    return lecture;
    	}
    	
    	@Override
    	public ArrayList<Lecture> findBestLectures() throws Exception {
    	    Connection conn = null;
    	    PreparedStatement ps = null;
    	    ResultSet rs = null;
    	    
    	    ArrayList<Lecture> list = new ArrayList<Lecture>();
    	    
    	    try {
    	            conn = getConnection();
    	            String query ="SELECT lecture_id, name, subject, likes, to_char(price,'9,999,999')"
    	                    + "FROM (SELECT  lecture_id, name, subject, likes, price, "
    	                    + "ROW_NUMBER() OVER(ORDER BY likes DESC) AS ranking FROM lecture l) "
    	                    + "WHERE ranking <= 3";
    	            ps = conn.prepareStatement(query);
    	            rs = ps.executeQuery();
    	            
    	            while(rs.next()) {
    	                list.add(new Lecture(rs.getInt("lecture_id"), 
    	                        rs.getString("name"), 
    	                        rs.getString("subject"),
    	                        rs.getInt("likes"),
    	                        rs.getString("to_char(price,'9,999,999')")
    	                        ));
    	            }
    	    }finally {
    	        closeAll(rs, ps, conn);
    	    }
    	    return list;
    	}
    
    	/////////////////////////// 관리자 기능 (영욱) ///////////////////////
    	@Override
    	public void addTeacher(Teacher teacher) throws Exception {
    		Connection conn = null;
            PreparedStatement ps = null;
            try {
                conn = getConnection();
                if(!teacherIdExist(teacher.getId(), conn)) { //등록하려는 강의자가 아직 없으면
                    String query = "INSERT INTO teacher(teacher_id, name, email, subject) VALUES(seq_teacher.nextVal,?,?,?)";
                    ps=  conn.prepareStatement(query);
                    ps.setString(1, teacher.getName());
                    ps.setString(2, teacher.getEmail());
                    ps.setString(3, teacher.getSubject());
                    System.out.println(ps.executeUpdate()+" 명 INSERT 성공...addTeacher()..");
                }else {
                    throw new AlreadyExistException();
                }
            }finally {
                closeAll(ps, conn);
            }
    	}
    
    	@Override
    	public void updateTeacher(Teacher teacher) throws Exception {
    		Connection conn = null;
            PreparedStatement ps = null;
            try {
                conn = getConnection();
                String query = "UPDATE teacher SET name=?, email=?, subject=? WHERE teacher_id=?";
                ps = conn.prepareStatement(query);
                ps.setString(1, teacher.getName());
                ps.setString(2, teacher.getEmail());
                ps.setString(3, teacher.getSubject());
                ps.setInt(4, teacher.getId());
    
                int row = ps.executeUpdate();
                if(row==1)System.out.println(row+" 명 UPDATE OK...updateTeacher()...");
                else throw new IdNotFoundException("수정할 강의자가 없습니다");
            }finally {
                closeAll(ps, conn);
            }
    	}
    
    	@Override
    	public void deleteTeacher(int teacherId) throws Exception {
    		Connection conn = null;
            PreparedStatement ps = null;
            try {
                conn = getConnection();
                if(teacherIdExist(teacherId, conn)) { //해당 강의자 존재하면 삭제
                    String query = "DELETE teacher WHERE teacher_id=?";
                    ps = conn.prepareStatement(query);
                    ps.setInt(1, teacherId);
    
                    System.out.println(ps.executeUpdate()+" 명 DELETE OK...deleteTeacher()..");
                }else {
                    throw new IdNotFoundException("삭제할 강의자가 없습니다 ");
                }
            }finally {
                closeAll(ps, conn);
            }
    	}
    	/////////////////////////// 관리자 기능 (영욱) ///////////////////////
    
    	@Override
        public void addLecture(Lecture lecture) throws Exception {
            Connection conn = null;
            PreparedStatement ps = null;
            
            try {
                
                conn = getConnection();
                String query = "INSERT INTO lecture(lecture_id, name, subject, likes, price) VALUES (seq_lecture.nextVal, ?, ?, ?, ?)";
                ps = conn.prepareStatement(query);
                ps.setString(1, lecture.getName());
                ps.setString(2, lecture.getSubject());
                ps.setInt(3, lecture.getLikes());
                ps.setString(4, lecture.getPrice());
                
                System.out.println(ps.executeUpdate()+ "개 강의 등록되었습니다.");
                
            }finally {
                closeAll(ps, conn);
            }
            
        }
    	
    	@Override
        public void updateLecture(Lecture lecture) throws Exception {
            Connection conn = null;
            PreparedStatement ps = null;
            
            try {
                conn = getConnection();
                if(lectureIdExist(lecture.getId(), conn)) {
                    
                    String query = "UPDATE lecture SET name = ?, subject = ?, price = ? WHERE lecture_id = ?";
                    ps = conn.prepareStatement(query);
                    ps.setString(1, lecture.getName());
                    ps.setString(2, lecture.getSubject());
                    ps.setString(3, lecture.getPrice());
                    ps.setInt(4, lecture.getId());
                    
                    System.out.println(ps.executeUpdate()+ "개 강의가 수정되었습니다.");
                    
                }else {
                    throw new IdNotFoundException("존재하는 lecture id가 없습니다.");
                }
                
            }finally {
                closeAll(ps, conn);
            }
            
        }
    	
    	@Override
        public ArrayList<Lecture> getAllMyLecture(int studentId) throws Exception {
            
            Connection conn = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            
            ArrayList<Lecture> list = new ArrayList<>();
            
            try {
                conn = getConnection();
                
                
                if(studentIdExist(studentId, conn)){
                    if(learningIdExist(studentId, conn)) {
                        conn = getConnection();
                        String query = "SELECT lecture.lecture_id AS id, lecture.name AS name, lecture.subject AS subject, lecture.likes AS likes, lecture.price AS price" +
                                " FROM learning, lecture" +
                                " WHERE learning.lecture_id = lecture.lecture_id AND learning.student_id = ?";
                        ps = conn.prepareStatement(query);
                        ps.setInt(1, studentId);
                        
                        rs = ps.executeQuery();
                        
                        while(rs.next()) {
                            list.add(new Lecture(
                                    rs.getInt("id"),
                                    rs.getString("name"), 
                                    rs.getString("subject"), 
                                    rs.getInt("likes"), 
                                    rs.getString("price")));
                        }
                    }
                }else{
                    throw new IdNotFoundException("존재하는 student id가 없습니다.");
                }
                
                
            }finally {
                closeAll(rs, ps, conn);
            }
            
            return list;
        }
    	
    	@Override
        public void applyLecture(int studentId, Lecture lecture) throws Exception  {
            Connection conn = null;
            PreparedStatement ps = null;
            System.out.println("학생아이디 "+studentId);
            try {
                conn = getConnection();
                if(studentIdExist(studentId, conn)) {
                    if(!learningIdExist(lecture.getId(), studentId, conn)) {
                        conn = getConnection();
                        String query = "INSERT INTO learning(student_id, lecture_id, flag) VALUES(?, ?, ?)";
                        ps = conn.prepareStatement(query);
                        ps.setInt(1, studentId);
                        ps.setInt(2, lecture.getId());
                        ps.setInt(3, 0);
                        
                        System.out.println(ps.executeUpdate()+"개 강의가 지원되었습니다.");
                    }else {
                        System.out.println("이미 수강신청한 이력이 존재합니다.");
                    }
                }else {
                    throw new IdNotFoundException("존재하는 student id가 없습니다.");
                }
                
            }finally {
                closeAll(ps, conn);
            }
            
            
        }
    	
    	@Override
        public void cancleLecture(int studentId, Lecture lecture) throws Exception {
            Connection conn = null;
            PreparedStatement ps = null;
            
            try {
                conn = getConnection();
                if(learningIdExist(lecture.getId(),studentId, conn)) {
                    conn = getConnection();
                    String query = "DELETE learning WHERE student_id = ? AND lecture_id = ?";
                    ps = conn.prepareStatement(query);
                    ps.setInt(1, studentId);
                    ps.setInt(2, lecture.getId());
                    
                    System.out.println(ps.executeUpdate()+"개 강의가 취소되었습니다.");
                    getAllMyLecture(studentId);
                    
                }else {
                    throw new IdNotFoundException("존재하는 student id가 없습니다.");
                }
                
            }finally {
                closeAll(ps, conn);
            }
            
        }
    
    	/////////////////////////// 관리자 기능 (영욱) ///////////////////////
    	@Override
    	public boolean likePossible(int studentId, int lectureId) throws Exception {
    		//강의-학생 -> learning
    		//만약 learning의 flag 값이 0이면 -> 좋아요 누르기 가능, true 리턴
    		//만약 learning의 flag 값이 1이면 -> 좋아요 누르기 불가능, false 리턴
    		boolean flag = false;
    		
    		Connection conn = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            try {
            	conn = getConnection();
            	String query = "SELECT flag FROM learning WHERE student_id=? and lecture_id=?";
            	ps = conn.prepareStatement(query);
            	ps.setInt(1, studentId);
            	ps.setInt(2, lectureId);
            	rs = ps.executeQuery();
            	if(rs.next()) {
            		if(rs.getInt("flag")==0)
            			flag = true;
            	}
            } finally {
            	closeAll(rs, ps, conn);
            }
    		
    		return flag;
    	}
    	// 수강자가 강의 좋아요 가능 여부 확인
    	// throw IdNotFoundException( 수강자 id랑 강의 id 둘다 확인)
    
    	private void setFlag(int studentId, int lectureId) throws Exception {
    		//learning 테이블의 flag 0->1
    		Connection conn = null;
    		PreparedStatement ps = null;
    		try {
    			conn = getConnection();
    		    String query = "UPDATE learning SET flag=? WHERE student_id=? and lecture_id=?";
    		    ps = conn.prepareStatement(query);
    		    ps.setInt(1, 1);
    		    ps.setInt(2, studentId);
    		    ps.setInt(3, lectureId);
    
    		    int row = ps.executeUpdate();
    		    if(row==1)System.out.println("flag 변경 성공");
    		    else throw new IdNotFoundException("flag 변경할 수 없습니다");
    	   }finally {
    		   closeAll(ps, conn);
    		   }
    	}
    	
    	//특정 강의의 인기도 가져오기
    	public int getLikes(int lectureId) throws Exception {
    		Connection conn = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            int likes = 0;
            try {
            	conn = getConnection();
                if(lectureIdExist(lectureId, conn)) { //강의 존재하면 인기도 가져오기
                	String query = "SELECT likes FROM lecture WHERE lecture_id=?";
                	ps = conn.prepareStatement(query);
                	ps.setInt(1, lectureId);
                	rs = ps.executeQuery();
                	if(rs.next()) {
                		likes = rs.getInt("likes");
                	}
                }else {
                    throw new IdNotFoundException("인기도를 가져올 강의가 없습니다 ");
                }
            } finally {
            	closeAll(rs, ps, conn);
            }
    		return likes;
    	}
    	
    	@Override
    	public void likeLecture(int studentId, int lectureId) throws Exception {
    		
    		if(!likePossible(studentId, lectureId))
    			return; //좋아요 누르기 불가능하면 끝
    		
    		int nowLikes = getLikes(lectureId);
    		//현재 인기도+1 -> db에 업데이트
    		Connection conn = null;
            PreparedStatement ps = null;
            try {
                conn = getConnection();
                String query = "UPDATE lecture SET likes=? WHERE lecture_id=?";
                ps = conn.prepareStatement(query);
                ps.setInt(1, nowLikes+1);
                ps.setInt(2, lectureId);
    
                int row = ps.executeUpdate();
                if(row==1)System.out.println("인기도 올리기 성공");
                else throw new IdNotFoundException("인기도 올릴 강의가 없습니다");
            }finally {
                closeAll(ps, conn);
            }
            
            //flag 0->1로
            setFlag(studentId, lectureId);
    	}
    
    	@Override
    	public int discountLecture(String subject, int discount) throws Exception {
    		//특정 subject의 가격 총 합에 할인율을 적용하여 패키지 가격을 알려준다.
    		//SELECT SUM(price) FROM lecture WHERE subject='수학';
    		Connection conn = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            int total = 0;
            try {
            	conn = getConnection();
                String query = "SELECT SUM(price) FROM lecture WHERE subject=?";
                ps = conn.prepareStatement(query);
                ps.setString(1, subject);
                rs = ps.executeQuery();
                if(rs.next()) {
                	total = rs.getInt("SUM(price)");
                }
            } finally {
            	closeAll(rs, ps, conn);
            }
    		return total/discount;
    	}
    
    	
    	/////////////////////////// 관리자 기능 (영욱) ///////////////////////
    }
    ```
    

**(2) 선생님 전체 조회**

- 소스 코드
    
    ```java
    @Override
    public ArrayList<User> findAllTeacher() throws Exception{
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        ArrayList<User> list = new ArrayList<User>();
        try {
            conn = getConnection();
            String query ="SELECT teacher_id, name, email,subject FROM teacher";
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            
            while(rs.next()){
                list.add(new Teacher(rs.getInt("teacher_id"), 
                        rs.getString("name"), 
                        rs.getString("email"),
                        rs.getString("subject")
                        ));
            }
            
        }finally {
            closeAll(rs, ps, conn);
        }
        return list;
    }
    ```
    
- 결과

  	<p align="center">
		<img src="https://github.com/KB-MiniProject-OneEdu/KB-OneEdu-Project/assets/96781855/2ec14c79-cd88-40d6-b7ab-f512070b7e11" width="500px;" alt="최송희"/>
	</p>

    
    

**(3) 과목별 선생님 조회**

- 소스코드
    
    ```java
    @Override
    public ArrayList<User> findTeacherBySubject(String subject) throws Exception {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        ArrayList<User> list = new ArrayList<User>();
        try {
            conn = getConnection();
            if(lectureSubjectExist(subject,conn)) {
                String query ="SELECT teacher_id, name, email,subject FROM teacher WHERE subject=?";
                ps = conn.prepareStatement(query);
                ps.setString(1, subject);
                rs = ps.executeQuery();
                
                while(rs.next()){
                    list.add(new Teacher(rs.getInt("teacher_id"), 
                            rs.getString("name"), 
                            rs.getString("email"),
                            rs.getString("subject")
                            ));
                }
            }else {
                throw new IdNotFoundException("해당 과목을 담당하는 선생님이 없습니다.");
            }
            
        }finally {
            closeAll(rs, ps, conn);
        }
        return list;
    }
    ```
    
- 결과

     <p align="center">
		<img src="https://github.com/KB-MiniProject-OneEdu/KB-OneEdu-Project/assets/96781855/13a513bb-376f-4ca1-8199-302c789b7b7c" width="500px;" alt="최송희"/>
	</p>
 
    

**(4) 선생님별 강의 조회**

- 소스코드
    
    ```java
    @Override
    public ArrayList<Lecture> findLectureByTeacher(int teacherId) throws Exception {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        ArrayList<Lecture> list = new ArrayList<Lecture>();
        
        try {
            conn = getConnection();
            if(teacherIdExist(teacherId,conn)) {
                String query ="SELECT lecture_id,name,subject,likes,to_char(price,'9,999,999') FROM lecture WHERE lecture_id in (SELECT lecture_id FROM education where teacher_id=?)";
                ps = conn.prepareStatement(query);
                ps.setInt(1, teacherId);
                rs = ps.executeQuery();
                
                while(rs.next()) {
                    list.add(new Lecture(rs.getInt("lecture_id"), 
                            rs.getString("name"), 
                            rs.getString("subject"),
                            rs.getInt("likes"),
                            rs.getString("to_char(price,'9,999,999')")
                            ));
                }
            }else {
                throw new IdNotFoundException("등록된 선생님이 아닙니다.");
            }
    
        }finally {
            closeAll(rs, ps, conn);
        }
        return list;
    }
    ```



    
- 결과

  	<p align="center">
		<img src="https://github.com/KB-MiniProject-OneEdu/KB-OneEdu-Project/assets/96781855/543f50f9-129f-4578-90c0-656673bcb679" width="500px;" alt="최송희"/>
	</p>
 

**(5) 강의 id로 강의 조회**

- 소스코드
    
    ```java
    @Override
    public Lecture findLectureById(int lectureId) throws Exception  {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
    
        Lecture lecture = new Lecture();
        try {
            conn = getConnection();
            if(lectureIdExist(lectureId,conn)) {
                String query ="SELECT lecture_id, name,subject,likes,to_char(price,'9,999,999') FROM lecture WHERE lecture_id=?";
                ps = conn.prepareStatement(query);
                ps.setInt(1, lectureId);
                rs = ps.executeQuery();
                
                if(rs.next()){
                    lecture.setId(lectureId);
                    lecture.setName(rs.getString("name"));
                    lecture.setSubject(rs.getString("subject"));
                    lecture.setLikes( rs.getInt("likes"));
                    lecture.setPrice(rs.getString("to_char(price,'9,999,999')"));
                }
            }else {
                throw new IdNotFoundException("존재하지 않는 강의입니다.");
            }
            
        }finally {
            closeAll(rs, ps, conn);
        }
        return lecture;
    }
    ```
    
- 결과
    
   <p align="center">
		<img src="https://github.com/KB-MiniProject-OneEdu/KB-OneEdu-Project/assets/96781855/9b13f195-23f5-4a43-a0cd-f5b69ae28e5a" width="500px;" alt="최송희"/>
	</p>
 
    

**(6) 인기 강의 목록 조회**

- 소스코드
    
    ```java
    @Override
    public ArrayList<Lecture> findBestLectures() throws Exception {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        ArrayList<Lecture> list = new ArrayList<Lecture>();
        
        try {
                conn = getConnection();
                String query ="SELECT lecture_id, name, subject, likes, to_char(price,'9,999,999')"
                        + "FROM (SELECT  lecture_id, name, subject, likes, price, "
                        + "ROW_NUMBER() OVER(ORDER BY likes DESC) AS ranking FROM lecture l) "
                        + "WHERE ranking <= 3";
                ps = conn.prepareStatement(query);
                rs = ps.executeQuery();
                
                while(rs.next()) {
                    list.add(new Lecture(rs.getInt("lecture_id"), 
                            rs.getString("name"), 
                            rs.getString("subject"),
                            rs.getInt("likes"),
                            rs.getString("to_char(price,'9,999,999')")
                            ));
                }
        }finally {
            closeAll(rs, ps, conn);
        }
        return list;
    }
    ```
    
- 결과
    
    <p align="center">
		<img src="https://github.com/KB-MiniProject-OneEdu/KB-OneEdu-Project/assets/96781855/7bef24ac-d19a-463c-a6e4-a5901ce651de" width="500px;" alt="최송희"/>
	</p>
    

**(7) 강의 정보 추가**

- 소스코드
    
    ```java
    @Override
    public void addLecture(Lecture lecture) throws Exception {
        Connection conn = null;
        PreparedStatement ps = null;
        
        try {
            
            conn = getConnection();
            String query = "INSERT INTO lecture(lecture_id, name, subject, likes, price) VALUES (seq_lecture.nextVal, ?, ?, ?, ?)";
            ps = conn.prepareStatement(query);
            ps.setString(1, lecture.getName());
            ps.setString(2, lecture.getSubject());
            ps.setInt(3, lecture.getLikes());
            ps.setString(4, lecture.getPrice());
            
            System.out.println(ps.executeUpdate()+ "개 강의 등록되었습니다.");
            
        }finally {
            closeAll(ps, conn);
        }
        
    }
    ```
    
- 결과
    
    <p align="center">
		<img src="https://github.com/KB-MiniProject-OneEdu/KB-OneEdu-Project/assets/96781855/ccd83e5c-3728-41a7-9104-542b6b828f8c" width="500px;" alt="최송희"/>
	</p>
    

**(8) 강의 정보 수정**

- 소스코드
    
    ```java
    @Override
    public void updateLecture(Lecture lecture) throws Exception {
        Connection conn = null;
        PreparedStatement ps = null;
        
        try {
            conn = getConnection();
            if(lectureIdExist(lecture.getId(), conn)) {
                
                String query = "UPDATE lecture SET name = ?, subject = ?, price = ? WHERE lecture_id = ?";
                ps = conn.prepareStatement(query);
                ps.setString(1, lecture.getName());
                ps.setString(2, lecture.getSubject());
                ps.setString(3, lecture.getPrice());
                ps.setInt(4, lecture.getId());
                
                System.out.println(ps.executeUpdate()+ "개 강의가 수정되었습니다.");
                
            }else {
                throw new IdNotFoundException("존재하는 lecture id가 없습니다.");
            }
            
        }finally {
            closeAll(ps, conn);
        }
        
    }
    ```
    
- 결과
    
  <p align="center">
		<img src="https://github.com/KB-MiniProject-OneEdu/KB-OneEdu-Project/assets/96781855/bf28cbd9-f101-4823-ac44-8303577b3f27" width="500px;" alt="최송희"/>
	</p>
    

**(9) 강의 수강 총액과 강의목록 조회**

- 소스코드
    
    ```java
    @Override
    	public ArrayList<Student> getAllStudents() throws Exception {
    		
    		Connection conn = null;
    		PreparedStatement ps = null;
    		ResultSet rs = null;
    		
    		ArrayList<Student> list = new ArrayList<Student>();
    		
    		try {
    			conn = getConnection();
    			
    			String query = "SELECT student_id, name, address, phone, email" +
    					" FROM student";
    			ps = conn.prepareStatement(query);
    			
    			rs = ps.executeQuery();
    			
    			while(rs.next()) {
    				list.add(new Student(rs.getInt("student_id"), 
    						rs.getString("name"), 
    						rs.getString("address"), 
    						rs.getString("phone"),
    						rs.getString("email")
    						));
    			}
    			
    		}finally {
    			closeAll(rs, ps, conn);
    		}
    		
    		return list;
    	}
    	
    	@Override
    	public String getStudentLectures(int studentId) throws Exception{
    		Connection conn = null;
    		PreparedStatement ps = null;
    		ResultSet rs = null;
    		
    		String sumPrice = "";
    		
    		try {
    			conn = getConnection();
    			
    			
    			if(studentIdExist(studentId, conn)){
    				if(learningIdExist(studentId, conn)) {
    					conn = getConnection();
    					String query = "SELECT TO_CHAR(SUM(price), 'FM999,999,999,999') AS price, id"
    							+ " FROM" 
    							+ " (SELECT lecture.name AS name, lecture.subject AS subject, lecture.likes AS likes, lecture.price AS price, learning.student_id AS id"
    							+ " FROM learning, lecture" 
    							+ " WHERE learning.lecture_id = lecture.lecture_id AND learning.student_id = ?)" 
    							+ " GROUP BY id";
    					ps = conn.prepareStatement(query);
    					ps.setInt(1, studentId);
    					
    					rs = ps.executeQuery();
    					
    					if(rs.next()) {
    						sumPrice = rs.getString("price");
    					}
    				}
    			}else{
    				throw new IdNotFoundException("존재하는 student id가 없습니다.");
    			}
    			
    			
    		}finally {
    			closeAll(rs, ps, conn);
    		}
    		
    		if(sumPrice.equals("")) {
    			sumPrice = "0";
    		}
    		
    		return sumPrice;
    	}
    	
    	@Override
        public ArrayList<Lecture> getAllMyLecture(int studentId) throws Exception {
            
            Connection conn = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            
            ArrayList<Lecture> list = new ArrayList<>();
            
            try {
                conn = getConnection();
                
                
                if(studentIdExist(studentId, conn)){
                    if(learningIdExist(studentId, conn)) {
                        conn = getConnection();
                        String query = "SELECT lecture.lecture_id AS id, lecture.name AS name, lecture.subject AS subject, lecture.likes AS likes, lecture.price AS price" +
                                " FROM learning, lecture" +
                                " WHERE learning.lecture_id = lecture.lecture_id AND learning.student_id = ?";
                        ps = conn.prepareStatement(query);
                        ps.setInt(1, studentId);
                        
                        rs = ps.executeQuery();
                        
                        while(rs.next()) {
                            list.add(new Lecture(
                                    rs.getInt("id"),
                                    rs.getString("name"), 
                                    rs.getString("subject"), 
                                    rs.getInt("likes"), 
                                    rs.getString("price")));
                        }
                    }
                }else{
                    throw new IdNotFoundException("존재하는 student id가 없습니다.");
                }
                
                
            }finally {
                closeAll(rs, ps, conn);
            }
            
            return list;
        }
    ```
    
- 결과
    
    <p align="center">
		<img src="https://github.com/KB-MiniProject-OneEdu/KB-OneEdu-Project/assets/96781855/24d2250e-1e0e-46b3-b21c-d26c3a8941b8" width="500px;" alt="최송희"/>
	</p>
  <p align="center">
		<img src="https://github.com/KB-MiniProject-OneEdu/KB-OneEdu-Project/assets/96781855/36d72b5f-244a-4807-95ff-d682fb982c57" width="500px;" alt="최송희"/>
	</p>
  <p align="center">
		<img src="https://github.com/KB-MiniProject-OneEdu/KB-OneEdu-Project/assets/96781855/d117e8b0-1c7f-438e-a451-72d725c38178" width="500px;" alt="최송희"/>
	</p>
    

**(10) 수강 신청**

- 소스코드
    
    ```java
    @Override
        public void applyLecture(int studentId, Lecture lecture) throws Exception  {
            Connection conn = null;
            PreparedStatement ps = null;
            System.out.println("학생아이디 "+studentId);
            try {
                conn = getConnection();
                if(studentIdExist(studentId, conn)) {
                    if(!learningIdExist(lecture.getId(), studentId, conn)) {
                        conn = getConnection();
                        String query = "INSERT INTO learning(student_id, lecture_id, flag) VALUES(?, ?, ?)";
                        ps = conn.prepareStatement(query);
                        ps.setInt(1, studentId);
                        ps.setInt(2, lecture.getId());
                        ps.setInt(3, 0);
                        
                        System.out.println(ps.executeUpdate()+"개 강의가 지원되었습니다.");
                    }else {
                        System.out.println("이미 수강신청한 이력이 존재합니다.");
                    }
                }else {
                    throw new IdNotFoundException("존재하는 student id가 없습니다.");
                }
                
            }finally {
                closeAll(ps, conn);
            }
            
            
        }
    ```
    
- 결과
    
     <p align="center">
		<img src="https://github.com/KB-MiniProject-OneEdu/KB-OneEdu-Project/assets/96781855/467cd674-e858-4eea-a1a1-6ed6804b42e5" width="500px;" alt="최송희"/>
	</p>
  <p align="center">
		<img src="https://github.com/KB-MiniProject-OneEdu/KB-OneEdu-Project/assets/96781855/605f71df-47e9-4f1a-badd-bf0d0f84a1b8" width="500px;" alt="최송희"/>
	</p>
    
    

**(11) 수강 철회**

- 소스코드
    
    ```java
    @Override
        public void cancleLecture(int studentId, Lecture lecture) throws Exception {
            Connection conn = null;
            PreparedStatement ps = null;
            
            try {
                conn = getConnection();
                if(learningIdExist(lecture.getId(),studentId, conn)) {
                    conn = getConnection();
                    String query = "DELETE learning WHERE student_id = ? AND lecture_id = ?";
                    ps = conn.prepareStatement(query);
                    ps.setInt(1, studentId);
                    ps.setInt(2, lecture.getId());
                    
                    System.out.println(ps.executeUpdate()+"개 강의가 취소되었습니다.");
                    getAllMyLecture(studentId);
                    
                }else {
                    throw new IdNotFoundException("존재하는 student id가 없습니다.");
                }
                
            }finally {
                closeAll(ps, conn);
            }
            
        }
    ```
    
- 결과
    
     <p align="center">
		<img src="https://github.com/KB-MiniProject-OneEdu/KB-OneEdu-Project/assets/96781855/f10619b5-fbb9-403e-9996-ca7dd3dd1ea1" width="500px;" alt="최송희"/>
	</p>
    

**(12) 강의자 추가**

- 소스코드
    
    ```java
    @Override
    	public void addTeacher(Teacher teacher) throws Exception {
    		Connection conn = null;
            PreparedStatement ps = null;
            try {
                conn = getConnection();
                if(!teacherIdExist(teacher.getId(), conn)) { //등록하려는 강의자가 아직 없으면
                    String query = "INSERT INTO teacher(teacher_id, name, email, subject) VALUES(seq_teacher.nextVal,?,?,?)";
                    ps=  conn.prepareStatement(query);
                    ps.setString(1, teacher.getName());
                    ps.setString(2, teacher.getEmail());
                    ps.setString(3, teacher.getSubject());
                    System.out.println(ps.executeUpdate()+" 명 INSERT 성공...addTeacher()..");
                }else {
                    throw new AlreadyExistException();
                }
            }finally {
                closeAll(ps, conn);
            }
    	}
    ```
    
- 결과
    
    <p align="center">
		<img src="https://github.com/KB-MiniProject-OneEdu/KB-OneEdu-Project/assets/96781855/188de378-7113-4d5a-bda8-09558867430e" width="500px;" alt="최송희"/>
	</p>
    

**(13) 강의자 정보 수정**

- 소스코드
    
    ```java
    @Override
    	public void updateTeacher(Teacher teacher) throws Exception {
    		Connection conn = null;
            PreparedStatement ps = null;
            try {
                conn = getConnection();
                String query = "UPDATE teacher SET name=?, email=?, subject=? WHERE teacher_id=?";
                ps = conn.prepareStatement(query);
                ps.setString(1, teacher.getName());
                ps.setString(2, teacher.getEmail());
                ps.setString(3, teacher.getSubject());
                ps.setInt(4, teacher.getId());
    
                int row = ps.executeUpdate();
                if(row==1)System.out.println(row+" 명 UPDATE OK...updateTeacher()...");
                else throw new IdNotFoundException("수정할 강의자가 없습니다");
            }finally {
                closeAll(ps, conn);
            }
    	}
    ```
    
- 결과
    
    <p align="center">
		<img src="https://github.com/KB-MiniProject-OneEdu/KB-OneEdu-Project/assets/96781855/36b03abd-407f-4539-a50f-16aa1fd07d3e" width="500px;" alt="최송희"/>
	</p>
    

**(14) 강의자 정보 삭제**

- 소스코드
    
    ```java
    @Override
    	public void deleteTeacher(int teacherId) throws Exception {
    		Connection conn = null;
            PreparedStatement ps = null;
            try {
                conn = getConnection();
                if(teacherIdExist(teacherId, conn)) { //해당 강의자 존재하면 삭제
                    String query = "DELETE teacher WHERE teacher_id=?";
                    ps = conn.prepareStatement(query);
                    ps.setInt(1, teacherId);
    
                    System.out.println(ps.executeUpdate()+" 명 DELETE OK...deleteTeacher()..");
                }else {
                    throw new IdNotFoundException("삭제할 강의자가 없습니다 ");
                }
            }finally {
                closeAll(ps, conn);
            }
    	}
    ```
    
- 결과
    
     <p align="center">
		<img src="https://github.com/KB-MiniProject-OneEdu/KB-OneEdu-Project/assets/96781855/fed98354-edbe-498a-8d1b-84d1cc41cf82" width="500px;" alt="최송희"/>
	</p>
    

**(15) 추천수 증가**

- 소스코드
    
    ```java
    @Override
    public boolean likePossible(int studentId, int lectureId) throws Exception {
    	//강의-학생 -> learning
    	//만약 learning의 flag 값이 0이면 -> 좋아요 누르기 가능, true 리턴
    	//만약 learning의 flag 값이 1이면 -> 좋아요 누르기 불가능, false 리턴
    	boolean flag = false;
    	
    	Connection conn = null;
          PreparedStatement ps = null;
          ResultSet rs = null;
          try {
          	conn = getConnection();
          	String query = "SELECT flag FROM learning WHERE student_id=? and lecture_id=?";
          	ps = conn.prepareStatement(query);
          	ps.setInt(1, studentId);
          	ps.setInt(2, lectureId);
          	rs = ps.executeQuery();
          	if(rs.next()) {
          		if(rs.getInt("flag")==0)
          			flag = true;
          	}
          } finally {
          	closeAll(rs, ps, conn);
          }
    	
    	return flag;
    }
    // 수강자가 강의 좋아요 가능 여부 확인
    // throw IdNotFoundException( 수강자 id랑 강의 id 둘다 확인)
    
    private void setFlag(int studentId, int lectureId) throws Exception {
    	//learning 테이블의 flag 0->1
    	Connection conn = null;
    	PreparedStatement ps = null;
    	try {
    		conn = getConnection();
    	    String query = "UPDATE learning SET flag=? WHERE student_id=? and lecture_id=?";
    	    ps = conn.prepareStatement(query);
    	    ps.setInt(1, 1);
    	    ps.setInt(2, studentId);
    	    ps.setInt(3, lectureId);
    
    	    int row = ps.executeUpdate();
    	    if(row==1)System.out.println("flag 변경 성공");
    	    else throw new IdNotFoundException("flag 변경할 수 없습니다");
       }finally {
    	   closeAll(ps, conn);
    	   }
    }
    
    //특정 강의의 인기도 가져오기
    public int getLikes(int lectureId) throws Exception {
    	Connection conn = null;
          PreparedStatement ps = null;
          ResultSet rs = null;
          int likes = 0;
          try {
          	conn = getConnection();
              if(lectureIdExist(lectureId, conn)) { //강의 존재하면 인기도 가져오기
              	String query = "SELECT likes FROM lecture WHERE lecture_id=?";
              	ps = conn.prepareStatement(query);
              	ps.setInt(1, lectureId);
              	rs = ps.executeQuery();
              	if(rs.next()) {
              		likes = rs.getInt("likes");
              	}
              }else {
                  throw new IdNotFoundException("인기도를 가져올 강의가 없습니다 ");
              }
          } finally {
          	closeAll(rs, ps, conn);
          }
    	return likes;
    }
    
    @Override
    public void likeLecture(int studentId, int lectureId) throws Exception {
    	
    	if(!likePossible(studentId, lectureId))
    		return; //좋아요 누르기 불가능하면 끝
    	
    	int nowLikes = getLikes(lectureId);
    	//현재 인기도+1 -> db에 업데이트
    	Connection conn = null;
          PreparedStatement ps = null;
          try {
              conn = getConnection();
              String query = "UPDATE lecture SET likes=? WHERE lecture_id=?";
              ps = conn.prepareStatement(query);
              ps.setInt(1, nowLikes+1);
              ps.setInt(2, lectureId);
    
              int row = ps.executeUpdate();
              if(row==1)System.out.println("인기도 올리기 성공");
              else throw new IdNotFoundException("인기도 올릴 강의가 없습니다");
          }finally {
              closeAll(ps, conn);
          }
          
          //flag 0->1로
          setFlag(studentId, lectureId);
    }
    ```
    
- 결과
    
     <p align="center">
		<img src="https://github.com/KB-MiniProject-OneEdu/KB-OneEdu-Project/assets/96781855/0cf3a062-1acf-40bd-a558-aa16ee0b74f0" width="500px;" alt="최송희"/>
	</p>
    

**(16) 특정 강의 과목 할인가**

- 소스코드
    
    ```java
    @Override
    public int discountLecture(String subject, int discount) throws Exception {
    	//특정 subject의 가격 총 합에 할인율을 적용하여 패키지 가격을 알려준다.
    	//SELECT SUM(price) FROM lecture WHERE subject='수학';
    	Connection conn = null;
          PreparedStatement ps = null;
          ResultSet rs = null;
          int total = 0;
          try {
          	conn = getConnection();
              String query = "SELECT SUM(price) FROM lecture WHERE subject=?";
              ps = conn.prepareStatement(query);
              ps.setString(1, subject);
              rs = ps.executeQuery();
              if(rs.next()) {
              	total = rs.getInt("SUM(price)");
              }
          } finally {
          	closeAll(rs, ps, conn);
          }
    	return total/discount;
    }
    ```
    
- 결과

 <p align="center">
		<img src="https://github.com/KB-MiniProject-OneEdu/KB-OneEdu-Project/assets/96781855/204c26b8-4558-42fa-a824-191ddfae471c" width="500px;" alt="최송희"/>
	</p>



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
