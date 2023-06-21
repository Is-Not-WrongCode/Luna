//
//  ADDetailView.swift
//  CarrotMarket
//
//  Created by Bokyung on 2023/06/20.
//

import SwiftUI

struct ADDetailView: View {
    let ADImageName: String
    let ADTitle: String
    let ADPrice: String
   
    var body: some View {
        VStack (spacing: 0){
            Image(ADImageName)
                .frame(width: 108, height: 108, alignment: .center)
            Spacer()
            Text(ADTitle)
                .font(.system(size: 14))
                .frame(height: 38)
                .frame(maxWidth: .infinity, alignment: .leading)
                //.border(.blue)
            Text(ADPrice)
                .font(.system(size: 14, weight: .bold))
                .frame(height: 19)
                .frame(maxWidth: .infinity, alignment: .leading)
                //.border(.blue)
        }
        .frame(width: 108, height: 174, alignment: .leading)
        //.border(.red)
    }
}

struct ADDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ADDetailView(ADImageName: ADData[0].imageName, ADTitle: ADData[0].title, ADPrice: ADData[0].price)
    }
}
