//
//  ContentView.swift
//  Unsplash-SwiftUI
//
//  Created by Safar Safarov on 2020/9/20.
//
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Home: View {
    
    @State var expand = false
    @State var search = ""
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                VStack(alignment: .leading, spacing: 8) {
                    Text("UNSPLASH")
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("Beautiful, Free Photos")
                        .font(.caption)
                }
                .foregroundColor(.black)
                
                Spacer()
                
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
            }
        }
    }
}
