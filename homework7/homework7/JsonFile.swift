//
//  JsonFile.swift
//  homework7
//
//  Created by 0commander on 2021/4/17.
//  Copyright © 2021 0commander. All rights reserved.
//

import Foundation

class JsonFileManager<T:NSObject&Codable>
{
    
    var Records:[T] = []
    var Url : URL
    
    init(filename : String)
    {
        let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        Url = path.appendingPathComponent(filename)
        print(Url)
    }
    
    func Save()
    {
        let encoder = JSONEncoder()
        do{
            let encodeData :Data? = try encoder.encode(Records)
            try encodeData!.write(to: Url,options: .atomic)
        }
        catch{
            print(error)
        }
    }
    
    func load()
    {
        do{
            if let encodeData = try? Data.init(contentsOf:Url){
                let decoder = JSONDecoder()
                Records = try decoder.decode([Student].self, from: encodeData) as! [T]
            }
        }
        catch{
            print(error)
        }
    }
    
}
