//
//  ItemRow.swift
//  iDine
//
//  Created by Sonali Gosawi on 30/06/2026.
//

import SwiftUI

struct ItemRow: View {
    var item : MenuItem
    let colors: [String: Color] = ["D": .purple, "G": .black, "N": .red, "S": .blue, "V": .green]

    var body: some View {
        HStack{
            Image(item.thumbnailImage)
                .clipShape(.circle)
                .overlay(Circle().stroke(.gray, lineWidth: 2))
            VStack(alignment: .leading){
                Text(item.name)
                    .font(.headline)
                Text("$\(item.price)")
                
            }
            Spacer()
            ForEach(item.restrictions, id : \.self){ restriction in
                Text(restriction)
                    .font(.caption)
                    .fontWeight(.black)
                    .padding(5)
                    .background(colors[restriction, default: .black])
                    .clipShape(.circle)
                    .foregroundColor(.white)
                
            }
            
        }
        
    }
}

#Preview {
    ItemRow(item: MenuItem.example)
}
