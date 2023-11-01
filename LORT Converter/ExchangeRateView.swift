//
//  ExchangeRateView.swift
//  LORT Converter
//
//  Created by Agata Porwit on 8/3/23.
//

import SwiftUI

struct ExchangeRateView: View {
    @State var leftImage: String
    @State var text: String
    @State var rightImage: String
    
    var body: some View {
        HStack {
            // left exchange
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 30)
            //exchange text
            Text("1 Gold Piece = 4 Gold Pennies")
            
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 30)
            //right currency
        }
    }
}

struct ExchangeRateView_Previews: PreviewProvider {
    static var previews: some View {
        ExchangeRateView(leftImage: "goldpenny", text: "1 Gold Penny = 4 Silver Pieces", rightImage: "silverpiece")
            .previewLayout(.sizeThatFits)
    }
}

