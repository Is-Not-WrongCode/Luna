//
//  WebToonsHeader.swift
//  Webtoon
//
//  Created by Bokyung on 2023/07/03.
//

import SwiftUI

struct WebToonsHeader: View {
    let headerData: [String] = ["신작", "매일+", "월", "화", "수", "목", "금", "토", "일", "완결"]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 0){
                ForEach(headerData, id: \.self) { headerData in
                    Button {
                        //action
                    } label: {
                        Text(headerData)
                            .font(.system(size: 13))
                            .padding(.horizontal, 12)
                            .padding(.vertical, 14)
                    }
                    .foregroundColor(.white)
                    .background(.black)
                }
            } // HStack
        } // ScrollView
       
    }
}

struct WebToonsHeader_Previews: PreviewProvider {
    static var previews: some View {
        WebToonsHeader()
    }
}
