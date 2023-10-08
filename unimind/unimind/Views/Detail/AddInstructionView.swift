//
//  AddInstructionView.swift
//  unimind
//
//  Created by Akshara Kollu on 10/7/23.
//

import SwiftUI

struct AddInstructionView: View {
    @State private var name: String = ""
    @State private var selectedCategory: Category = Category.fitness
    @State private var equipment: String = ""
    @State private var directions: String = ""
    @State private var navigateToInstruction = false
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Name")){
                    TextField("Name", text: $name)
                }
                Section(header: Text("Category")){
                    Picker("Category", selection: $selectedCategory) {
                        ForEach(Category.allCases, id: \.self) { category in
                            Text(category.rawValue)
                                .tag(category)
                        }
                    }
                    .pickerStyle(.menu)
                }
                Section(header: Text("Equipment")){
                    TextEditor(text: $equipment)
                }
                Section(header: Text("Directions: ")){
                    TextEditor(text: $directions)
                }
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading){
                    Button{
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                            .labelStyle(.iconOnly)
                    }
                }
                ToolbarItem(){
                    NavigationLink(
                        destination: InstructionView(instruction: Instructions.all[0])
                            .navigationBarBackButtonHidden(true),
                        label: {
                            Button{
                               
                            } label: {
                                Label("done", systemImage: "checkmark")
                                    .labelStyle(.iconOnly)
                            }
                        }
                    )
                    .disabled(name.isEmpty)
                }
            })
            .navigationTitle("New Workout")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

struct AddInstructionView_Preview: PreviewProvider {
    static var previews: some View {
        AddInstructionView()
    }
}

