//
//  ExpenseView.swift
//  ExpenseTracker
//
//  Created by Kiran Brahmatewari on 4/10/25.
//

import SwiftUI

// TODO Add expenses page
struct ExpenseView: View {
    @State private var expenseName: String = ""
    @State private var amount: Double = 0.0
    @State private var category: String = ""
    
    private let categories = ["Food", "Transport", "Entertainment", "Utilities", "Other"]
    
    // TODO Fix page formatting
    var body: some View {
        NavigationStack {
            VStack(spacing: 25) {
                expenseNameInputField
                amountInputField
                categoryInputField
                submitButton
            }
            .padding()
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Expenses")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                }
            }
        }
        .background(.red)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    @ViewBuilder
    private var expenseNameInputField: some View {
        TextField("Expense Name", text: $expenseName)
            .padding(10)
            .foregroundColor(.black)
            .font(.custom("HelveticaNeue", size: 17))
            .disableAutocorrection(true)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.white.opacity(0.1))
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.darkBlue, lineWidth: 1 / 4)
            )
    }
    
    @ViewBuilder
    private var amountInputField: some View {
        TextField("Amount", value: $amount, format: .number)
            .padding(10)
            .foregroundColor(.black)
            .font(.custom("HelveticaNeue", size: 17))
            .keyboardType(.decimalPad)
            .disableAutocorrection(true)
            .background(.white.opacity(0.1))
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.darkBlue, lineWidth: 1 / 4)
            )
    }
    
    @ViewBuilder
    private var categoryInputField: some View {
        Picker("Select Category", selection: $category) {
            Text("Select Category").tag("")
            ForEach(categories, id: \.self) { category in
                Text(category).tag(category)
            }
        }
        .foregroundColor(.black)
        .font(.custom("HelveticaNeue", size: 17))
        .background(.white.opacity(0.1))
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(.darkBlue, lineWidth: 1 / 4)
        )
    }
    
    @ViewBuilder
    private var submitButton: some View {
        Button(action: {
            Task {
                // Submit action
            }
        }) {
            Text("Submit")
                .font(.title3)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.darkBlue)
                .foregroundColor(.white)
                .clipShape(Capsule())
        }
    }
}

#Preview {
    ExpenseView()
}
