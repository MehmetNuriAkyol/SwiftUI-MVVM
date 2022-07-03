//
//  MovieCell.swift
//  SwiftUI-MVVM
//
//  Created by mehmet  akyol on 3.07.2022.
//

import SwiftUI

struct MovieCell: View {
    
    var movie: MovieDetail
    
    var body: some View {
        HStack(alignment: .center) {
            let urlString = Constants.EndPoints.imageBaseUrl + (movie.posterPath ?? "")
            AsyncImage(url: URL(string: urlString))  { image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder: {
                Color.purple.opacity(0.1)
            }
            .frame(width: 90 , height: 135)
            .cornerRadius(20)
            VStack(alignment: .leading) {
                Text(movie.originalTitle ?? "")
                    .font(.title3)
                    .foregroundColor(.primary)
                Text(movie.releaseDate ?? "")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct MovieCell_Previews: PreviewProvider {
    static var previews: some View {
        MovieCell(movie: MovieDetail(adult: nil, backdropPath: nil, genreIDS: nil, id: nil, originalTitle: "test title", overview: nil, popularity: nil, posterPath: nil, releaseDate: "12/03/2022", title: nil, video: nil, voteAverage: nil, voteCount: nil, firstAirDate: nil, name: nil, originCountry: nil, originalName: nil, gender: nil, knownFor: nil, knownForDepartment: nil, profilePath: nil))
    }
}
