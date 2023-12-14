//
//  CurrencyModel.swift
//  SoftoriumTest
//
//  Created by Maksim Guzeev on 14.12.2023.
//

import Foundation


struct CurrencyModel {
    
    let id = UUID().uuidString
    let url: String
    let title: String
    
    static let test1 = CurrencyModel(url: "https://www.tradingview.com/chart/?symbol=BMFBOVESPA%3AEUR1%21", title: "EUR/USD")
    static let test2 = CurrencyModel(url: "https://www.tradingview.com/chart/?symbol=NASDAQ%3AGBP", title: "GBR/USD")
    static let test3 = CurrencyModel(url: "https://www.tradingview.com/chart/?symbol=BMFBOVESPA%3AEUR1%21", title: "EUR/USD")
    static let test4 = CurrencyModel(url: "https://www.tradingview.com/chart/?symbol=NASDAQ%3AGBP", title: "GBR/USD")
}
