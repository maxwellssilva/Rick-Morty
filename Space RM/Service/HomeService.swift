//
//  HomeService.swift
//  Space RM
//
//  Created by Maxwell da Silva e Silva on 28/06/24.
//

import UIKit

class HomeService {
    static let url = URL(string: "https://rickandmortyapi.com/api/")
    
    public static func getImage(urlString: String, completion: @escaping (Data?) -> Void) {
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data else { return }
            completion(data)
        }.resume()
    }
}
