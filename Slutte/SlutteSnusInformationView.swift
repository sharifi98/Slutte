//
//  SlutteSnusInformationView.swift
//  Slutte
//
//  Created by Hossein Sharifi on 13/12/2023.
//

import SwiftUI

struct SlutteSnusInformationView: View {
    @State private var selectedNumberOfSnus = 10
    @State private var selectedPricePerPackage = 80
    @State private var selectedPiecesPerPackage = 24
    @State private var startDate: Date = Date()
    var snus: Snus

    var body: some View {
        NavigationStack {
            VStack {
                snusImageView
                numberOfSnusSection
                Divider()
                pricePerPackageSection
                Divider()
                piecesPerPackageSection
                Divider()
                
                HStack {
                    DatePicker("Snus-free since",
                               selection: $startDate,
                               displayedComponents: [.date, .hourAndMinute])
                }
                .padding()
           
                Spacer()
            }
        }
    }
    
    private var piecesPerPackageSection: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Pieces per package")
                    .bold()
                Text("Number of pieces in the package you used to buy")
                    .font(.caption)
            }
            Spacer()
            PiecePerPackage(selectedPiecesPerPackage: $selectedPiecesPerPackage)
            
        }
        .padding()
    }

    private var snusImageView: some View {
        Image(systemName: "circle.dashed")
            .font(.system(size: 80))
            .padding(40)
    }

    private var numberOfSnusSection: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Number of snus")
                    .bold()
                Text("The number of snus you used to take daily before you decided to quit")
                    .font(.caption)
            }
            Spacer()
            NumberOfSnusSection(selectedNumberOfSnus: $selectedNumberOfSnus)
        }
        .padding()
        
    }
    
    

    private var pricePerPackageSection: some View {
        HStack {
            Text("Price per package")
                .bold()
            Spacer()
            PricePerPackageSection(selectedPricePerPackage: $selectedPricePerPackage)
        }
        .padding()
    }
}

struct PiecePerPackage: View {
    var piecesPerPackage = 1...50
    @Binding var selectedPiecesPerPackage: Int
    var body: some View {
        Picker("Pieces per package", selection: $selectedPiecesPerPackage) {
            ForEach(piecesPerPackage, id: \.self) { piece in
                Text("\(piece)")
            }
        }
    }
}

struct PricePerPackageSection: View {
    var pricePerPackage = 10...150
    @Binding var selectedPricePerPackage: Int

    var body: some View {
        Picker("Price per package", selection: $selectedPricePerPackage) {
            ForEach(pricePerPackage, id: \.self) { price in
                Text("\(price)")
            }
        }
        .pickerStyle(.menu)
    }
}

struct NumberOfSnusSection: View {
    var numberOfSnus = 1...80
    @Binding var selectedNumberOfSnus: Int

    var body: some View {
        Picker("Number of snus", selection: $selectedNumberOfSnus) {
            ForEach(numberOfSnus, id: \.self) { number in
                Text("\(number)")
            }
        }
        .pickerStyle(.menu)
    }
}

#Preview {
    SlutteSnusInformationView(snus: Snus(numberOfSnusPerDay: 10, pricePerPackage: 80, piecesPerPackage: 24))
}


