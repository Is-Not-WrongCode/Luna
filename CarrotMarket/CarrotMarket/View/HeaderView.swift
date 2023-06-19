//
//  HeaderView.swift
//  CarrotMarket
//
//  Created by Bokyung on 2023/06/19.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack (spacing: 0){
            Image(systemName: "magnifyingglass")
            Image(systemName: "heart.fill")
            Image(systemName: "heart.fill")
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
