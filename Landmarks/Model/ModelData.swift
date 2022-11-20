//
//  ModelData.swift
//  Landmarks
//
//  Created by Vahida on 12/11/22.
//

import Foundation

var landmarks : [Landmark] = load("landmarkData.json")

func load<T:Decodable>(_ filename:String) -> T
{
    let data : Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil, subdirectory: nil)
    else {
        fatalError("Couldnt find file \(filename)" )
        
    }
    
    do {
        data =  try Data(contentsOf: file)
        
    }
    catch{
        fatalError("Couldnt load file \(filename)" )

    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from:data)
    }
    catch let jsonError as NSError
    {
        print("JSON decode failed: \(jsonError.localizedDescription)")
        fatalError(jsonError.description)

    }
    

}
