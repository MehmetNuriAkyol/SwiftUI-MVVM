//
//  MainViewModel.swift
//  SwiftUI-MVVM
//
//  Created by mehmet  akyol on 3.07.2022.
//

import Foundation

class MainViewModel: ObservableObject {
    
    @Published var movies = [MovieDetail]()
    
    func getInitialData() {
        let url = ApiManager.shared.generateURLString(with: Constants.EndPoints.popularMovie)
        ApiService.shared.getData(urlString: url) { movies in
            DispatchQueue.main.async { [weak self] in
                self?.movies = movies.results ?? [MovieDetail]()
            }
        } failure: {
            print("failure")
        }

    }
    
}
