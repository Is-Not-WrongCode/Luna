//
//  NavigationView.swift
//  CarrotMarket
//
//  Created by Bokyung on 2023/06/19.
//

import SwiftUI

struct NavView: View {
    var body: some View {
        NavigationView{
            VStack {
                HeaderView()
                    
                        
                   
                NavigationDetailView()
            }
        }
        
    }
}

struct NavView_Previews: PreviewProvider {
    static var previews: some View {
        NavView()
    }
}
