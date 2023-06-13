//
//  ContentView.swift
//  Starwars
//
//  Created by Elijah Armande on 6/13/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var people: PeopleList 
    
    var body: some View {
        NavigationView {
            
        List(people.results) { people in
            NavigationLink(destination: PeopleView()) {
                Text(people.name)
            }
                }
        .navigationTitle("StarWars Characters")
            .onAppear {
                Api().getAPI { (people) in
                    self.people = people
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(people: PeopleList(count: 1, next: "1", results: []))
    }
}
