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
    @State var pickerDegree: Double = 0.0
    
    let popupWidth: Double = 200
    let popupHeight: Double = 150
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack {
                    HeaderView(typeOfPlace: $typeOfPlace, isPopupPlace: $isPopupPlace, selectedIndex: $selectedIndex, pickerDegree: $pickerDegree)
                        .padding(.horizontal, 16)
                    
                    NavigationDetailView()
                } // VStack
                
                if isPopupPlace {
                    Color.black.opacity(0.4)
                        .ignoresSafeArea()
                        .onTapGesture {
                            isPopupPlace.toggle()
                            withAnimation(.linear(duration: 0.2)){
                                pickerDegree += 180
                            }
                        } // onTapGesture - 검정 배경을 Tap하면
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.white)
                        .onTapGesture {
                            isPopupPlace.toggle()
                            withAnimation(.linear(duration: 0.2)){
                                pickerDegree += 180
                            }
                        } // onTapGesture - 흰 RoundedRectangle을 Tap하면
                        .frame(width: popupWidth, height: popupHeight)
                        .overlay {
                            VStack(alignment: .leading, spacing: 16){
                                ForEach(typeOfPlace.indices, id: \.self) { index in
                                    Text(typeOfPlace[index])
                                        .foregroundColor(index==selectedIndex ? .black : .gray)
                                        .onTapGesture {
                                            selectedIndex = index
                                            isPopupPlace.toggle()
                                            withAnimation(.linear(duration: 0.2)){
                                                pickerDegree += 180
                                            }
                                        }
                                }
                                //.border(.red)
                            } // VStack
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 16)
                            //.border(.red)
                        } // overlay
                        .frame(alignment: .leading)
                        //.border(.green)
                        .position(x: popupWidth/2 + 20, y: popupHeight/2 + 55)
                } // isPopupPlace
            }
        } // NavigationView
    }
}

struct NavView_Previews: PreviewProvider {
    static var previews: some View {
        NavView()
    }
}
