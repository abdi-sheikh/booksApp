//
//  ContentView.swift
//  booksApp
//
//  Created by Abdi Sheikh on 2/1/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var getData = BooksViewModel()
    
    var body: some View {
        List(getData.data) { book in
            VStack(alignment: .leading){
                Text("Title: \(book.title)")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text("Subtitle: \(book.subtitle)")
                    .font(.subheadline)
                Text("Author: \(book.author)")
                    .font(.title2)
            }
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
