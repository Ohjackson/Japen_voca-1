//
//  ContentView.swift
//  struct exercise
//
//  Created by 안재현 on 2/12/24.
//

import SwiftUI

struct ContentView: View {
    
    
    // Creating a TextField
    @State  var textValue1: String = ""
    @State  var textValue2: String = ""
    @State  var textValue3: String = ""

    
    // Creating a 생성자?
    
    @State var carrier = Mannager.init(kannji: "", hiragana: "", kannkokugo: "")

    
    
    
    
    
    var body: some View {
        HStack{
            
            TextField("kannji", text: $textValue1) {
                
                carrier.kannji=textValue1

            }
            TextField("hiragana", text: $textValue2) {
                carrier.hiragana=textValue2
                
                       
            }
            TextField("korean", text: $textValue3) {
                carrier.kannkokugo=textValue3
                print(carrier.test)
                
                //static 이기에⭐️⭐️
                FileSaver.save(text: carrier.test)
                
                       
            }

                }
        
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding()
        
    
        
    }//boby

    

    
    
}









#Preview {
    ContentView()
}




