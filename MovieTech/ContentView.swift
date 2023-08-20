//
//  ContentView.swift
//  MovieTech
//
//  Created by Muhammad Fahmi on 20/08/23.
//

import SwiftUI

struct ContentView: View {
    let movieGenres = [
        "Action",
        "Adventure",
        "Animation",
        "Comedy",
        "Crime",
        "Drama",
        "Fantasy",
        "Horror",
        "Mystery",
        "Romance",
        "Sci-Fi",
        "Thriller",
        "Western"
    ]
    @State private var userGenre = "Action"
    
    var body: some View {
        NavigationView(){
            Form{
                Section{
                    Picker("Genre", selection: $userGenre){
                        ForEach(movieGenres, id: \.self){
                            Text($0)
                        }
                    }
                } header: {
                    Text("Pick your genre")
                }
                
                Section{
                    Text("")
                } header: {
                    Text("On-going Movies")
                }
                
                Section{
                    Text("\(userGenre)")
                } header: {
                    Text("Recommend for you")
                }
            }
            
            .navigationTitle("MovieTech")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
