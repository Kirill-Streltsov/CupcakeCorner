//
//  ContentView.swift
//  CupcakeCorner
//
//  Created by Kirill Streltsov on 31.07.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        AsyncImage(url: URL(string: "https://avatars.steamstatic.com/649cc96f28905739f4e62c9db0ffec4f6c34c50a.jpg")) { phase in
            if let image = phase.image {
                image // Displays the loaded image.
            } else if phase.error != nil {
                Color.red // Indicates an error.
            } else {
                ProgressView()
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
