//
//  Webtoons.swift
//  Webtoon
//
//  Created by Bokyung on 2023/07/03.
//

import SwiftUI

struct Webtoons: View {
    // column의 갯수를 3개로 지정
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: .center),
        GridItem(.flexible(), spacing: 6, alignment: .center),
        GridItem(.flexible(), spacing: 6, alignment: .center)]
    
    var body: some View {
            LazyVGrid(columns: columns, alignment: .center, spacing: 6, pinnedViews: [.sectionHeaders]) {
                // Section 1
                Section {
                    ForEach(0..<12) { index in
                        WebtoonBox()
                    }
                } header: {
                    Divider()
                        .foregroundColor(.white)
                    WebToonsHeader()
                } // : Section 1
            } // LazyVGrid
            .padding(.horizontal, 15)
            .background(Color("BgDarkGray"))
        
    }
}

struct Webtoons_Previews: PreviewProvider {
    static var previews: some View {
        Webtoons()
    }
}
