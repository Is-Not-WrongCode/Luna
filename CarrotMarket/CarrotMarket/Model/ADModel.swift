//
//  ADModel.swift
//  CarrotMarket
//
//  Created by Bokyung on 2023/06/20.
//

import Foundation

struct ADModel: Identifiable {
    let id: UUID = UUID()
    let imageName: String
    let title: String
    let price: String
}

let ADData: [ADModel] = [
    ADModel(imageName: "ImageAD1", title: "(새상품) 세상에 하나밖에 없는 모자.. 루나의 최애템 ㅋㅋㅋ", price: "15,000원"),
    ADModel(imageName: "ImageAD2", title: "휠라 블랙크리스탈 썬글라스", price: "35,000원"),
    ADModel(imageName: "ImageAD3", title: "휠라 썬글라스 누드 브라운", price: "35,000원"),
    ADModel(imageName: "ImageAD1", title: "(새상품) 세상에 하나밖에 없는 모자.. 루나의 최애템 ㅋㅋㅋ", price: "15,000원"),
    ADModel(imageName: "ImageAD2", title: "휠라 블랙크리스탈 썬글라스", price: "35,000원"),
    ADModel(imageName: "ImageAD3", title: "휠라 썬글라스 누드 브라운", price: "35,000원")
]
