import SwiftUI
import Combine



struct ContentView: View {
    // HStack 뷰의 개수를 저장할 변수
    @State private var hStackCount: Int = 0
    
    // block의 순서
     @State private var blocksNum : Int = 0
    
    
    
    var body: some View {
        VStack {
            // 버튼 클릭 시 hStackCount 증가
            Button("Add HStack") {
                hStackCount += 1
                
                //카운트(블럭 갯수)
                blocksNum += 1
                

            }
            
            // hStackCount 값에 따라 HStack 뷰 동적 생성
            ForEach(0..<hStackCount, id: \.self) { _ in
                //블럭 생성과 동시에 카운트 정수 보내주기.
                //@Binding을 통해 다른 뷰로 데이터 보내기.
                block(count: $blocksNum)
            }
        }
    }
}


//make blaock, 추가하는 블럭이기에 View protocol를 사용⭐️
struct block : View {
    
    @Binding var count: Int
  
    
    // Creating a TextField
    @State  var textValue1: String = ""
    @State  var textValue2: String = ""
    @State  var textValue3: String = ""

    
    // Creating a 생성자? - 전역으로 처리하여 에러 방지
    
    @State  var carrier = Mannager.init(kannji: "", hiragana: "", kannkokugo: "")
    
    
    
    
    var body: some View {
        HStack{
            
            //내용을 입력하고 enter를 눌러야 TextField안에 내용이 실행됌.
            TextField("kannji", text: $textValue1) {
                //각 TextField에 대해 앤터를 눌러야 하기에 3번째꺼까지 입력 후, 엔터 누를시 3개 다 저장되게 끔.⬇️ 주석 후 3번쨰 거에 다 업로드.
//                carrier.kannji=textValue1
                
            }
            TextField("hiragana", text: $textValue2) {
//                carrier.hiragana=textValue2
                
                
            }
            TextField("korean", text: $textValue3) {
                carrier.kannji=textValue1
                carrier.hiragana=textValue2
                carrier.kannkokugo=textValue3
                print(carrier.test)
                
                
                //처음 생성이면
                if count > 2 {
                    //static 이기에⭐️⭐️
                    FileSaver.save(text: carrier.test)
                }
                //처음 생성이 아니면
                FileSaver.append(text: carrier.test)
                
            }
            
        }
        
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding() // 패딩 추가
        .background(Color.gray.opacity(0.5)) // 배경색 추가
        .cornerRadius(8) // 모서리 둥글게
        .padding(.horizontal) // 수평 방향으로 패딩 추가
//        .padding()
    }
    
}


// 간단한 HStack 뷰 구현
struct HStackView: View {
    
    var body: some View {
        HStack {
            Text("Left")
            Spacer() // HStack 내부의 뷰들 사이에 공간을 추가
            Text("Right")
        }
        .padding() // 패딩 추가
        .background(Color.gray.opacity(0.5)) // 배경색 추가
        .cornerRadius(8) // 모서리 둥글게
        .padding(.horizontal) // 수평 방향으로 패딩 추가
    }
    
}









struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
