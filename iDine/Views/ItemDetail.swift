//
//  Itemdetail.swift
//  iDine
//
//  Created by Sonali Gosawi on 02/07/2026.
//

import SwiftUI

struct ItemDetail: View {
    let item : MenuItem
    @EnvironmentObject var order : Order
    var body: some View {
        VStack{
            ZStack(alignment: .bottomTrailing){
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit()
                    
                Text("Photo:\(item.photoCredit)")
                    .padding(4)
                    .background(.black)
                    .font(.caption)
                    .foregroundStyle(.white)
                    .offset(x: -5, y: -5)
            }
            
            Text(item.description)
                .padding()
            Button("Order This") {
                order.add(item: item)
                    
            }
            .buttonStyle(.borderedProminent)
            Spacer()
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle(item.name)
    }
}

#Preview {
    NavigationStack{
        ItemDetail(item: MenuItem.example)
            .environmentObject(Order())

    }
}
