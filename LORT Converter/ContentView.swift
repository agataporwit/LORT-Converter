//
//  ContentView.swift
//  LORT Converter
//
//  Created by Agata Porwit on 8/3/23.
//

import SwiftUI

struct ContentView: View {
    @State var leftAmount = ""
    @State var rightAmount = ""
    //var gold = #colorLiteral(red: 0.6715931057, green: 0.5809049137, blue: 0.3560904292, alpha: 1)
    var body: some View {
        ZStack {
            //backgrounnd
            Image("background")
                .resizable()
                .opacity(0.9)
                .edgesIgnoringSafeArea(.all)
            VStack {
                // pony image
                Image("prancingpony")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 300)
                // currancy exch.
                Text("CURRENCY EXCHANGE")
                    .font(.largeTitle).bold().italic()
                    .foregroundColor(.gray)
                   // .padding(.horizontal, 20)
                
                // conversion
                HStack {
                    // left conversion
                    VStack {
                        //currency
                        HStack {
                            //currancy image
                            Image("silverpiece")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 60)
                            
                            //currancy text
                            Text("Silver Piece")
                                .font(.headline)
                                .foregroundColor(.white)
                        }
                        //text filed
                        TextField("Silver Amount", text: $leftAmount)
                            .padding(7)
                            .background(Color(UIColor.systemGray4))
                            .cornerRadius(10)
                        
                        
                    }
                    .padding(.horizontal, 15)
                    // equal sign
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    
                    // right conv. section
                    
                    VStack {
                        //currency
                        HStack{
                            // currency text
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundColor(.white)
                            //Currancy image
                            Image("goldpiece")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 60)
                        }
                        //text field
                        TextField("Gold Amount", text: $rightAmount)
                            .padding(7)
                            .background(Color(UIColor.systemGray4))
                            .cornerRadius(10)
                            .multilineTextAlignment(.trailing)
                    }
                    .padding(.horizontal, 15)
                }
                .padding()
                .background(.black.opacity(0.5))
                .cornerRadius(30)
                .shadow(color: .yellow, radius: 60)
                Spacer()
                //info butotn
                HStack {
                    Spacer()
                    Button {
                        // Display exchange info screen
                    } label: {
                        Image(systemName: "info.circle.fill")
                        
                    }
                    .font(.largeTitle)
                .foregroundColor(.yellow)
                }
                .padding(.trailing)
            }
        }
    }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
}
