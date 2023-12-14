//
//  BuySellButton.swift
//  SoftoriumTest
//
//  Created by Maksim Guzeev on 14.12.2023.
//

import SwiftUI

struct BuySellButton: View {
    
    let title: String
    let action: ()->()
    let backgrounColor: Color
    init(title: String, backgroundColor: Color,action: @escaping ()->Void) {
        self.title = title
        self.action = action
        self.backgrounColor = backgroundColor
    }
    var body: some View {
        HStack {
            Text(title)
                .font(.interBold22)
                .padding(.leading, 20)
                .offset(y: -10)
                .foregroundColor(.white)
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: 55)
        .background(backgrounColor)
        .cornerRadius(12)
    }
}

#Preview {
    BuySellButton(title: "Buy", backgroundColor: .red, action: {})
}
