//
//  IconGrid.swift
//  LORT Converter
//
//  Created by Agata Porwit on 11/9/23.
//

import SwiftUI

struct IconGrid: View {
    @State var gridLayout = [GridItem(), GridItem(), GridItem()]
    @Binding var currency: Currency
    var body: some View {
        LazyVGrid(columns: gridLayout) {
            ForEach(0..<5) { i in
                if Currency.allCases[i] == currency {
                    CurrencyIcon(currencyImage: CurrencyImage.allCases[i].rawValue, currencyText: CurrencyText.allCases[i].rawValue)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 3)
                            .opacity(0.5))
                        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 9)
                } else {
                    CurrencyIcon(currencyImage:
                                    CurrencyImage.allCases[i].rawValue, currencyText:
                                    CurrencyText.allCases[i].rawValue)
                    .onTapGesture {
                        currency = Currency.allCases[i]
                    }
                    
                }
            }
        }
        .padding([.bottom, .leading, .trailing])
    }
}

#Preview {
    IconGrid(currency: .constant(.silverPiece))
}
