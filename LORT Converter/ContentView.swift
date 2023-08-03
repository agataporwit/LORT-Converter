//
//  ContentView.swift
//  LORT Converter
//
//  Created by Agata Porwit on 8/3/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            //backgrounnd
            Image("background")
                .resizable()  
                .edgesIgnoringSafeArea(.all)
            VStack {
                // pony image
                Image("prancingpony")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                // currancy exch.
                Text("CURRENCY EXCHANGE")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
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
                        Text("Text Field")
                    }
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
                        Text("Text field")
                    }
                }
                
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
            }
        }
    }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
}
