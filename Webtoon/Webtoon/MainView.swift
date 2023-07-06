//
//  MainView.swift
//  Webtoon
//
//  Created by Bokyung on 2023/07/03.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ScrollView{
            VStack (spacing: 8){
                Webtoons()
                WeebtoonNavView()
                ResearchMoreWebtoons()
                Image("footer")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
            }
            .background(.black)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
