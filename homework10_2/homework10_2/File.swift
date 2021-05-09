//
//  File.swift
//  homework10_2
//
//  Created by 0commander on 2021/5/9.
//  Copyright © 2021 0commander. All rights reserved.
//

import Foundation
class Student: NSObject, NSCoding {
    
    struct PropertyKeys {
        static let name = "name"
        static let birthday = "birthday"
        static let score = "score"
    }
    
    let name: String
    let birthday: Date
    let score: Int
    
    init(name: String, birthday: Date, score: Int) {
        self.name = name
        self.birthday = birthday
        self.score = score
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        guard let name = aDecoder.decodeObject(forKey: PropertyKeys.name) as? String,
            let birthday = aDecoder.decodeObject(forKey: PropertyKeys.birthday) as? Date
            else {return nil}
        
        let score = aDecoder.decodeInteger(forKey: PropertyKeys.score)
        
        
        self.init(name: name, birthday: birthday, score: score)
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: PropertyKeys.name)
        aCoder.encode(birthday, forKey: PropertyKeys.birthday)
        aCoder.encode(score, forKey: PropertyKeys.score)
    }
    
    override var description: String
    {
        return "name:\(name), birthday:\(birthday), score:\(score)"
    }
}
