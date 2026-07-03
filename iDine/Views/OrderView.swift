//
//  OrderView.swift
//  iDine
//
//  Created by Sonali Gosawi on 03/07/2026.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order : Order
    var body: some View {
        NavigationStack{
            List{
                Section{
                    ForEach(order.items, id: \.self){ item in
                        HStack{
                            Text(item.name)
                            Spacer()
                            Text("$\(item.price)")
                        }
                    }
                }
                Section{
                    NavigationLink("Place Order"){
                        Text("Checkout")
                    }
                }
            }
            .navigationTitle("Order")
        }
    }
}

#Preview {
    OrderView()
        .environmentObject(Order())
}
