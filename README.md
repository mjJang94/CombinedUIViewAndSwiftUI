# UIView와 SwiftUI 통합
- SwiftUI 코드를 가진 앱은 ios13 이후 버전만 실행된다. 새로운 프로젝트를 시작하고, ios의 이전 버전에 대한 지원을 고려하지 않는다면 SwiftUI 프로젝트로 시작하는게 좋고   
SwiftUI가 지원하는 기능 외의 것을 사용하고 싶다면 UIKit의 기능을 통합하여 사용하는 것이 좋다.   
하지만 앞으로의 애플이 바라보는 앱 개발은 SwiftUI가 메인이 될것이다. 그리고 ios말고도 여러 os에도 적용이 되는 SwiftUI가 장기적으로 보면 더 이득이다.   

# UIView를 SwiftUI와 통합하기
- UIKit 기반 어플의 사용자 인터페이스를 구성하는 컴포넌트들은 UIView 클래스로부터 파생된다.   
몇 가지를 살펴보자면 버튼, 레이블, 텍스트 등등 모두 **UIKit의 UIView 클래스의 하위 클래스이다.**   
UIView 기반의 컴포넌트를 SwiftUI 뷰 선언부에 쉽게 통합하기 위해서 SwiftUI는 UIViewRepresentable 프로토콜을 제공한다.   
UIView 컴포넌트를 SwiftUI에 통합하기위해선 해당 컴포넌트는 이 프로토콜을 구현하는 구조체로 래핑되야 한다.   
UIViewRepresentable 프로토콜을 따르는 래퍼 구조체는 다음의 메소드들을 구현해야 한다.  
1. makeUIView() - 이 메소드는 UIView 기반 컴포넌트의 인스턴스를 생성하고 필요한 초기화 작업을 수행한 뒤 반환하는 역할은 한다.  
2. updateView() - UIView 자체를 업데이트해야 하는 변경이 SWiftUI 뷰에서 생길 때 마다 호출된다.   
3. dismantleUIVIew() - 뷰를 제거하기 전에 정리 작업을 할 수 있는 기회를 제공한다.


