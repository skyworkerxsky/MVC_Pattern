//
//  ViewController.swift
//  MVC_Prjct
//
//  Created by Алексей Макаров on 15.01.2020.
//  Copyright © 2020 Алексей Макаров. All rights reserved.
//

import UIKit

class CommentsViewController: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}

// MARK: - Extension: UITableView

extension CommentsViewController: UITableViewDelegate {
    
}

extension CommentsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CommentCell
        
        return cell
    }
    
}

