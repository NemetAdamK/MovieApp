//
//  MoviesViewModel.swift
//  MovieApp
//
//  Created by Ádám-Krisztián Német on 11.05.2021.
//

import Foundation

class MovieViewModel: ObservableObject {
    
    @Published var movies = [Movie]()

    func fetchMovies(searchText : String)
    {
        var url = ""
        if searchText == "" {
            url = DefaultKeys.k_popularMoviesURL
        } else {
            url = "\(DefaultKeys.k_searchedMoviesURL)\(searchText)"
        }
        
        MovieService.sharedInstance.fetchPopularMoviesData(url: url, completion: { result in
            self.movies = result
        })
    }

}
