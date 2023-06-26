//
//  NavigationView.swift
//  CarrotMarket
//
//  Created by Bokyung on 2023/06/19.
//

import SwiftUI

struct NavView: View {
    @State var typeOfPlace: [String] = ["대현동", "이동", "내 동네 설정하기"]
    @State var selectedIndex: Int = 0
    @State var isPopupPlace: Bool = false
    let popupWidth: Double = 200
    let popupHeight: Double = 150
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack {
                    HeaderView(typeOfPlace: $typeOfPlace, isPopupPlace: $isPopupPlace, selectedIndex: $selectedIndex)
                        .padding(.horizontal, 16)
                    
                    NavigationDetailView()
                } // VStack
                
                if isPopupPlace {
                    Color.black.opacity(0.4)
                        .ignoresSafeArea()
                        .onTapGesture {
                            isPopupPlace.toggle()
                        }
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.white)
                        .onTapGesture {
                            isPopupPlace.toggle()
                        }
                        .frame(width: popupWidth, height: popupHeight)
                        .overlay {
                            VStack(alignment: .leading, spacing: 16){
                                ForEach(typeOfPlace.indices, id: \.self) { index in
                                    Text(typeOfPlace[index])
                                        .foregroundColor(index==selectedIndex ? .black : .gray)
                                        .onTapGesture {
                                            selectedIndex = index
                                            isPopupPlace.toggle()
                                        }
                                }
                            }
                        }
                        .position(x: popupWidth/2 + 20, y: popupHeight/2 + 60)
                }
            }
        } // NavigationView
    }
}

struct NavView_Previews: PreviewProvider {
    static var previews: some View {
        NavView()
    }
}
