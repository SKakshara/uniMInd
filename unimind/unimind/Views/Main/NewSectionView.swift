//
//  NewSectionView.swift
//  unimind
//
//  Created by Akshara Kollu on 10/7/23.
//

import SwiftUI

struct NewSectionView: View {
    @State private var showAddInstruction = false
    
    var body: some View {
        NavigationView {
            Button("Add Workout Manually"){
                showAddInstruction = true
            }
                .navigationTitle("New Section")
        }
        .navigationViewStyle(.stack)
        .sheet(isPresented: $showAddInstruction) {
            AddInstructionView()
        }
    }
}

struct NewSection_Preview: PreviewProvider {
    static var previews: some View {
        NewSectionView()
    }
}
