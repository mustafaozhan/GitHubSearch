//
//  RepositoryAPI.swift
//  GitHubSearch
//
//  Created by Mustafa Ozhan on 19/07/2019.
//  Copyright © 2019 Mustafa Ozhan. All rights reserved.
//

import Foundation
import Combine

enum RepositoryAPI {
    typealias SearchResponse = AnyPublisher<Result<[Repository], ErrorResponse>, Never>
    typealias SendRequest = (URLRequest) -> AnyPublisher<Data, URLSession
}
