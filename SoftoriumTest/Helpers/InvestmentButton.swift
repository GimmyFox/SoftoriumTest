//
//  InvestmentButton.swift
//  SoftoriumTest
//
//  Created by Maksim Guzeev on 14.12.2023.
//

import SwiftUI
import Combine
struct InvestmentButton: View {
    @Binding var numberString: String
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Text("Investment")
                .foregroundColor(.gray)
            HStack {
                Image(systemName: "minus.circle")
                    .frame(width: 15, height: 15)
                    .background(Color.white.opacity(.ulpOfOne))
                    .onTapGesture {
                        decrementNumber()
                    }
                TextField("", text: $numberString)
                    .foregroundColor(.white)
                    .keyboardType(.decimalPad)
                    .frame(width: 50)
                    .onReceive(Just(numberString), perform: { newNumber in
                        let filtered = newNumber.filter { "0123456789".contains($0) }
                        if filtered != newNumber {
                            self.numberString = filtered
                        }
                    })
                Image(systemName: "plus.circle")
                    .onTapGesture {
                        incrementNumber()
                    }
            }
            .foregroundColor(.gray)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 8)
        .padding(.horizontal)
        .background(Color.buttonBackground)
        .cornerRadius(12)
    }
    
    func incrementNumber() {
            if let currentNumber = Int(numberString) {
                numberString = "\(currentNumber + 1)"
            }
        }
        
        func decrementNumber() {
            if let currentNumber = Int(numberString), currentNumber > 0 {
                numberString = "\(currentNumber - 1)"
            }
        }
}

#Preview {
    InvestmentButton(numberString: .constant("1000"))
}
