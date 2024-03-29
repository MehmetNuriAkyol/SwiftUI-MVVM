//
//  MovieModel.swift
//  SwiftUI-MVVM
//
//  Created by mehmet  akyol on 3.07.2022.
//

import Foundation

// MARK: - PopularMovieModel
struct PopularMovie: Codable {
    let page: Int?
    let results: [MovieDetail]?
    let totalPages, totalResults: Int?

    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

// MARK: - MovieDetail
struct MovieDetail: Codable {
    let adult: Bool?
    let backdropPath: String?
    let genreIDS: [Int]?
    let id: Int?
    let originalTitle, overview: String?
    let popularity: Double?
    let posterPath, releaseDate, title: String?
    let video: Bool?
    let voteAverage: Double?
    let voteCount: Int?
    let firstAirDate, name: String?
    let originCountry: [String]?
    let originalName: String?
    let gender: Int?
    let knownFor: [MovieDetail]?
    let knownForDepartment, profilePath: String?
    
    enum CodingKeys: String, CodingKey {
        case adult
        case backdropPath = "backdrop_path"
        case genreIDS = "genre_ids"
        case id
        case originalTitle = "original_title"
        case overview, popularity
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case title, video
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
        case firstAirDate = "first_air_date"
        case name
        case originCountry = "origin_country"
        case originalName = "original_name"
        case gender
        case knownFor = "known_for"
        case knownForDepartment = "known_for_department"
        case profilePath = "profile_path"
    }
}


