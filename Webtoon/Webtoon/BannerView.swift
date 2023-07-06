//
//  BannerView.swift
//  Webtoon
//
//  Created by Bokyung on 2023/07/06.
//

import SwiftUI

struct BannerView: View {
    // totalWidth: 375
    // bannerWidth: 345
    // spacingWidth: 6
    // 6 345 6
    // 12 + 345 = 357
    // 375 - 357 = 18
    // left & right Width: 9, 9
    let sideSpacing: CGFloat = 6 // 베너와 배너 사이의 spacing
    let totalSpacing: CGFloat = 30 // 배너를 제외한 spacing
    @State var index: Int = 0
    
    var body: some View {
        ZStack (alignment: .bottom){
            Image("banner")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity)
            
            HStack {
                RoundedRectangle(cornerRadius: 4)
                    .foregroundColor(.indigo)
                    .frame(width: 345, height: 48)
                    .overlay(alignment: .leading) {
                        HStack (spacing: 6){
                            Image("iconEvent")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40)
                            
                            Text("툰필터 시즌2 만나러 가기!")
                                .font(.system(size: 17, weight: .bold))
                                .foregroundColor(.white)
                                .lineLimit(1)
                        }
                        .padding(.horizontal, 20)
                        
                    }
            }
        }
    }
}

struct BannerView_Previews: PreviewProvider {
    static var previews: some View {
        BannerView()
    }
}
