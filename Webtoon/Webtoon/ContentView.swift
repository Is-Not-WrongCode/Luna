//
//  ContentView.swift
//  Webtoon
//
//  Created by Bokyung on 2023/07/02.
//

import SwiftUI

struct ScrollOffsetPreferenceKey: PreferenceKey {
    static var defaultValue: CGPoint = .zero
    static func reduce(value: inout CGPoint, nextValue: () -> CGPoint) {} // reduce는 안씀
}

struct ContentView: View {
    @State var selectedItem: Int = 0 // TabView에서 선택된 값을 저장
    
    @State var wholeViewHeight: CGFloat // 전체 높이값
    @State var bannerHeight: CGFloat // 배너의 높이값
    
    @State var bannerOffsetY: Double = -200 // 위쪽에서 점점 내려옴 -> 아예 안보이게 하기 위해서 -200값을 설정
    
    
    var body: some View {
        
        TabView(selection: $selectedItem) {
            Group {
                NavigationView {
                    MainView()
                }
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
            //            .toolbarColorScheme(.dark, for: .tabBar)
            .toolbarBackground(Color.black, for: .tabBar)
        }
        .tint(.white)
        .preferredColorScheme(.dark) // 다크 모드 스타일을 적용
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(wholeViewHeight: 30, bannerHeight: 30)
    }
}
