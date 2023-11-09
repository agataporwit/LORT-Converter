//
//  SelectCurrency.swift
//  LORT Converter
//
//  Created by Agata Porwit on 11/9/23.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            Image("parchment")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .background(.black)
                //.padding(2)
            VStack {
                Text("Select currency")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
                //icons
                CurrencyIcon(currencyImage: "copperpenny", currencyText: "Copper Penny")
                
                CurrencyIcon(currencyImage: "silverpenny", currencyText: "Silver Penny")
                
                CurrencyIcon(currencyImage: "silverpiece", currencyText: "Silver Piece")

                CurrencyIcon(currencyImage: "goldpenny", currencyText: "Gold Penny")
                
                CurrencyIcon(currencyImage: "goldpiece", currencyText: "Gold Piece")
                
                
                Text ("Select the currency you would like to convert to: ")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
                    
                
                //icons
                
                Button("DONE") {
                    dismiss()
                }
                .font(.largeTitle).bold()
                .padding(8)
                .foregroundColor(.yellow)
                .background(.brown)
                .cornerRadius(10)
            }
        }
    }
}

struct SelectCurrency_Preview: PreviewProvider {
    static var previews: some View {
        SelectCurrency()
    }
}
