//
//  NavigationModel.swift
//  CarrotMarket
//
//  Created by Bokyung on 2023/06/18.
//

import Foundation

struct NavigationModel: Identifiable {
    let id: UUID = UUID()
    let imageName: String
    
    let title: String
    let place: String
    let timeAgo: String
    let price: String
    
    let chatCount: Int
    let heartCount: Int
}

let NavigationData: [NavigationModel] = [
    NavigationModel(imageName: "ImageNav1", title: "에어팟 2세대 무선 판매합니다. 쿨거래 환영합니다~", place: "가락동", timeAgo: "22분 전", price: "200,000원", chatCount: 3, heartCount: 5),
    NavigationModel(imageName: "ImageNav2", title: "아이패드 미니 6세대 64G 실버 셀룰러+애플펜슬 2세대 팝니다", place: "가야동", timeAgo: "끌올 37분 전", price: "700,000원", chatCount: 1, heartCount: 2),
    NavigationModel(imageName: "ImageNav3", title: "삼천리 24인치 칼라스 JD DISC 자전거", place: "송파구 오금동", timeAgo: "11분 전", price: "200,000원", chatCount: 9, heartCount: 0),
    NavigationModel(imageName: "ImageNav4", title: "이민 가방 캐리어", place: "문정동", timeAgo: "3시간 전", price: "20,000원", chatCount: 11, heartCount: 11),
    NavigationModel(imageName: "ImageNav5", title: "66걸즈 스티치셔츠+와이드슬렉스 SET", place: "가락2동", timeAgo: "끌올 26초 전", price: "25,000원", chatCount: 0, heartCount: 23),
    NavigationModel(imageName: "ImageNav6", title: "아이폰 14프로 128 딥퍼플 배터리 100% 급처합니다", place: "가락동", timeAgo: "끌올 2분 전", price: "119만원", chatCount: 1, heartCount: 4)
]

