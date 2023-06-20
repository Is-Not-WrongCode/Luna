//
//  HeaderView.swift
//  CarrotMarket
//
//  Created by Bokyung on 2023/06/19.
//

import SwiftUI

struct HeaderView: View {
    let typeOfPlace: [String] = ["대현동", "이동", "내 동네 설정하기"]
    @State var selectedIndex: Int = 0
    
    var body: some View {
        HStack (spacing: 0){
            // MARK: Custom Picker 다시 만들어야 함!!!
            Picker(selection: $selectedIndex) {
                ForEach (0..<typeOfPlace.count, id: \.self){ index in
                    Text(typeOfPlace[index])
                }
            } label: {
                Text(typeOfPlace[0])
            }
            .pickerStyle(.automatic)

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
        .border(.red)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
