//
//  TopViewViewModel.swift
//  SoftoriumTest
//
//  Created by Maksim Guzeev on 14.12.2023.
//

import Foundation
import SwiftUI
import Combine


class TopViewViewModel: ObservableObject {
    @Published var traders: [TopTraderModel] = [.test1, .test2, .test3, .test4, .test5, .test6, .test7, .test8, .test9, .test10]
    
    
    private var cancellables: Set<AnyCancellable> = []
    init() {
        Timer.publish(every: 5, on: .main, in: .default)
            .autoconnect()
            .sink { _ in
                self.traders.indices.forEach { index in
                    self.traders[index].updateProfit()
                }
                self.traders.sort { $0.profit > $1.profit }
            }
            .store(in: &cancellables)
    }
}




struct TopTraderModel {
    let id = UUID().uuidString
    let country: String
    let name: String
    let deposit: Int
    var profit: Int
    
    mutating func updateProfit() {
        self.profit += .random(in: -150...50)
    }
    
    static let test1 = TopTraderModel(country: "flag-1", name: "Bob", deposit: .random(in: 0...10000), profit: .random(in: 500...2000))
    static let test2 = TopTraderModel(country: "flag-2", name: "Maks", deposit: .random(in: 0...10000), profit: .random(in: 500...2000))
    static let test3 = TopTraderModel(country: "flag-3", name: "Sasha", deposit: .random(in: 0...10000), profit: .random(in: 500...2000))
    static let test4 = TopTraderModel(country: "flag-4", name: "Rob", deposit: .random(in: 0...10000), profit: 500)
    static let test5 = TopTraderModel(country: "flag-5", name: "Dylan", deposit: .random(in: 0...10000), profit: .random(in: 500...2000))
    static let test6 = TopTraderModel(country: "flag-6", name: "Andrey", deposit: .random(in: 0...10000), profit: .random(in: 500...2000))
    static let test7 = TopTraderModel(country: "flag-7", name: "Sam", deposit: .random(in: 0...10000), profit: .random(in: 500...2000))
    static let test8 = TopTraderModel(country: "flag-8", name: "Todd", deposit: .random(in: 0...10000), profit: .random(in: 500...2000))
    static let test9 = TopTraderModel(country: "flag-9", name: "Woznyak", deposit: .random(in: 0...10000), profit: .random(in: 500...2000))
    static let test10 = TopTraderModel(country: "flag-10", name: "Kate", deposit: .random(in: 0...10000), profit: .random(in: 500...2000))
}
