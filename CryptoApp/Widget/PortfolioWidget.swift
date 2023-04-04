//
//  PortfolioWidget.swift
//  CryptoApp
//
//  Created by Muhammet Kadir on 3.04.2023.
//

import SwiftUI

struct PortfolioWidget: View {
    var name : String
    var price : Double
    var rate : Double
    var image : String

    var body: some View {
        VStack(alignment: .leading){
            HStack{
                VStack(alignment: .leading){
                    Text(name).fontWeight(.bold).foregroundColor(Color.black).font(.cFont16)
                    Text("Portfolio").foregroundColor(Color.gray).font(.cFont10)
                }
                Spacer()
                ZStack{
                    Image("iconbackground").resizable().frame(width: 42,height: 42)
                    Image(image).resizable().frame(width: 10,height: 14)
                }
            }.padding(.top,20).padding(.horizontal,20)
            Spacer()
            HStack{
                Text("$\(String(format: "%.3f", price))").font(.cFont26)
                Spacer()
                Text("+\(String(format: "%.1f", rate))%").foregroundColor(.green).font(.cFont16)
                Image(systemName: "arrow.up").foregroundColor(.green).scaleEffect(0.7)
            }.padding(.bottom,20).padding(.horizontal,20)
        }.frame(width: 220,height: 140).background(Color(hue: 1.0, saturation: 0.0, brightness: 0.367, opacity: 0.05)).cornerRadius(25)
    }
}

struct PortfolioWidget_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioWidget(name: "BTC", price: 10.123, rate: 8.1,image: "btc")
    }
}
