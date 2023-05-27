//
//  StoryView.swift
//  AboutMe
//
//  Created by dsm 5e on 26.05.2023.
//

import SwiftUI

struct StoryView: View {
    var body: some View {
        VStack {
            Text("My Story!")
                .font(.largeTitle)
                .bold()
                .padding()
            
            ScrollView {
                Text(information.story)
                    .font(.body)
                    .padding()
            }
        }
        .padding([.top, .bottom], 50)
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
