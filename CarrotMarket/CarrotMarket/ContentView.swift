//
//  ContentView.swift
//  CarrotMarket
//
//  Created by Bokyung on 2023/06/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            TabView {
                NavigationView()
                    .tabItem{
                        Image(systemName: "house.fill")
                        Text("홈")
                    }
                    .tag(0)
                
                Text("동네 생활")
                    .tabItem{
                        Image(systemName: "home")
                        Text("동네생활")
                    }
                    .tag(1)
                
                Text("내 근처")
                    .tabItem{
                        Image(systemName: "home")
                        Text("내 근처")
                    }
                    .tag(2)
                
                Text("채팅")
                    .tabItem{
                        Image(systemName: "home")
                        Text("동네생활")
                    }
                    .tag(3)
                
                Text("나의 당근")
                    .tabItem{
                        Image(systemName: "home")
                        Text("동네생활")
                    }
                    .tag(4)
                
            } // TabView
            .tint(.black)
            .toolbar {
                Image(systemName: "magnifyingglass")
                Image(systemName: "heart.fill")
                Image(systemName: "heart.fill")
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
