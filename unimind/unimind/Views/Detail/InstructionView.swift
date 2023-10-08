//
//  InstructionView.swift
//  unimind
//
//  Created by Akshara Kollu on 10/7/23.
//

import SwiftUI

struct InstructionView: View {
    var instruction: Instructions
    
    var body: some View {
        ScrollView{
            AsyncImage(url: URL(string: instruction.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .frame(height:300)
            .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
            
            VStack(spacing: 30){
                Text(instruction.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding()
            }
            VStack(alignment: .leading, spacing: 30){
                VStack(alignment: .leading, spacing: 10){
                    Text("Equipment: ")
                        .font(.headline)
                    Text(instruction.equipment)
                }
                .padding(.horizontal)
                VStack(alignment: .leading, spacing: 10){
                    Text("Directions: ")
                        .font(.headline)
                    Text(instruction.directions)
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                .padding(.horizontal)
            }
            .padding(.horizontal)
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}
struct InstructionView_Preview: PreviewProvider {
    static var previews: some View {
        ScrollView {
            InstructionView(instruction: Instructions.all[0])
        }
    }
}
