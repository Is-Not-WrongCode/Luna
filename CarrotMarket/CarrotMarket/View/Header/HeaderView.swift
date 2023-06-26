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
    @State var pickerDegree: Double = 0.0
    
    
    var body: some View {
            HStack (spacing: 0){
                // MARK: Custom Picker 다시 만들어야 함!!!
                /*
                 Picker(selection: $selectedIndex) {
                 ForEach (0..<typeOfPlace.count, id: \.self){ index in
                 Text(typeOfPlace[index])
                 }
                 } label: {
                 Text(typeOfPlace[0])
                 }
                 .pickerStyle(.automatic)*/
                HStack{
                    Text(typeOfPlace[selectedIndex])
                    Image(systemName: "chevron.down")
                        .rotationEffect(Angle(degrees: pickerDegree))
                }
                .onTapGesture {
                    isPopupPlace.toggle()
                    withAnimation(.linear(duration: 0.2)){
                        pickerDegree += 180
                    }
                }
                
                
                Spacer()
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
