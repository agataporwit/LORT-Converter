//
//  ExchangeInfoView.swift
//  LORT Converter
//
//  Created by Agata Porwit on 8/3/23.
//

import SwiftUI

struct ExchangeInfoView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Image("parchment")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .padding(2)
            //.background(.black)
            VStack{
                //title
                Text ("Exchange Rates")
                    .font(.largeTitle).bold().italic()
                
                //body text
                Text ("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title3)
                    .padding(20)
                
                //exchange rates
                ExchangeRateView(leftImage: "goldpiece", text: "1 Gold Piece = 4 Gold Pennies ", rightImage: "goldpenny")
                
                ExchangeRateView(leftImage: "goldpenny", text: "1 Golden Penny = 4 Golden Pieces", rightImage: "silverpiece")
                
                ExchangeRateView(leftImage: "silverpiece", text: "1 Silver Piece = 4 Solver Pennies", rightImage: "silverpenny")
                
                ExchangeRateView(leftImage: "silverpenny", text: "1 Silver Pennny = 100 Copper Pennies", rightImage: "copperpenny")
                //button
                
                Button("Done") {
                    dismiss()
                }
                .font(.largeTitle).bold()
                .padding(8)
                .foregroundColor(.yellow)
                .background(.brown)
                .cornerRadius(10)
            }
            .foregroundColor(.black)
            
        }
    }
}

struct ExchangeInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ExchangeInfoView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
