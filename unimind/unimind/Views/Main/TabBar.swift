//
//  TabBar.swift
//  unimind
//
//  Created by Akshara Kollu on 10/7/23.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            CategoriesView()
                .tabItem {
                    Label("Categories", systemImage: "square.fill.text.grid.1x2")
                }
            AddInstructionView()
                .tabItem {
                    Label("New", systemImage: "plus")
                }
            SettingsView()
                .tabItem {
                    Label("Home", systemImage: "gear")
                }
        }
    }
}

struct TabBar_Preview: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
