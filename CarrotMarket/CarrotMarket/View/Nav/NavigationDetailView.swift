//
//  NavigationDetailView.swift
//  CarrotMarket
//
//  Created by Bokyung on 2023/06/18.
//

import SwiftUI

struct NavigationDetailView: View {
    
    var body: some View {
        ScrollView {
            ForEach(NavigationData) { nd in
                NavigationLink {
                    // Destinaton
                } label: {
                    HStack (spacing: 0){
                        Image(nd.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 110)
                            .border(.red)
                            .padding(.trailing, 16)
                        
                        VStack(alignment: .leading, spacing: 0) {
                            Text(nd.title)
                                .multilineTextAlignment(.leading)
                                .font(.system(size: 19))
                            Text("\(nd.place) ⸱ \(nd.timeAgo)")
                                .font(.system(size: 13))
                            Text(nd.price)
                                .font(.system(size: 16))
                            
                            Spacer()
                            HStack (spacing: 0){
                                Spacer()
                                if nd.chatCount > 0 {
                                    Image("ImageIconChat")
                                        .frame(height: 13.5)
                                        .padding(.trailing, 2)
                                    Text(String(nd.chatCount))
                                        .font(.system(size: 13))
                                }
                                    
                                if nd.heartCount > 0 {
                                    Spacer()
                                        .frame(width: 4.75)
                                    Image("ImageIconHeart")
                                        .frame(height: 13.5)
                                        .padding(.trailing, 2)
                                    Text(String(nd.heartCount))
                                        .font(.system(size: 13))
                                        .padding(.trailing, 4)
                                }
                            } // HStack
                        } // VStack
                        .frame(height: 110)
                        .frame(maxWidth: .infinity)
                        .border(.blue)
                    } // HStack
                    .padding(16)
                    .border(.red)
                }
            } // ForEach
        } // ScrollView
    }
}

struct NavigationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationDetailView()
    }
}
