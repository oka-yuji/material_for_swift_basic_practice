//
//  ContentView.swift
//  MaterialForSwiftBasicPractice
//
//  Created by 岡優志 on 2021/05/19.
//

import SwiftUI

struct ContentView: View {
    @State var a: String = ""
    @State var b: String? = ""
    var body: some View {
        VStack{
            Button(action: {
               a = "not optional"
                b = "optional"
            }, label: {
                Text("Button")
            })
            Text(a)
            //強制アンラップ
            Text(b!)
            //nilの場合空を入れる処理をした安全なアンラップ
            Text(b ?? "")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
