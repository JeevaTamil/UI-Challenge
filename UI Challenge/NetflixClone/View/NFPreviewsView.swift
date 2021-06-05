//
//  NFPreviewsView.swift
//  UI Challenge
//
//  Created by Azhagusundaram Tamil on 05/06/21.
//

import SwiftUI


struct NFPreviewsView: View {
    @Binding var selectedMovie: Movie
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Previews")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Spacer()
            }
            .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    NFPreviewCricleView(selectedMovie: $selectedMovie)
                }
                .padding(.horizontal)
            }
        }
      
    }
}

struct NFPreviewsView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
            NFPreviewsView(selectedMovie: .constant(.moneyHeist))
            
        }
    }
}

struct NFPreviewCricleView: View {
    
    @Binding var selectedMovie: Movie
    @EnvironmentObject var nfViewModel: NFViewModel
    
    var body: some View {
        ForEach(Movie.movies) { movie in
            Image(movie.imgName)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100, alignment: .center)
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(Color.yellow)
                )
                .onTapGesture {
                    nfViewModel.isPosterDisplay.toggle()
                    selectedMovie = movie
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        nfViewModel.isPosterDisplay.toggle()
                    }
                }
        }
       
    }
}
