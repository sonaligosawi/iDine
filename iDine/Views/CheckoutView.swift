//
//  CheckoutView.swift
//  iDine
//
//  Created by Sonali Gosawi on 04/07/2026.
//

import SwiftUI

struct CheckoutView: View {
    @EnvironmentObject var order : Order
    var paymenyTypes = ["Cash","Credit card","iDine Points"]
    @State private var paymentType = "Cash"
    @State private var addLoyaltyDetails = false
    @State private var loyaltyNumber: String = ""
    
    let tipAmounts = [10,15,20,25,0]
    @State private var tipAmount: Int = 10
    
    var totalPrice: String {
        let total = Double(order.total)
        let tip = total * Double(tipAmount) / 100
        return (total + tip).formatted(.currency(code: "USD"))
    }
    @State private var showingPaymentAlert = false
    
    var body: some View {
        Form{
            Section(){
                Picker("How do you want to pay?", selection: $paymentType){
                    ForEach(paymenyTypes, id: \.self){
                        Text($0)
                    }
                }
                Toggle("Add iDine loyalty card",isOn: $addLoyaltyDetails.animation())
                
                if addLoyaltyDetails{
                    TextField("Enter your iDine number", text: $loyaltyNumber)
                }
                
            }
            Section("Add a tip"){
                Picker("Enter tip amount", selection: $tipAmount){
                    ForEach(tipAmounts, id: \.self){
                        Text("\($0)%")
                    }
                }
                .pickerStyle(.segmented)
            }
            Section("Total: \(totalPrice)"){
                Button("Proceed to payment"){
                    showingPaymentAlert.toggle()
                }
            }
        }
        .navigationTitle("Payment")
        .navigationBarTitleDisplayMode(.inline)
        .alert("Order Confirmed", isPresented: $showingPaymentAlert) {
            
        }message:{
            Text("Your total was \(totalPrice)- thank you!")
        }
    }
}

#Preview {
    CheckoutView()
        .environmentObject(Order())
}
