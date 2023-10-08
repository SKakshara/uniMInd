//
//  InstructionViewModel.swift
//  unimind
//
//  Created by Akshara Kollu on 10/8/23.
//

import Foundation

class InstructionViewModel: ObservableObject {
    @Published private(set) var instructions: [Instructions] = []
    
    init(){
        instructions = Instructions.all
        
    }
}
