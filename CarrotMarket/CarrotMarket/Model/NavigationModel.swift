//
//  NavigationModel.swift
//  CarrotMarket
//
//  Created by Bokyung on 2023/06/18.
//

import Foundation

struct NavigationModel{
    let imageName: String
    
    let title: String
    let place: String
    let timeAgo: Int
    let price: String
    
    let chatCount: Int
    let heartCount: Int
}

let NavigationData: [NavigationModel] = [
    NavigationModel(imageName: "ImageNav1", title: "에어팟 2세대 무선 판매합니다. 쿨거래 환영합니다~", place: "가락동", timeAgo: 22, price: "200,000원", chatCount: 3, heartCount: 5),
    NavigationModel(imageName: "ImageNav2", title: "아이패드 미니 6세대 64G 실버 셀룰러+애플펜슬 2세대 팝니다", place: "가야동", timeAgo: 37, price: "700,000원", chatCount: 1, heartCount: 2),
    NavigationModel(imageName: "ImageNav3", title: "삼천리 24인치 칼라스 JD DISC 자전거", place: "송파구 오금동", timeAgo: 11, price: "200,000원", chatCount: 9, heartCount: 0),
    NavigationModel(imageName: "ImageNav4", title: "에어팟 2세대 무선 판매합니다. 쿨거래 환영합니다~", place: "가락동", timeAgo: 22, price: "200,000원", chatCount: 3, heartCount: 5),
    NavigationModel(imageName: "ImageNav5", title: "에어팟 2세대 무선 판매합니다. 쿨거래 환영합니다~", place: "가락동", timeAgo: 22, price: "200,000원", chatCount: 3, heartCount: 6), NavigationModel(imageName: "ImageNav1", title: "에어팟 2세대 무선 판매합니다. 쿨거래 환영합니다~", place: "가락동", timeAgo: 22, price: "200,000원", chatCount: 3, heartCount: 5)
]
