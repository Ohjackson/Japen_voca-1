//
//  FileMannager.swift
//  struct exercise
//
//  Created by 안재현 on 2/12/24.
//

import Foundation

struct FileSaver {
    
    static func save(text: String/*, to fileName: String*/) {
            
        let fileName = "first"
        
        
            //저장 경로
        let folder = URL(fileURLWithPath: "/Users/anjaehyeon/Desktop")
        
            //folder의 URL에 "/fileName" 을 추가한/Users/anjaehyeon/Desktop/fileName 의 값을 fileURL에 할당합니다. ⭐️⭐️
        let fileURL = folder.appendingPathComponent(fileName)
        
        do {
            
            try text.write(to: fileURL, atomically: true, encoding: .utf8)
            
            print("Saved text to \(fileName) successfully")
            
        } catch {
            print("Failed to save text: \(error)")
        }
    }
    
    
    
}
