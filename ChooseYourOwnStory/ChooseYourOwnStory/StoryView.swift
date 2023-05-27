//
//  StoryVIew.swift
//  ChooseYourOwnStory
//
//  Created by dsm 5e on 26.05.2023.
//

import SwiftUI

struct StoryView: View {
    var body: some View {
        NavigationStack {
            StoryPageView(story: story, pageIndex: 0)
        }
    }
}

struct StoryVIew_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
