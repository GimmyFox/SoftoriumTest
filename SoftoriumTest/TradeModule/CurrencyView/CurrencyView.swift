//
//  CurrencyView.swift
//  SoftoriumTest
//
//  Created by Maksim Guzeev on 14.12.2023.
//

import SwiftUI

struct CurrencyView: View {
    @Binding var bindableModel: CurrencyModel
    @StateObject var vm = CurrencyViewViewModel()
    @Environment(\.presentationMode) var presentationMode
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        VStack {
            LazyVGrid(columns: columns, content: {
                ForEach(vm.currencies, id: \.id) { model in
                    Text(model.title)
                        .foregroundColor(.white)
                        .font(.interMedium14)
                        .frame(maxWidth: .infinity, minHeight: 55)
                        .background(Color.buttonBackground)
                        .cornerRadius(12)
                        .onTapGesture {
                            bindableModel = model
                            presentationMode.wrappedValue.dismiss()
                        }
                }
                
            })
            Spacer()
        }
        .padding()
        
        .setBackgroundColor(.backgroundTopView)
    }
    
}





