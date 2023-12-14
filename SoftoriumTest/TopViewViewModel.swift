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




