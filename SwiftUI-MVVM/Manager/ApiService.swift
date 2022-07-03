//
//  ApiService.swift
//  SwiftUI-MVVM
//
//  Created by mehmet  akyol on 3.07.2022.
//

import Foundation
import Alamofire

class ApiService {
    
    static let shared = { ApiService() }()
    
    func getData(urlString: String,
                 onSuccess: @escaping (PopularMovie) -> (),
                 failure: @escaping () -> ()) {
        ApiManager.shared.fetch(url: urlString, method: .get) { (response : PopularMovie) in
            onSuccess(response)
        } onError: { error in
            failure()
        }
    }
    
    func getCastData(urlString: String,
                 onSuccess: @escaping (CastModel) -> (),
                 failure: @escaping () -> ()) {
        ApiManager.shared.fetch(url: urlString, method: .get) { (response: CastModel) in
            onSuccess(response)
        } onError: { error in
            failure()
        }
    }
}
