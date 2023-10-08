//
//  CategoriesView.swift
//  unimind
//
//  Created by Akshara Kollu on 10/7/23.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        NavigationView {
            List(Category.allCases, id: \.self) { category in
                let filteredInstructions = Instructions.all.filter { $0.category == category.rawValue }
                NavigationLink(destination: InstructionList(instructions: filteredInstructions)) {
                    Text(category.rawValue)
                }
            }
            .navigationTitle("Categories")
        }
        .navigationViewStyle(.stack)
    }
}

struct CategoriesView_Preview: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
