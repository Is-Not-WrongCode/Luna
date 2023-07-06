//
//  WebtoomBox.swift
//  Webtoon
//
//  Created by Bokyung on 2023/07/03.
//

import SwiftUI

struct WebtoonBox: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            Image("web1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity)
            
            Text("나 혼자 네크로맨서")
                .font(.system(size: 13))
                .foregroundColor(.white)
            HStack (spacing: 0){
                Text("김경열 / 김동준 / 지태성")
                    .font(.system(size: 8.5))
                    .foregroundColor(.white)
                    .lineLimit(1)
                Spacer()
                Text("⭐️9.94")
                    .font(.system(size: 8.5))
                    .foregroundColor(.white)
            }
            //.layoutPriority(1)
        }
        .background(Color("BgDarkGray"))
    }
}



struct WebtoonBox_Previews: PreviewProvider {
    static var previews: some View {
        WebtoonBox()
    }
}
