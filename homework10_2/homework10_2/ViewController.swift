//
//  ViewController.swift
//  homework10_2
//
//  Created by 0commander on 2021/5/9.
//  Copyright © 2021 0commander. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var fileURL :URL?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let dirpath = FileManager.default.urls(for:.documentDirectory, in: .userDomainMask).first!
        
        fileURL = dirpath.appendingPathComponent("persistence.dat")
    }

    @IBAction func wsp(_ sender: Any) {
        let a = "hello"
        do{
            try a.write(to: fileURL!, atomically: true, encoding: .utf8)
            
        }
        catch{
            print(error)
        }
    }
    
    @IBAction func rsp(_ sender: Any) {
        do{
            let a = try String.init(contentsOf:fileURL!,encoding:.utf8)
            print(a)
        }
        catch{
            print(error)
        }
    }
    @IBAction func wap(_ sender: Any) {
        let a:[Int32] = [1,2,3,4,5,6,7,8,9]
        let b = a as! NSArray
        b.write(to: fileURL!,atomically:true)
    }
    
    
    @IBAction func rap(_ sender: Any) {
        let a = NSArray.init(contentsOf: fileURL!) as! [Int32]
        print(a)
    }
    
    @IBAction func wmp(_ sender: Any) {
        do{
        let dateFormate = DateFormatter()
       dateFormate.dateFormat = "yyyy-MM-dd"
        let stu1 = Student(name: "zs", birthday: dateFormate.date(from: "1998-02-01")!, score: 86)
        let stus = [stu1]
        
        let dataArc  = try NSKeyedArchiver.archivedData(withRootObject: stus, requiringSecureCoding: false)
        
        try dataArc.write(to: fileURL!,options: .atomic)
        }
        catch{
            print(error)
        }
        
    }
    
    @IBAction func rmp(_ sender: Any) {
        do{
            let data = try Data.init(contentsOf:fileURL!)
            if let sturead = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? [Student]
            
            {
                    print(sturead)
            }
        }
        catch{
            print(error)
        }
    
}
}

