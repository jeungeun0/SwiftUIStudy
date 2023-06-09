//
//  ContentView.swift
//  HelloXcodePreview
//
//  Created by 안정은 on 2023/02/22.
//

import SwiftUI

struct ContentView: View {
    
    //배경색 이름
    @State private var backgroundColorName: String = "Green"
    //배경색
    @State private var backgroundColor: Color = .green
    
    var body: some View {
        VStack {
            Text("Beautiful Coding~!")
                .font(.largeTitle)
                .padding()
                .background(backgroundColor)
            //배경색 이름을 표시한다.
            Text("\(backgroundColorName)")
            Button("Change Color") {
                //배경색과 배경색 이름을 토글한다.
                if backgroundColorName == "Green" {
                    backgroundColorName = "Yellow"
                    backgroundColor = .yellow
                } else {
                    backgroundColorName = "Green"
                    backgroundColor = .green
                }
            }
                .padding()
                .background(.gray)
                .foregroundColor(.white)
                .bold()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

