//
//  CommentCell.swift
//  MVC_Prjct
//
//  Created by Алексей Макаров on 15.01.2020.
//  Copyright © 2020 Алексей Макаров. All rights reserved.
//

import UIKit

class CommentCell: UITableViewCell {
 
    // MARK: - Outlets
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    // MARK: - Functions
    
    func configure(with comment: Comment) {
        self.label.text = comment.name
        self.textView.text = comment.body
    }
    
}
