//
//  InstructionList.swift
//  unimind
//
//  Created by Akshara Kollu on 10/7/23.
//

import SwiftUI

struct InstructionList: View {
    var instructions: [Instructions]
    
    var body: some View {
        VStack {
            HStack {
                Text("\(instructions.count) \(instructions.count > 1 ? "Instructions" : "Instruction")")
                    .font(.headline)
                    .fontWeight(.medium)
                    .opacity(0.7)
                
                Spacer()
            }
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15) {
                ForEach(instructions) { instruction in
                    NavigationLink(destination: InstructionView(instruction: instruction)){
                        InstructionCard(instruction: instruction)
                    }
                }
            }
            .padding(.top)
        }
        .padding(.horizontal)
    }
}
struct InstructionList_Preview: PreviewProvider {
    static var previews: some View {
        ScrollView {
            InstructionList(instructions: Instructions.all)
        }
    }
}
