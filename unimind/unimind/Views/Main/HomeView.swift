//
//  HomeView.swift
//  unimind
//
//  Created by Akshara Kollu on 10/7/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                InstructionList(instructions: Instructions.all)
            }
            .navigationTitle("Fitness/Mental Health")
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Preview: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
