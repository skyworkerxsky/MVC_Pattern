//
//  CommentNetworkService.swift
//  MVC_Prjct
//
//  Created by Алексей Макаров on 15.01.2020.
//  Copyright © 2020 Алексей Макаров. All rights reserved.
//

import Foundation

class CommentNetworkService {
    
    private init(){}
    
    static func getComments(completion: @escaping (GetCommentResponse) -> ()) {
        
        let urlString = "https://jsonplaceholder.typicode.com/posts/1/comments"
        
        guard let url = URL(string: urlString) else { return }
        
        NetworkService.shared.getData(url: url) { (json) in
            do {
                let response = try GetCommentResponse(json: json)
                completion(response)
            } catch {
                print(error)
            }
        }
    }
    
}
