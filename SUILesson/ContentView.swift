//
//  ContentView.swift
//  SUILesson
//
//  Created by Aset Bakirov on 02.01.2024.
//

import SwiftUI

struct ContentView: View {
    
    var person: Person
    
    var body: some View {
        VStack {
            Image(person.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 290, height: 420)
                .clipShape(Rectangle())
                .overlay(Rectangle().stroke(Color.secondary, lineWidth: 1))
            Text(person.title)
                .bold()
            Text(person.genre)
            Text(person.description)
                .frame(width: 290)
        }
    }
}

#Preview {
    ContentView(person: Person(title: "The Matrix", genre: "Fantasy action", image: "matrix", description: "The Matrix is a 1999 science fiction action film written and directed by the Wachowskis. When computer programmer Thomas Anderson, under the hacker alias Neo, uncovers the truth, he joins a rebellion against the machines along with other people who have been freed from the Matrix."))
}
