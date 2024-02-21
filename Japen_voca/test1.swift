//
//  test1.swift
//  Japen_voca
//
//  Created by 안재현 on 2/20/24.
//

import Foundation
import SwiftUI

struct ContentView: View {
    @State private var blocks: [BlockData] = [] // 블럭 데이터를 관리하는 배열

    var body: some View {
        VStack {
            Button("Add Block") {
                // 버튼 클릭 시 블럭 데이터 추가
                let newBlock = BlockData(kannji: "", hiragana: "", kannkokugo: "")
                blocks.append(newBlock)
            }

            // 동적으로 생성된 블럭들을 표시
            ForEach(blocks.indices, id: \.self) { index in
                BlockView(block: $blocks[index])
            }
        }
    }
}

// 블럭을 구성하는 데이터 모델
struct BlockData {
    var kannji: String
    var hiragana: String
    var kannkokugo: String
}

// 블럭 하나를 나타내는 뷰
struct BlockView: View {
    @Binding var block: BlockData // 블럭 데이터 바인딩

    var body: some View {
        HStack {
            TextField("Kanji", text: $block.kannji)
            TextField("Hiragana", text: $block.hiragana)
            TextField("Korean", text: $block.kannkokugo)
        }
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding()
    }
}



#Preview {
    ContentView()
}




