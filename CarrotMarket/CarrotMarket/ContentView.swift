//
//  ContentView.swift
//  CarrotMarket
//
//  Created by Bokyung on 2023/06/18.
//

import SwiftUI

struct ContentView: View {
    @State var tagSelection: Int = 0
    init() {
    UITabBar.appearance().backgroundColor = UIColor.red

    }
    var body: some View {
            TabView(selection: $tagSelection) {
                    NavView()
                    .tabItem{
                        Image(tagSelection == 0 ? "ImageIcon1" :"ImageIcon2")
                        Text("홈")
                    }
                    .tag(0)

                Text("동네 생활")
                    .tabItem{
                        Image(tagSelection == 1 ? "ImageIcon1" :"ImageIcon2")
                        Text("동네생활")
                    }
                    .tag(1)

                Text("내 근처")
                    .tabItem{
                        Image("ImageIcon3")
                        Text("내 근처")
                    }
                    .tag(2)

                Text("채팅")
                    .tabItem{
                        Image("ImageIcon4")
                        Text("동네생활")
                    }
                    .tag(3)

                Text("나의 당근")
                    .tabItem{
                        Image("ImageIcon5")
                        Text("동네생활")
                    }
                    .tag(4)

            } // TabView
            //.background(Color.red) // 빨간 배경 색상
            .tint(.black)
            //.toolbarColorScheme(., for: <#T##ToolbarPlacement...##ToolbarPlacement#>)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

