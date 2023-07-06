//
//  ResearchMoreWebtoons.swift
//  Webtoon
//
//  Created by Bokyung on 2023/07/06.
//

import SwiftUI

struct ResearchMoreWebtoons: View {
    var body: some View {
        NavigationLink {
            //destination
        } label: {
            HStack (spacing: 0){
                Image("ImgQuestion")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24)
                    .padding(.trailing, 8)
                Text("랜덤 작품 보러가기")
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(.white)
                    .padding(.trailing, 15)
                Image(systemName: "chevron.right")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 6.4)
                    .foregroundColor(.white)
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical, 16)
            .background(Color("BgDarkGray"))
        } // NavigationLink
    }
}

struct ResearchMoreWebtoons_Previews: PreviewProvider {
    static var previews: some View {
        ResearchMoreWebtoons()
    }
}
