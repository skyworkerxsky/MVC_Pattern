//
//  Comment.swift
//  MVC_Prjct
//
//  Created by Алексей Макаров on 15.01.2020.
//  Copyright © 2020 Алексей Макаров. All rights reserved.
//

import Foundation

struct Comment {
    
    // MARK: - Properties
    
    var postId: Int
    var id: Int
    var name: String
    var email: String
    var body: String
    
    // MARK: - Init
    
    init?(dictionary:[String: AnyObject]) {
        
        guard let postId = dictionary["postId"] as? Int,
        let id = dictionary["id"] as? Int,
        let name = dictionary["name"] as? String,
        let email = dictionary["email"] as? String,
        let body = dictionary["body"] as? String else { return nil }
        
        self.postId = postId
        self.id = id
        self.name = name
        self.email = email
        self.body = body
        
    }
}
