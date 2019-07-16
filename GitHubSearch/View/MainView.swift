//
//  ContentView.swift
//  GitHubSearch
//
//  Created by Mustafa Ozhan on 16/07/2019.
//  Copyright © 2019 Mustafa Ozhan. All rights reserved.
//

import SwiftUI

struct MainView : View {
    
    @State private var text: String = ""
    
    var body: some View {
        
        NavigationView {
            
            TextField($text, placeholder: Text("Search Reposipories"), onCommit: { print(self.text) })
                .frame(height: 40)
                .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8 ))
                .border(Color.gray, cornerRadius: 5)
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
            
            List {
                RepositoryView(repository: Repository(name: "RepositoryName", description: "Description", stargazers: .init(totalCount: 100), url: URL(string: "https://github.com")!))
                }
                .navigationBarTitle(Text("Search"))
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
#endif
