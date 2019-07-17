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
        Text("")
    }
}

#if DEBUG
struct RepositoryView_Previews : PreviewProvider {
    static var previews: some View {
        RepositoryView(repository: Repository(id: 1, fullName: "RepositoryName", description: "Description", stargazersCount: 100, htmlUrl: URL(string: "https://github.com")!))
    }
}
#endif
