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
    
    typealias SearchRepositories = (String) -> AnyPublisher<Result<[Repository], ErrorResponse>, Never>
    
    let didChange = PassthroughSubject<MainViewModel,Never> ()
    private let _didChange = PassthroughSubject<MainViewModel, Never>()
    
    private let _searchWithQuery = PassthroughSubject<String,Never>()
    
    private var cancellables: [AnyCancellable] = []
    
    var text: String = ""
    
    
    private(set) var repositories: [Repository] = [] {
        didSet {
            _didChange.send(self)
        }
    }
    
    private(set) var errorMessage: String? {
        didSet {
            _didChange.send(self)
        }
    }
    
    
    
    func search() {
        _searchWithQuery.send(text)
    }
}
