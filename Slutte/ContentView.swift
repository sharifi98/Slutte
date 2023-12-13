//
//  ContentView.swift
//  Slutte
//
//  Created by Hossein Sharifi on 13/12/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var showWhatDoYouWantToQuitView: Bool = false
    var body: some View {
        VStack {
            Button {
                showWhatDoYouWantToQuitView.toggle()
            } label: {
                ZStack {
                    Rectangle()
                        .cornerRadius(25)
                        .frame(width: 150, height: 50)
                    Text("Slutte")
                        .foregroundStyle(Color.white)
                }
            }
            .sheet(isPresented: $showWhatDoYouWantToQuitView) {
                WhatDoYouWantToQuitView()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
