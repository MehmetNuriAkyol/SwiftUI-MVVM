//
//  ApiManager.swift
//  SwiftUI-MVVM
//
//  Created by mehmet  akyol on 3.07.2022.
//

import Foundation
import Alamofire

class ApiManager {
    
    static let shared = { ApiManager() }()
    
    func fetch<T>(url: String,
                  method: HTTPMethod,
                  onSuccess: @escaping (T) -> Void,
                  onError: @escaping (AFError) -> Void) where T: Codable {
        
        AF.request(url , method: method).validate().responseDecodable(of: T.self) { response in
            guard let model = response.value else {
                onError(response.error!)
                return
            }
            onSuccess(model)
        }
    }
    
    func generateURLString(with enpoint: String, searchKey: String? = nil) -> String {
        return Constants.EndPoints.baseURL + enpoint + Constants.EndPoints.apiKey + (searchKey ?? "")
    }
}
