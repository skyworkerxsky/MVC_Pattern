//
//  NetworkService.swift
//  MVC_Prjct
//
//  Created by Алексей Макаров on 15.01.2020.
//  Copyright © 2020 Алексей Макаров. All rights reserved.
//

import Foundation

class NetworkService {
    
    // Создали синглтон
    private init() {}
    static let shared = NetworkService()
    
    // MARK: - Functions
    
    public func getData(url: URL, completion: @escaping (Any) -> ()) {
        
        // создаем сессию
        let session = URLSession.shared
        
        session.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                DispatchQueue.main.async {
                    completion(json)
                }
            } catch {
                print(error)
            }
        }.resume()
    }
    
}
