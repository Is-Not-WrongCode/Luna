//
//  HeaderView.swift
//  CarrotMarket
//
//  Created by Bokyung on 2023/06/19.
//

import SwiftUI

struct HeaderView: View {
    @Binding var typeOfPlace: [String]
    @Binding var isPopupPlace: Bool
    @Binding var selectedIndex: Int
    @Binding var pickerDegree: Double
    
    
    var body: some View {
            HStack (spacing: 0){
                Group {
                    Text(typeOfPlace[selectedIndex])
                        .font(.system(size: 20, weight: .bold))
                        .padding(.trailing, 4)
                        
                    Image(systemName: "chevron.down")
                        .frame(width: 11.68, height: 6.56)
                        .rotationEffect(Angle(degrees: pickerDegree))
                } // Group
                .onTapGesture {
                    isPopupPlace.toggle()
                    withAnimation(.linear(duration: 0.2)){
                        pickerDegree += 180
                    }
                }
                
                Spacer()
                // 우측 3개의 버튼
                ForEach(HeaderData) { hd in
                    Button {
                        // action
                    } label: {
                        Image(hd.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: hd.frameHeight)
                            .padding(.trailing, hd.trailingPadding)
                    }
                } // ForEach
            } //HStack
            .frame(height: 44)
            .frame(maxWidth: .infinity)
            
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
