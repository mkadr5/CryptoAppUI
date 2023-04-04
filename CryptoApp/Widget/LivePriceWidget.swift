//
//  LivePriceWidget.swift
//  CryptoApp
//
//  Created by Muhammet Kadir on 3.04.2023.
//

import SwiftUI
import Charts

struct LivePriceWidget: View {
    var name : String
    var price : Double
    var rate : Double
    var amount : Double
    var image : String
    
    var body: some View {
        HStack{
            ZStack{
                Image("iconbackground").resizable().frame(width: 48,height: 48)
                Image(image).resizable().frame(width: 13,height: 16)
            }
            Spacer()
            VStack(alignment:.leading){
                Text(name).fontWeight(.bold).foregroundColor(Color.orange).font(.cFont18)
                Text("-\(String(format: "%.2f", rate))%").foregroundColor(.gray).font(.cFont12)
            }
            Spacer()
            
            Spacer()
            VStack(alignment:.trailing){
                Text("$\(String(format: "%.2f", price))").font(.cFont16)
                Text("\(String(format: "%.2f", amount)) \(name)").foregroundColor(.gray).font(.cFont12)
            }
        }.padding(.horizontal,40).frame(width: 100.w,height: 88)
    }
}

struct LivePriceWidget_Previews: PreviewProvider {
    static var previews: some View {
        LivePriceWidget(name: "BTC", price: 24150.17, rate: 1.32,amount: 2.73, image: "btc")
    }
}
