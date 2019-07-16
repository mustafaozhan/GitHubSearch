//
//  Repository.swift
//  GitHubSearch
//
//  Created by Mustafa Ozhan on 16/07/2019.
//  Copyright © 2019 Mustafa Ozhan. All rights reserved.
//

import Foundation

struct Repository: Decodable {
    let name:  String
    let description: String?
    let stargazers: Count
    let url:URL
}

extension Repository {
    
    struct Count: Decodable {
        let totalCount: Int
    }
}
