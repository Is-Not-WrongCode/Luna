//
//  HeaderModel.swift
//  CarrotMarket
//
//  Created by Bokyung on 2023/06/20.
//

import Foundation

struct HeaderModel: Identifiable {
    let id: UUID = UUID()
    let imageName: String
    
    let frameHeight: Double
    let trailingPadding: Double
}

let HeaderData: [HeaderModel] = [
    HeaderModel(imageName: "ImageIconSearch", frameHeight: 24, trailingPadding: 10),
    HeaderModel(imageName: "ImageIconList", frameHeight: 15.8, trailingPadding: 10),
    HeaderModel(imageName: "ImageIconAlarm", frameHeight: 19.6, trailingPadding: 0)
]

