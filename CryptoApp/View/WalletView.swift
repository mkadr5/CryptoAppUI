//
//  ContentView.swift
//  CryptoApp
//
//  Created by Muhammet Kadir on 2.04.2023.
//

import SwiftUI

struct WalletView: View {
    var body: some View {
        VStack{
            HStack(alignment: .center){
                Image("pphoto").resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white,lineWidth: 3))
                    .shadow(radius: 15)
                    .frame(width: 80,height:80)
                Spacer()
                Circle()
                    .stroke(Color.gray.opacity(0.4), lineWidth: 1)
                    .overlay(
                        Image(systemName: "line.horizontal.3")
                    ).shadow(radius: 15).frame(width: 40,height:40).padding()
            }.frame(width: 85.w)
            
            ZStack{
                Image("rectangle")
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
                    Text("Sell").foregroundColor(Color(red: 0.3176470588235294, green: 0.28627450980392155, blue:0.9686274509803922)).fontWeight(.medium).frame(width: 65.w,height: 40).background(.white).cornerRadius(10).font(.cFont14)
                    Spacer()
                }
                
            }.frame(width: 311,height: 199)
            HStack(alignment: .center){
                Text("My Portfolio").font(.cFont16)
                Spacer()
                Text("See all").padding(.horizontal,15).padding(.vertical,4).foregroundColor(Color(red: 0.3176470588235294, green: 0.28627450980392155, blue:0.9686274509803922)).font(.cFont10).overlay(RoundedRectangle(cornerRadius: 5)
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
                Text("See all").padding(.horizontal,15).padding(.vertical,4).foregroundColor(Color(red: 0.3176470588235294, green: 0.28627450980392155, blue:0.9686274509803922)).font(.cFont10).overlay(RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.gray.opacity(0.6), lineWidth: 1))
            }.frame(width: 311).padding(.vertical )
            
            
            VStack{
                LivePriceWidget(name: "BTC", price: 24150.17, rate: 1.32,amount: 2.73, image: "btc").background(Color(hue: 1.0, saturation: 0.0, brightness: 0.367, opacity: 0.05))
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
