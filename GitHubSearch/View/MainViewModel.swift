//
//  MainViewModel.swift
//  GitHubSearch
//
//  Created by Mustafa Ozhan on 16/07/2019.
//  Copyright © 2019 Mustafa Ozhan. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

final class MainViewModel: BindableObject {
    var text: String = ""
    let didChange = PassthroughSubject<MainViewModel,Never> ()
    
    private(set) var repositories: [Repository] = [] {
        didSet {
            didChange.send(self)
        }
    }
    
    func search() {
        repositories.append(Repository(id: 1, fullName: "RepositoryName", description: "Description", stargazersCount: 100, htmlUrl: URL(string: "https://github.com")!))
    }
}
