//
//  FileMannager.swift
//  struct exercise
//
//  Created by 안재현 on 2/12/24.
//

import Foundation

struct FileSaver {
    
    
    
    
    static func save(text: String, to fileName: String = "first") {
        let folder = URL(fileURLWithPath: "/Users/anjaehyeon/Desktop")
        let fileURL = folder.appendingPathComponent(fileName)
        
        do {
            try text.write(to: fileURL, atomically: true, encoding: .utf8)
            print("Saved text to \(fileName) successfully")
        } catch {
            print("Failed to save text: \(error)")
        }
    }
    
    
    
    
    //기존 파일에 \n을 추가하여 기입하는 함수, (append 지원을 하지 않기에 기존 파일을 읽고 추가하는 방식)
    static func append(text: String, to fileName: String = "first") {
        let folder = URL(fileURLWithPath: "/Users/anjaehyeon/Desktop")
        let fileURL = folder.appendingPathComponent(fileName)
        
        do {
            // 기존 내용을 읽기
            let oldText = try String(contentsOf: fileURL, encoding: .utf8)
            // 새로운 내용 추가
            let newText = oldText+"\n"+text
            // 수정된 내용을 다시 파일에 쓰기
            try newText.write(to: fileURL, atomically: true, encoding: .utf8)
            print("Appended text to \(fileName) successfully")
        } catch {
            print("Failed to append text: \(error)")
        }
    }
    
    
    
}

