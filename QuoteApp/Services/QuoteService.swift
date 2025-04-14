//
//  QuoteService.swift
//  QuoteApp
//
//  Created by Grace couch on 14/04/2025.
//
import SwiftUI


protocol QuoteService {
    func getQuote() async throws -> Quote
    
}
