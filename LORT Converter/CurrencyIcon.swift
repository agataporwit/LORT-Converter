//
//  CurrencyIcon.swift
//  LORT Converter
//
//  Created by Agata Porwit on 11/9/23.
//

import SwiftUI

struct CurrencyIcon: View {
    @State var currencyImage: String
    @State var currencyText: String
    
    var body: some View {
        ZStack{
            //currency image
            Image(currencyImage)
                .resizable()
                .scaledToFit()
            
            //currency text
            VStack {
                Spacer()
                
                Text(currencyText)
                    .padding(3)
                    .font(.caption)
                .background(.brown.opacity(0.75))
            }
        }
        .padding(3)
        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
        .background(.brown)
        .cornerRadius(10)
    }
}

struct CurrencyIcon_Preview: PreviewProvider {
    static var previews: some View {
        CurrencyIcon(currencyImage: "goldpenny", currencyText: "Gold Penny")
            .previewLayout(.sizeThatFits)
    }
}
