//
//  Constants.swift
//  SwiftUI-MVVM
//
//  Created by mehmet  akyol on 3.07.2022.
//

import Foundation
import UIKit

struct Constants {
    
    struct Colors {
        static let backgroundColor = UIColor.systemGray3
        static let mainCollectionViewBackgroundColor = UIColor.systemGray5
    }
    
    struct Common {
        static let query = "&query="
        static let movies = "Movies"
        static let peoples = "Peoples"
        static let searchBarPlaceHolder = "Search movie, artist, genre"
        static let failAlertTitle = "Something went wrong :("
        static let alertOk = "Ok"
        static let detailCollectionViewHeaderTitle = "Cast"
        static let detailCollectionViewMovieHeaderTitle = "Played Movies"
        static let detailVoteLabelText = "Vote : "
    }
    
    struct EndPoints {
        static let baseURL = "https://api.themoviedb.org/3/"
        static let imageBaseUrl = "https://image.tmdb.org/t/p/w500"
        static let multiSearch = "search/multi?"
        static let popularMovie = "movie/popular?"
        static let apiKey = ApiKey.key
        static let images = "person/"
        static let movies = "movie/"
        static let credits = "/credits?"
    }
    
    struct Constraints {
        static let mainScreenPadding = 16.0
        static let mainScreenCellHeight = 170.0
        static let mainScreenHeaderHight = 70.0
        static let searchBarHeight = 60
        static let loadingViewHeight = 90
        static let cornerRadius = 8.0
        static let detailScreenImageHeight = 150.0
        static let detailScreenImageWidth = 120.0
        static let detailScreenDetailLabelHeight = 150.0
    }
}
