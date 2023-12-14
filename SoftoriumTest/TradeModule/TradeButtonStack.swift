//
//  TradeButtonStack.swift
//  SoftoriumTest
//
//  Created by Maksim Guzeev on 14.12.2023.
//

import SwiftUI

struct TradeButtonStack: View {
    
    @State var timeString = "00:00"
    @State var investString = "1000"
    @State var presenter = false
    @Binding var currencyModel: CurrencyModel
    var body: some View {
        VStack {
            Button {
                presenter.toggle()
            } label: {
                HStack {
                    Spacer()
                    Text(currencyModel.title)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                .foregroundColor(.white)
                .font(.interMedium22)
                .padding(.horizontal, 19)
                .frame(height: 55)
                .background(Color.buttonBackground)
                .cornerRadius(12)
                
            }
            HStack(spacing: 11) {
                TimerButton(timeString: $timeString)
                InvestmentButton(numberString: $investString)
            }
            HStack {
                BuySellButton(title: "Buy", backgroundColor: .green) {
                    
                }
                BuySellButton(title: "Cell", backgroundColor: .red) {
                    
                }
            }
        }
        .sheet(isPresented: $presenter, content: {
            CurrencyView(bindableModel: $currencyModel)
        })
    }
}

struct TradeButtonStack_Previews: PreviewProvider {
    static var previews: some View {
        TradeButtonStack(currencyModel: .constant(.test1))
    }
}
