//
//  RMService.swift
//  RickandMorty
//
//  Created by Mansoor on 30/04/2025.
//

import Foundation
/// Primary API service object to get Rick and Morty data
final class RMService{
    /// shared singleton instance
    static let shared = RMService()
    /// Privatized constructor
    private init(){}
    /// Send Rick and Morty API Call
    /// -parameters:
    /// -request: request instance
    /// -completion: Callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping() -> Void){
        
    }
    
    
}
