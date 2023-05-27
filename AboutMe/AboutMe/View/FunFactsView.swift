//
//  FunFactsView.swift
//  AboutMe
//
//  Created by dsm 5e on 26.05.2023.
//

import SwiftUI

struct FunFactsView: View {
    
    @State private var funFact = ""
    
    var body: some View {
        VStack {
            Text("Fun Fact!")
                .font(.largeTitle)
                .bold()
            
            Text(funFact)
                .padding()
                .font(.title)
                .frame(minHeight: 400)
            
            Button("Show Random Fact") {
                funFact = information.funFacts.randomElement() ?? ""
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.black)
            .cornerRadius(15)
        }
        .padding()
    }
}

struct FunFactsView_Previews: PreviewProvider {
    static var previews: some View {
        FunFactsView()
    }
}
