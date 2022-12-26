package ch04.com.dao;

public class Person { // serializable 인터페이스 생략가능, 하지만!
	// 로컬이나, 네트워크를 통해서 전달 시에는 구현해서 사용할 것 권장
	// 공식 문서 입장
	
	// 기본값 -> 더미 값.
	// 18장 프로젝트 살펴보면, 이상한점
	// 샘플로 등록한 상품의 3개가, 더미 객체로 만들어졌음.
	// 디비 서버에 제품을 등록해서, 가져와서 사용함(디비에서 값을 객체에 담아서, 뷰에 전달해서 사용)
	
	// 수업시에 요청하는 사항들
	// 프로젝트 가져오기 연습시, 패키지 버전으로 열어보세요!
	// 다른 클론 코딩 열어보기를 연습해보세요!
	// 따라해보기 :)
	private int id = 20181004;
	private String name = "이상용 dummy";

	public Person() {
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}