//
// ContentView.swift : Assignment3
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

struct Cards: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    CardDetail()
                } label: {
                    Text("Card")
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Magic the Gathering Cards")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Cards()
    }
}
