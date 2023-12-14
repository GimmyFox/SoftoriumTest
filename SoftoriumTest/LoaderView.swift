//
//  LoaderView.swift
//  SoftoriumTest
//
//  Created by Maksim Guzeev on 14.12.2023.
//

import SwiftUI

struct LoaderView: View {
    @State var progressValue: Float = 0.0
    @Binding var showLoader: Bool
    var body: some View {
        ZStack {
            Image("BG")
                .resizable()
                .ignoresSafeArea()
            VStack {
                ProgressBar(value: $progressValue)
                    .frame(height: 24)
            }
            .padding(.horizontal, 37)
        }
        .onAppear {
            startProgress()
        }
    }
    
    private func startProgress() {
        for _ in 0...100 {
            progressValue += 0.01
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            withAnimation {
                showLoader = false
            }
        }
    }
}

struct LoaderView_Previews: PreviewProvider {
    static var previews: some View {
        LoaderView(showLoader: .constant(false))
    }
}


