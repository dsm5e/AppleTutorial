//
//  StoryPageView.swift
//  ChooseYourOwnStory
//
//  Created by dsm 5e on 26.05.2023.
//

import SwiftUI

struct StoryPageView: View {
    
    let story: Story
    let pageIndex: Int
    
    var body: some View {
        VStack {
            ScrollView {
                Text(story[pageIndex].text)
            }
            
            ForEach(story[pageIndex].choices, id: \Choice.text) { choise in
                NavigationLink {
                    StoryPageView(story: story, pageIndex: choise.destination)
                } label: {
                    Text(choise.text)
                        .tint(.white)
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(8)
                }
            }
        }
        .padding()
        .navigationTitle("Page \(pageIndex + 1)")
        .tint(.black)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct StoryPageView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            StoryPageView(story: story, pageIndex: 1)
        }
    }
}
