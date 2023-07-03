//
//  ContentView.swift
//  Webtoon
//
//  Created by Bokyung on 2023/07/02.
//

import SwiftUI

struct ContentView: View {
    @State var selectedItem: Int = 0
    var body: some View {
        TabView(selection: $selectedItem) {
            MainView()
                .tabItem {
                    Image(selectedItem == 0 ? "icon1" : "icon5")
                    Text("웹툰")
                }
                .tag(0)
            
            Text("추천완결")
                .tabItem {
                    Image(selectedItem == 1 ? "icon1" : "icon2")
                    Text("추천완결")
                }
                .tag(1)
            
            Text("베스트도전")
                .tabItem {
                    Image(selectedItem == 2 ? "icon1" : "icon3")
                    Text("베스트도전")
                }
                .tag(2)
            
            Text("My")
                .tabItem {
                    Image(selectedItem == 3 ? "icon1" : "icon4")
                    Text("My")
                }
                .tag(3)
            
            Text("더보기")
                .tabItem {
                    Image(selectedItem == 4 ? "icon1" : "icon5")
                    Text("더보기")
                }
                .tag(4)
        }
        .tint(.white)
        .preferredColorScheme(.dark) // 다크 모드 스타일을 적용
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
