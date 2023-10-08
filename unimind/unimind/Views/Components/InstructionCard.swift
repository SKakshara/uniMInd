//
//  InstructionCard.swift
//  unimind
//
//  Created by Akshara Kollu on 10/7/23.
//

import SwiftUI

struct InstructionCard: View {
    var instruction: Instructions
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: instruction.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .overlay(alignment: .bottom){
                        Text(instruction.name)
                            .font(.headline)
                            .foregroundColor(.white)
                            .shadow(color: .black, radius: 3, x:0, y:0)
                            .frame(maxWidth:136)
                            .padding()
                    }
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .overlay(alignment: .bottom){
                        Text(instruction.name)
                            .font(.headline)
                            .foregroundColor(.white)
                            .shadow(color: .black, radius: 3, x:0, y:0)
                            .frame(maxWidth:136)
                            .padding()
                    }
            }
            .frame(width: 160, height: 270)
            .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 20), style: .continuous))
            .shadow(color: Color.black.opacity(0.3), radius: 15, x:0, y: 10)
        }
    }
    
    struct InstructionCard_Preview: PreviewProvider {
        static var previews: some View {
            InstructionCard(instruction: Instructions.all[0])
        }
    }
    
}
