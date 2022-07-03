//
//  ContentView.swift
//  SwiftUI-MVVM
//
//  Created by mehmet  akyol on 3.07.2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = MainViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.movies, id: \.id) {
                    MovieCell(movie: $0)
                }
            }
            .listStyle(.inset)
            .navigationTitle("Movies")
        }
        .onAppear {
            viewModel.getInitialData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
