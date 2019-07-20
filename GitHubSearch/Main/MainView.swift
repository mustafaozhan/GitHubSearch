//
//  ContentView.swift
//  GitHubSearch
//
//  Created by Mustafa Ozhan on 16/07/2019.
//  Copyright © 2019 Mustafa Ozhan. All rights reserved.
//

import SwiftUI

struct MainView : View {
    
    @ObjectBinding
    private(set) var viewModel: MainViewModel
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                HStack {
                    
                    TextField("Search Reposipories", text: $viewModel.text)
                        .frame(height: 40)
                        .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
                        .border(Color.gray, cornerRadius: 8)
                        .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                    
                    Button(action: { self.viewModel.search() }) {
                        Text("Search")
                        }
                        .frame(height: 40)
                        .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
                        .border(Color.blue, cornerRadius: 8)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 16))
                }
                
                List {
                    ForEach(viewModel.repositories, id: \.id){ repository in
                        RepositoryView(repository: repository)
                    }
                }
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        MainView(viewModel: MainViewModel(mainScheduler: DispatchQueue.main))
    }
}
#endif
