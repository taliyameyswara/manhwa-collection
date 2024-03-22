//
//  ContentView.swift
//  ManhwaCollection
//
//  Created by Taliya Meyswara on 21/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack{
            VStack{
                ListManhwaView()
            }
            .ignoresSafeArea()
    
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    Text("Manhwa Collection💥")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.bottom,20)
                }
                ToolbarItem(placement: .topBarTrailing){
                    NavigationLink{
                        ProfileView()
                    }label: {
                        Image(systemName: "person.crop.circle")
                    }
                    .padding(.bottom,20)
                }
            }
            .toolbarColorScheme(.light, for: .navigationBar)
            .toolbarBackground(.white, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            
            
            .navigationDestination(for: Manhwa.self){ manhwa in
                ManhwaDetailView(manhwa: manhwa)
            }
        }
        }
      
    }

#Preview {
    ContentView()
}

struct GenreField: View {
    var genre : String
    var body: some View {
        Text(genre)
            .font(.custom("genre", size: 11))
            .padding(.all, 5)
            .background(Color(.systemGray6))
            .cornerRadius(5)
    }
}

struct ImageThumbnail: View {
    var imageFile : String
    var body: some View {
        Image(imageFile)
            .resizable()
            .scaledToFill()
            .frame(width: 100, height: 140)
            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 5, height: 5)))
    }
}

struct TitleView: View {
    var title : String
    var author : String
    var body: some View {
        Text(title)
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .font(.title3)
        Text(author)
            .font(.caption)
            .foregroundStyle(.gray)
    }
}

struct RatingView: View {
    var rating : String
    var body: some View {
        HStack(alignment: .center){
            Image(systemName: "star.fill")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 15, height: 15)
            Text(rating)
                .font(.custom("rating", size: 14))
                .opacity(0.7)
        }
    }
}

struct ListManhwaView: View {
    var body: some View {
        List{
            ForEach(GetData.manhwaData){ manhwa in
                HStack(spacing:12){
                    ImageThumbnail(imageFile: manhwa.posterImage)
                    VStack(alignment:.leading, spacing: 7){
                        TitleView(title: manhwa.title, author: manhwa.author)
                        HStack{
                            ForEach(manhwa.genre, id: \.self){
                                genre in
                                GenreField(genre: genre)
                            }
                        }
                        VStack(alignment:.leading){
                            RatingView(rating: "\(manhwa.rating)")
                            NavigationLink(value: manhwa){
                                Text("Learn more")
                            }
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                .font(.caption)
                                .padding(.top, 5)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        }
                    }
                    .padding([.top,.bottom], 5)
                }
            }
        }
        .padding(.top, 90)
    }
}
