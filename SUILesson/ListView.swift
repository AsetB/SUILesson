//
//  ListView.swift
//  SUILesson
//
//  Created by Aset Bakirov on 02.01.2024.
//

import SwiftUI

struct Person: Identifiable {
    var id = UUID()
    var title = ""
    var genre = ""
    var image = ""
    var description = ""
}

struct PersonRow: View {
    
    var person: Person
    
    var body: some View {
        
        HStack {
            Image(person.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 90, height: 120)
                .clipShape(Rectangle())
                .overlay(Rectangle().stroke(Color.secondary, lineWidth: 1))
            VStack(alignment: .leading) {
                Text(person.title)
                    .bold()
                Text(person.genre)
            }
        }
    }
}

struct ListView: View {
    var persons = [Person(title: "The Matrix", genre: "Fantasy action", image: "matrix", description: "The Matrix is a 1999 science fiction action film written and directed by the Wachowskis. When computer programmer Thomas Anderson, under the hacker alias Neo, uncovers the truth, he joins a rebellion against the machines along with other people who have been freed from the Matrix."),
                   Person(title: "The Dark Knight", genre: "Fantasy thriller", image: "darkknight", description: "The Dark Knight is a 2008 superhero film directed by Christopher Nolan. The plot follows the vigilante Batman, police lieutenant James Gordon, and district attorney Harvey Dent, who form an alliance to dismantle organized crime in Gotham City. Their efforts are derailed by the Joker, an anarchistic mastermind who seeks to test how far the Batman will go to save the city from chaos."),
                   Person(title: "The Lord of the Rings", genre: "Fantasy adventure", image: "lordoftherings", description: "The Lord of the Rings is a series of three epic fantasy adventure films directed by Peter Jackson, based on the novel The Lord of the Rings by British author J. R. R. Tolkien. The films are subtitled The Fellowship of the Ring (2001), The Two Towers (2002), and The Return of the King (2003)."),
                   Person(title: "Inception", genre: "Fantasy action", image: "inception", description: "Inception is a 2010 science fiction action film written and directed by Christopher Nolan. The film stars Leonardo DiCaprio as a professional thief who steals information by infiltrating the subconscious of his targets. He is offered a chance to have his criminal history erased, as payment for the implantation of another person's idea into a target's subconscious"),
                   Person(title: "Bladerunner 2049", genre: "Cyberpunk", image: "bladerunner", description: "Blade Runner 2049 is a 2017 American epic neo-noir science fiction film directed by Denis Villeneuve.Young Blade Runner K's discovery of a long-buried secret leads him to track down former Blade Runner Rick Deckard, who's been missing for thirty years.")]
    
    var body: some View {
        NavigationView {
            List(persons) { item in
                NavigationLink(destination: ContentView(person: item)) {
                    
                    PersonRow(person: item)
                    
                }
            }
            .navigationTitle("List")
        }
    }
}

#Preview {
    ListView()
}
