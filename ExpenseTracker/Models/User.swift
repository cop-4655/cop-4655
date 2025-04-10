//
//  User.swift
//  ExpenseTracker
//
//  Created by Kiran Brahmatewari on 4/10/25.
//

import Foundation

struct User: Hashable, Identifiable, Codable {
    let id: String
    let username: String
    let password: String
    let email: String
}

// TODO Mock values for testing
