//
//  TradeView.swift
//  SoftoriumTest
//
//  Created by Maksim Guzeev on 14.12.2023.
//

import SwiftUI

struct TradeView: View {
    @State var currencyModel: CurrencyModel = .test1
    var body: some View {
        VStack {
            Text("Trade")
                .foregroundColor(.white)
                .font(.interBold22)
            balanceCell()
            WebView(url: currencyModel.url)
                .frame(maxWidth: .infinity, maxHeight: UIScreen.main.bounds.height / 2.5)
            TradeButtonStack(currencyModel: $currencyModel)
        }
        .padding()
        .setBackgroundColor(.backgroundTopView)
    }
    
    @ViewBuilder
    private func balanceCell() -> some View {
        HStack {
            Spacer()
            VStack(spacing: 8) {
                Text("Balance")
                    .foregroundColor(.gray)
                Text("\(10000)")
                    .foregroundColor(.white)
                    .font(.interBold16)
            }
            
            Spacer()
        }
        .padding(.vertical, 10)
        .frame(height: 55)
        .background(Color.buttonBackground)
        .cornerRadius(12)
    }
}

struct TradeView_Previews: PreviewProvider {
    static var previews: some View {
        TradeView()
    }
}
