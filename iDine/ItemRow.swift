//
//  ItemRow.swift
//  iDine
//
//  Created by Sonali Gosawi on 30/06/2026.
//

import SwiftUI

struct ItemRow: View {
    var item : MenuItem
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
            
        }
        
    }
}

#Preview {
    ItemRow(item: MenuItem.example)
}
