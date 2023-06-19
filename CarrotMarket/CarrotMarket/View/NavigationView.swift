//
//  NavigationView.swift
//  CarrotMarket
//
//  Created by Bokyung on 2023/06/19.
//

import SwiftUI

struct NavigationView: View {
    var body: some View {
        VStack {
            HeaderView()
            NavigationDetailView()
        }
        
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView()
    }
}
