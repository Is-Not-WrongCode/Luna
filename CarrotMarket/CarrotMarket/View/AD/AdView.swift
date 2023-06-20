//
//  AdView.swift
//  CarrotMarket
//
//  Created by Bokyung on 2023/06/20.
//

import SwiftUI

struct AdView: View {
    var body: some View {
        VStack (spacing: 0){
            NavigationLink {
                // Destination
                Text("Destinaton View")
            } label: {
                HStack {Text("무더운 여름, 미리 대비해요.")
                        .font(.system(size: 18, weight: .bold))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                .frame(height: 70)
                .border(.red)
                
            } // NavigationLink
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(ADData) { ad in
                        ADDetailView(ADImageName: ad.imageName, ADTitle: ad.title, ADPrice: ad.price)
                    }
                } // HStack
            } // ScrollView
        } // VStack
    }
}

struct AdView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AdView()
        }
        
    }
}
