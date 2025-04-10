//
//  Expense.swift
//  ExpenseTracker
//
//  Created by Kiran Brahmatewari on 4/10/25.
//

import Foundation

struct Expense: Hashable, Identifiable, Codable {
    let id: String
    let name: String
    let amount: Double
    let category: String
}

// TODO Mock values for testing
