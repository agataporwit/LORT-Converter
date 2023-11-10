//
//  SelectCurrency.swift
//  LORT Converter
//
//  Created by Agata Porwit on 11/9/23.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    @Binding var leftCurrency: Currency
    @Binding var rightCurrency: Currency
    
    
    
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
                IconGrid(currency: $leftCurrency)
                
                Text ("Select the currency you would like to convert to: ")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
                
                IconGrid(currency: $rightCurrency)
                
                
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
        SelectCurrency(leftCurrency: .constant(.silverPiece), rightCurrency: .constant(.goldPiece))
    }
}
