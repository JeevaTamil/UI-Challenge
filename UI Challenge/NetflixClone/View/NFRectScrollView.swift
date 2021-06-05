//
//  NFRectScrollView.swift
//  UI Challenge
//
//  Created by Azhagusundaram Tamil on 05/06/21.
//

import SwiftUI



struct NFRectScrollView: View {
    var title: String
    var movieList: [Movie]
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Spacer()
            }
            .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    NFRectView(movieList: movieList)
                }
                .padding(.horizontal)
            }
        }
        .padding(.top)
    }
}


struct NFRectScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
            NFRectScrollView(title: "Treding Now", movieList: Movie.movies)
        }
    }
}

struct NFRectView: View {
    var movieList: [Movie]
    
    var body: some View {
        ForEach(movieList) { movie in
            Image(movie.imgName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
    }
}
