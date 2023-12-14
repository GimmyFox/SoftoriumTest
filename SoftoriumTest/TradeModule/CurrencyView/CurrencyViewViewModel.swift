//
//  CurrencyViewViewModel.swift
//  SoftoriumTest
//
//  Created by Maksim Guzeev on 14.12.2023.
//

import Foundation


class CurrencyViewViewModel: ObservableObject {
    @Published var currencies: [CurrencyModel] = [.test1, .test2, .test3, .test4]
    
    
}
