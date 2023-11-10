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
    @State var leftAmountTemp = ""
    @State var rightAmountTemp = ""
    @State var leftTyping = false
    @State var rightTyping = false
    @State var leftCurrency: Currency = .silverPiece
    @State var rightCurrency: Currency = .goldPiece
    @State var showSelectedCurrency = false
    @State var showExchangeInfo = false
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
                            Image(CurrencyImage.allCases[Currency.allCases.firstIndex(of: leftCurrency)!].rawValue)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 60)
                            
                            //currancy text
                            Text(CurrencyText.allCases[Currency.allCases.firstIndex(of: leftCurrency)!].rawValue)
                                .font(.headline)
                                .foregroundColor(.white)
                        }
                        .onTapGesture {
                            showSelectedCurrency.toggle()
                        }
                        .sheet(isPresented: $showSelectedCurrency){
                            SelectCurrency(leftCurrency: $leftCurrency, rightCurrency: $rightCurrency)
                        }
                        
                        //text filed
                        TextField("Amount", text: $leftAmount, onEditingChanged: {
                            typing in
                            leftTyping = typing
                            leftAmountTemp = leftAmount
                        })
                        .padding(7)
                        .background(Color(UIColor.systemGray4))
                        .cornerRadius(10)
                        .keyboardType(.decimalPad)
                        .onChange(of: leftTyping ? leftAmount: leftAmountTemp){ _
                            in
                            rightAmount = leftCurrency.convert(amountString: leftAmount, to: rightCurrency)
                        }
                        .onChange(of: leftCurrency) { _ in
                            leftAmount = rightCurrency.convert(amountString: rightAmount, to: leftCurrency)
                        }
                        
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
                            Text(CurrencyText.allCases[Currency.allCases.firstIndex(of: rightCurrency)!].rawValue)
                                .font(.headline)
                                .foregroundColor(.white)
                            //Currancy image
                            Image(CurrencyImage.allCases[Currency.allCases.firstIndex(of: rightCurrency)!].rawValue)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 60)
                        }
                        .onTapGesture {
                            showSelectedCurrency.toggle()
                        }
                        .sheet(isPresented: $showSelectedCurrency){
                            SelectCurrency(leftCurrency: $leftCurrency, rightCurrency: $rightCurrency)
                        }
                        //text field
                        TextField("Amount", text: $rightAmount, onEditingChanged: {
                            typing in
                            rightTyping = typing
                            rightAmountTemp = rightAmount
                        })
                        .padding(7)
                        .background(Color(UIColor.systemGray4))
                        .cornerRadius(10)
                        .multilineTextAlignment(.trailing)
                        .keyboardType(.decimalPad)
                        .onChange(of: rightTyping ? rightAmount: rightAmountTemp) {_
                            in
                            leftAmount = rightCurrency.convert(amountString: rightAmount, to: leftCurrency)
                        }
                        .onChange(of: rightCurrency) { _ in
                            rightAmount = leftCurrency.convert(amountString: leftAmount, to: rightCurrency)
                        }
                        
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
                        showExchangeInfo.toggle()
                    } label: {
                        Image(systemName: "info.circle.fill")
                        
                    }
                    .font(.largeTitle)
                    .foregroundColor(.yellow)
                    .padding(.trailing)
                    .sheet(isPresented: $showExchangeInfo) {
                        ExchangeInfoView()
                    }
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
