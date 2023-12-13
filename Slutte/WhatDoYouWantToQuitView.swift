//
//  WhatDoYouWantToQuitView.swift
//  Slutte
//
//  Created by Hossein Sharifi on 13/12/2023.
//

import SwiftUI

struct WhatDoYouWantToQuitView: View {
    
    // @Environment(\.dismiss) var dismiss
    
    @State private var stopSmoking = false
    @State private var stopSnusing = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    VStack {
                        Image(systemName: "pills.circle")
                            .font(.system(size: 80))
                            .padding()
                        Text("What do you want to quit?")
                            .bold()
                            .font(.title)
                        Text("")
                        Text("This app is your personal motivator.")
                            .font(.callout)
                        Text("Becoming tobacco-free is easier than you think")
                            .font(.callout)
                            .padding(.bottom, 20)
                        
                        Divider()
                        
                        Toggle("I want to stop smoking", isOn: $stopSmoking)
                            .padding()
                        Divider()
                        Toggle("I want to stop snusing", isOn: $stopSnusing)
                            .padding()
                        Divider()
                        
                        Spacer()
                        
                        
                        NavigationLink {
                            SlutteSnusInformationView(snus: Snus(numberOfSnusPerDay: 22, pricePerPackage: 84, piecesPerPackage: 24))
                        } label: {
                            ZStack {
                                Rectangle()
                                    .cornerRadius(25)
                                    .frame(width: 150, height: 50)
                                Text("Next")
                                    .foregroundStyle(Color.white)
                            }
                            
                        }
                        
                        
                    }
                    
                }
                
                
            }
        }
    }
}

#Preview {
    WhatDoYouWantToQuitView()
}
