//
//  RepositoryView.swift
//  GitHubSearch
//
//  Created by Mustafa Ozhan on 16/07/2019.
//  Copyright © 2019 Mustafa Ozhan. All rights reserved.
//

import SwiftUI

struct RepositoryView : View {
    
    let repository: Repository
    
    var body: some View {
        
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "doc.text")
                Text(repository.name)
                .bold()
            }
            
            repository.description.map(Text.init)
            
            HStack {
                Image(systemName: "star")
                Text("\(repository.stargazers.totalCount)")
            }
        }
    }
}

#if DEBUG
struct RepositoryView_Previews : PreviewProvider {
    static var previews: some View {
        RepositoryView(repository: Repository(name: "Repository Name", description: "Description", stargazers: .init(totalCount: 100), url: URL(string:  "https://github.com")!))
    }
}
#endif
