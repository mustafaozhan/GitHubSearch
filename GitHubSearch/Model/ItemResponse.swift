//
//  ItemResponse.swift
//  GitHubSearch
//
//  Created by Mustafa Ozhan on 19/07/2019.
//  Copyright © 2019 Mustafa Ozhan. All rights reserved.
//

import Foundation

struct ItemResponse<T: Decodable>: Decodable {
    let items: [T]
}
