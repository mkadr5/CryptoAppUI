//
//  ContentView.swift
//  CryptoApp
//
//  Created by Muhammet Kadir on 2.04.2023.
//

import SwiftUI

struct WalletView: View {
    var body: some View {
        ScrollView{
            HStack(alignment: .center){
                Image("pphoto").resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white,lineWidth: 3))
                    .shadow(radius: 15)
                    .frame(width: 20.w,height:20.w)
                Spacer()
                Circle()
                    .stroke(Color.gray.opacity(0.4), lineWidth: 1)
                    .overlay(
                        Image(systemName: "line.horizontal.3")
                    ).shadow(radius: 15).frame(width: 10.w,height:10.w).padding()
            }.frame(width: 85.w)
            Spacer()
            ZStack{
                Image("rectangle").resizable().frame(width: 80.w,height: 23.h)
                VStack{
                    Spacer()
                    Text("Total balance").foregroundColor(.white).opacity(0.6).font(.cFont14)
                    Spacer()
                    HStack(alignment: .center){
                        Text("132.456,99").foregroundColor(.white).font(.cFont38).fontWeight(.bold)
                        Text("BTC").foregroundColor(.white).opacity(0.6).font(.cFont14).fontWeight(.bold)
                    }
                    Spacer()
                    HStack(alignment: .center){
                        Text("120.912,02").foregroundColor(.white).font(.cFont10).fontWeight(.bold)
                        Text("+8,1%").foregroundColor(.white).opacity(0.6).font(.cFont10).fontWeight(.bold)
                        Image(systemName: "arrow.up").foregroundColor(.white).opacity(0.6).scaleEffect(0.7)
                    }
                    Spacer()
                    Text("Sell").foregroundColor(.color1).fontWeight(.medium).frame(width: 65.w,height: 40).background(.white).cornerRadius(10).font(.cFont14)
                    Spacer()
                }
            }.frame(width: 80.w,height: 20.h)
            Spacer()
            HStack(alignment: .center){
                Text("My Portfolio").font(.cFont16)
                Spacer()
                Text("See all").padding(.horizontal,15).padding(.vertical,4).foregroundColor(.color1).font(.cFont10).overlay(RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.gray.opacity(0.6), lineWidth: 1))
            }.frame(width: 311).padding(.vertical )
            
            ScrollView(.horizontal,showsIndicators: false){
                HStack{
                    PortfolioWidget(name: "BTC", price: 12.434, rate: 8.1,image: "btc")
                    PortfolioWidget(name: "BTC", price: 12.434, rate: 8.1,image: "btc")
                    PortfolioWidget(name: "BTC", price: 12.434, rate: 8.1,image: "btc")
                }.padding(.horizontal,40)
            }
            HStack(alignment: .center){
                Text("Live Prices").font(.cFont16)
                Spacer()
                Text("See all").padding(.horizontal,15).padding(.vertical,4).foregroundColor(.color1).font(.cFont10).overlay(RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.gray.opacity(0.6), lineWidth: 1))
            }.frame(width: 311).padding(.vertical )
            
            
            VStack(spacing: 0){
                LivePriceWidget(name: "BTC", price: 24150.17, rate: 1.32,amount: 2.73, image: "btc").background(Color(hue: 1.0, saturation: 0.0, brightness: 0.367, opacity: 0.08))
                LivePriceWidget(name: "BTC", price: 24150.17, rate: 1.32,amount: 2.73, image: "btc")
                LivePriceWidget(name: "BTC", price: 24150.17, rate: 1.32,amount: 2.73, image: "btc").background(Color(hue: 1.0, saturation: 0.0, brightness: 0.367, opacity: 0.08))
                LivePriceWidget(name: "BTC", price: 24150.17, rate: 1.32,amount: 2.73, image: "btc")
            }
            Spacer()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WalletView()
    }
}
