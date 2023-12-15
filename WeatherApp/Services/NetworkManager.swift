//
//  NetworkManager.swift
//  weatherapp-Bitcot
//
//  Created by Bravery Infotech on 02/08/23.
//

import Foundation

enum DataError: Error{
    case network
    case decoding
    
    var reason: String{
        switch self{
        case .network:
            return "Some error occured"
        case .decoding:
            return "Error occured in Decoding"
        }
    }
}

enum Result<Y, Z: Error> {
    case success(Y)
    case failure(Z)
}


class NetworkManager{
    
    func getDataFromAPI<T:Decodable>(url:URL ,val:T.Type , completion: @escaping (Result<Decodable, DataError>) ->()) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let response = response as? HTTPURLResponse,
                    response.statusCode == 200,
                  let data = data
            else{
                completion(Result.failure(DataError.network))
                return
            }
            
            guard  let datas = try? JSONDecoder().decode(T.self, from: data)else{
                completion(Result.failure(DataError.decoding))
                return
            }
            completion(Result.success(datas))
            
        }.resume()
    }
}
    

