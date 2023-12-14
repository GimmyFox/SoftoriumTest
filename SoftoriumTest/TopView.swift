//
//  TopView.swift
//  SoftoriumTest
//
//  Created by Maksim Guzeev on 14.12.2023.
//

import SwiftUI

struct TopView: View {
    @StateObject var vm = TopViewViewModel()
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        VStack {
            Text("TOP 10 Traders")
                .font(.interBold22)
                .foregroundColor(.white)
            
            VStack(alignment: .leading, spacing: 0) {
                HStack(spacing: 25) {
                    Text("No")
                    Text("Country")
                    Text("Name")
                    Spacer()
                    Text("Deposit")
                    Text("Profit")
                }
                .font(.interMedium12)
                .foregroundColor(.white)
                .padding(.horizontal, 5)
                .frame(maxWidth: .infinity, maxHeight: 50)
                .background(Color.listBGTopView)
                .clipped()
                ForEach(vm.traders.indices, id: \.self) { index in
                    let trader = vm.traders[index]
                    createTraderCell(model: trader, position: index + 1)
                        .background( index % 2 == 0 ? Color.clear : Color.listBGTopView)
                }
                HStack {Spacer()}
            }
            .cornerRadius(9)
            Spacer()
        }
        .padding()
        .setBackgroundColor(.backgroundTopView)
    }
    
    
    @ViewBuilder
    func createTraderCell(model: TopTraderModel, position: Int) -> some View {
        HStack(spacing: 25) {
            Text("\(position)")
                .padding(.trailing, 15)
            Image(model.country)
            Text(model.name)
                .padding(.leading, 15)
            Spacer()
            Text("$\(model.deposit)")
            Text("$\(model.profit)")
                .foregroundColor(.green)
        }
        .foregroundColor(.white)
        .font(.interRegular14)
        .padding(.horizontal, 5)
        .frame(maxWidth: .infinity,maxHeight: 50)
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}
