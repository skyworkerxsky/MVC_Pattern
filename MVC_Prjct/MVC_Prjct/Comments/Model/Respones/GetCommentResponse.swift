//
//  GetCommentResponse.swift
//  MVC_Prjct
//
//  Created by Алексей Макаров on 15.01.2020.
//  Copyright © 2020 Алексей Макаров. All rights reserved.
//

import Foundation

struct GetCommentResponse {
    
    typealias JSON = [String: AnyObject]
    let comments: [Comment]
    
    init(json: Any) throws {
        guard let array = json as? [JSON] else { throw NetwokError.failInternetError }
        
        var comments = [Comment]()
        
        for dictionary in array {
            guard let comment = Comment(dictionary: dictionary) else { continue }
            comments.append(comment)
        }
        
        self.comments = comments
    }
    
}
