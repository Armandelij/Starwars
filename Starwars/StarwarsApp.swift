//
//  StarwarsApp.swift
//  Starwars
//
//  Created by Elijah Armande on 6/13/23.
//

import SwiftUI

@main
struct StarwarsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(people: PeopleList(count: 1, next: "1", results: []))
        }
    }
}
