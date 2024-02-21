//
//  block_mannager.swift
//  struct exercise
//
//  Created by 안재현 on 2/14/24.
//

import Foundation


struct Mannager {
    
     var kannji : String
     var hiragana : String
     var kannkokugo : String
    
    
    //func 방법으로 초기화
    init(kannji: String, hiragana: String, kannkokugo: String) {
        self.kannji = kannji
        self.hiragana = hiragana
        self.kannkokugo = kannkokugo
    }
    
    // storeged property
    var test: String {
        return kannji + "/" + hiragana + "/" + kannkokugo
    }
        
    
    
    
    
}

