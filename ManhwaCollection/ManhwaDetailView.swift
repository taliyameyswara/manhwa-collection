//
//  ManhwaDetailView.swift
//  ManhwaCollection
//
//  Created by Taliya Meyswara on 21/03/24.
//

import SwiftUI

struct ManhwaDetailView: View {
    var manhwa: Manhwa
    @State private var isShowingSafariView = false
    var body: some View {
       
        VStack{
            ZStack{
                ScrollView{
                    VStack{
                        Image(manhwa.posterImage)
                            .resizable()
                            .scaledToFill()   
                            .aspectRatio(contentMode: .fill)
                            .background(ignoresSafeAreaEdges: .top)
                            .frame(maxHeight: 300)
                        
                        DescriptionView(manhwa: manhwa)
                            .padding()
                            .padding(.top)
                            .background(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                .fill(.white))
                            .offset(x: 0, y: -30.0)
                        Button {
                            isShowingSafariView = true
                        } label: {
                            Label("Read", systemImage: "book.fill")
                                .frame(maxWidth: .infinity)
                        }
                        .buttonStyle(.bordered)
                        .controlSize(.large)
                        .tint(.blue)
                        .padding()
                        .padding(.bottom, 10)
                        
                    
                    }
                }
                .ignoresSafeArea()
            }
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: manhwa.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    ManhwaDetailView(manhwa: GetData.sampleData)
}



struct DetailView: View {
    
    let label : String
    let value : String
    
    var body: some View {
        VStack(alignment: .leading){
            Text(label)
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundStyle(.gray)
            Text(value)
                .padding(.bottom, 5)
        }
        
    }
}

struct DescriptionView: View {
    var manhwa: Manhwa
    @State private var isBookmark = false
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            HStack{
                Text(manhwa.title)
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Spacer()
                Button {
                    isBookmark.toggle()
                } label: {
                    Image(systemName: isBookmark ? "bookmark.fill" : "bookmark")
                        .frame(width: 20, height: 20)
                }
                .buttonStyle(.bordered)
                .controlSize(.regular)
                .tint(.gray)
            }
            RatingView(rating: "\(manhwa.rating) / 10")
            HStack{
                ForEach(manhwa.genre, id: \.self){
                    genre in
                    GenreField(genre: genre)
                }
            }
            HStack (alignment: .top) {
                VStack (alignment: .leading) {
                    DetailView(label: "Release Date", value: manhwa.releaseDate)
                    DetailView(label: "Author", value: manhwa.author)
                }
                
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer()
                
                VStack (alignment: .leading) {
                    DetailView(label: "Status", value: manhwa.status)
                    DetailView(label: "Total Chapter", value: "\(manhwa.totalChapter)")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.vertical, 10)
            SynopsisView(manhwa: manhwa)
        }
    }
}

struct SynopsisView: View {
    var manhwa: Manhwa
    var body: some View {
        VStack(alignment: .leading){
            Text("Sinopsis")
                .font(.title2)
                .fontWeight(.semibold)
            Text(manhwa.sinopsis)
                .font(.subheadline)
        }
        
    }
}
