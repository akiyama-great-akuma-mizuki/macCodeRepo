//
//  Student.swift
//  homework7
//
//  Created by 0commander on 2021/4/17.
//  Copyright © 2021 0commander. All rights reserved.
//

import Foundation

class Student : NSObject,Codable{
    var name :String = ""
    var birthday : String = ""
    var score : String = ""
    var address : String = ""
    
    override init() {
        
    }
    init(name :String,birthday : String,score : String,address : String) {
        self.name = name;
        self.birthday = birthday;
        self.score = score;
        self.address = address;
    }
    
    private enum CodingKeys :String,CodingKey{
        case name = "person_name"
        case birthday
        case score
        case address
    }
    
    override var description: String{
        return "name:\(name),birthday:\(birthday),score:\(score),address:\(address)"
    }
}
