//
//  RMRequest.swift
//  RickandMorty
//
//  Created by Mansoor on 30/04/2025.
//

import Foundation
/// Object that represnts a  single API call
final class RMRequest{
    // base url
    //Endpoint
    //path components
    //Query parameters
    
    
    /// API constants
    
    private struct Constants{
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    /// Desired endpoint
   private let endpoint:RMEndpoint
    
    /// path components for API if any
   private let pathComponents: Set<String>
    
    /// query arguments for API, if any
   private let queryParameters:[URLQueryItem]
    
    // constructed url for the api request in string format
    private var urlString:String{
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty{
            pathComponents.forEach
            { string += "/\($0)/" }
        }
        
        
        if !queryParameters.isEmpty{
            string += "?"
            // name = value&name=value
            let argumentString = queryParameters.compactMap ({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            string += argumentString
        }
        
        return string
    }
    /// Computed & constructed  API url
    public var url:URL? {
        return URL(string: urlString)
    }
    /// Desired http method
    public let httpMethod = "GET"
    
    // MARK: - Public
    
    /// Construct request
    /// -Parameters
    /// -endpoint: target end point
    ///  - pathComponents : collection of path  components
    ///  -queryParameters:  Collection of query parameters
    ///
    public init(endpoint: RMEndpoint, pathComponents: Set<String> = [] , queryParameters: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
    
    
}
