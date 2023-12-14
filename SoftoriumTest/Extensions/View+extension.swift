//
//  View+extension.swift
//  SoftoriumTest
//
//  Created by Maksim Guzeev on 14.12.2023.
//

import Foundation
import SwiftUI


extension View {
    func setBackgroundColor(_ color: Color) -> some View{
            ZStack{
                color.ignoresSafeArea()
                self
            }
        }
}
