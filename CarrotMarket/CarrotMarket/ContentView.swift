//
//  ContentView.swift
//  CarrotMarket
//
//  Created by Bokyung on 2023/06/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationDetailView()
            .toolbar {
                Image(systemName: "heart.fill")
                Image(systemName: "heart.fill")
                Image(systemName: "heart.fill")
            }
        } // Navigation View
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
