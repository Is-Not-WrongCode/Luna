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
                            .border(.red)
                        
                        VStack(alignment: .leading, spacing: 0) {
                            Text(nd.title)
                            Text("\(nd.place)⸱\(nd.timeAgo)")
                            Text(nd.price)
                            HStack {
                                Spacer()
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .border(.blue)
                    } // HStack
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
