//
//  CheckoutView.swift
//  iDine
//
//  Created by Sonali Gosawi on 04/07/2026.
//

import SwiftUI

struct CheckoutView: View {
    @EnvironmentObject var order : Order
    var paymenyTypes = ["Cash","Credit card","iDine points"]
    @State private var paymentType = "Cash"
    var body: some View {
        VStack{
            Section(){
                Picker("Payment Type", selection: $paymentType){
                    ForEach(paymenyTypes, id: \.self){
                        Text($0)
                    }
                }
            }
        }
    }
}

#Preview {
    CheckoutView()
        .environmentObject(Order())
}
