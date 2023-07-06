//
//  WeebtoonNavView.swift
//  Webtoon
//
//  Created by Bokyung on 2023/07/04.
//

import SwiftUI

struct WeebtoonNavView: View {
    let imageTitle: [String] = ["NavImg1", "NavImg2", "NavImg3"]
    let weebtoonTitle: [String] = ["하이브2", "개장수", "하이브3"]
    let weebtoonMaker: [String] = ["김규삼", "김규삼", "김경열"]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
                navigationLinkCell(cellTitle: "보경님, 이 웹툰들\n최신 이야기를 놓치고 계신 것 같아요!") {
                    Text("네비게이션 링크")
                }
            ForEach(0..<3) { index in
                webtoonAD(imageTitle: imageTitle[index], webtoonTitle: weebtoonTitle[index], webtoonMaker: weebtoonMaker[index])
            }
            .padding(.horizontal, 16)
            
            //.border(.red)
        } // VStack
        .background(Color("BgDarkGray"))
    }
    
    // 단순히 NavigationLink만 있는 Cell
    // Protocol 'View' can only be used as a generic constraint because it has Self or associated type requirements
    @ViewBuilder private func navigationLinkCell<V: View>(cellTitle: String, destination: @escaping () -> V) -> some View {
        NavigationLink {
            destination()
        } label: {
            HStack (spacing: 0){
                Text(cellTitle)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.white)
                    .padding(.leading, 15)
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.white)
                    .frame(width: 8, height: 14)
                    .padding(.trailing, 12)
            }
            //.frame(maxWidth: .infinity)
            .frame(height: 80)
//            .border(.red)
        }
    } //: ViewBuilder - NavigationLinkCell
    
    @ViewBuilder private func webtoonAD(imageTitle: String, webtoonTitle: String, webtoonMaker: String) -> some View {
        HStack(spacing: 15){
            Image(imageTitle)
                .resizable()
                .aspectRatio(contentMode: .fit)
                //.frame(maxWidth: .infinity)
                .frame(height: 106)
            
            VStack (alignment: .leading, spacing: 0){
                Text("무료 충전 완료!")
                    .font(.system(size: 12, weight: .bold))
                    .foregroundColor(Color("FontGreen"))
                    .padding(.bottom, 3)
                    
                Text(webtoonTitle)
                    .font(.system(size: 13, weight: .regular))
                    .foregroundColor(.white)
                    .padding(.bottom, 2)
                
                Text(webtoonMaker)
                    .font(.system(size: 11, weight: .light))
                    .foregroundColor(.white)
            } // VStack
            
            Spacer()
        } // HStack
        .padding(.bottom, 10)
    } // ViewBuilder - webtoonAD
}

struct WeebtoonNavView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            WeebtoonNavView()
        }
    }
}
