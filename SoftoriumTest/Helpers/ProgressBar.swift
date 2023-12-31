//
//  ProgressBar.swift
//  SoftoriumTest
//
//  Created by Maksim Guzeev on 14.12.2023.
//

import Foundation
import SwiftUI

struct ProgressBar: View {
    @Binding var value: Float
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(
                        width: geometry.size.width,
                        height: geometry.size.height
                    )
                    .opacity(0.3)
                    .foregroundColor(Color(UIColor.systemTeal))
                Rectangle()
                    .frame(
                        width: min(
                            CGFloat(self.value) * geometry.size.width,
                            geometry.size.width),
                        height: geometry.size.height)
                    .foregroundColor(Color.greenLoader)
                        .animation(.linear)
            }
            .cornerRadius(45.0)
            .overlay(VStack {
                Text("\(Int(value * 100))%")
                    .foregroundColor(.white)
                    .font(.interBold16)
            })
        }
    }
}
