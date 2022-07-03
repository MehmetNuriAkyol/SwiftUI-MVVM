//
//  Image+Extension.swift
//  SwiftUI-MVVM
//
//  Created by mehmet  akyol on 3.07.2022.
//

import Foundation
import SwiftUI
import Alamofire

extension Image {
    func downloadImages(imageURL: String) {
        AF.request(imageURL, method: .get)
            .validate()
            .responseData(completionHandler: { (responseData) in
                DispatchQueue.main.async {
                    if let data = responseData.data {
                        Image(uiImage: UIImage(data: data)!)
                    } else {
                        Image(uiImage: UIImage(systemName: "envelope")!)
                    }
                }
            })
    }
}
