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
    /// -type: The tyoe of object we expect to get back 
    /// -completion: Callback with data or error
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping(Result<T, Error>) -> Void){
        
    }
    
    
}
