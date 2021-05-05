//
//  imageDAL.swift
//  truehomework9_2
//
//  Created by 0commander on 2021/5/4.
//  Copyright © 2021 0commander. All rights reserved.
//

import Foundation
import UIKit
class ImageDAL{
    static func initDB(){
        let sqlite = SQLiteManager.sharedInstance
        if !sqlite.openDB(){return}
        let creatsql = "CREATE TABLE IF NOT EXISTS student('id' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT," + "'name' TEXT,'phone' TEXT,'pic' BLOB);"
        if !sqlite.execNoneQuerySQL(sql: creatsql)
        {sqlite.closeDB()
            return
        }
        
        let stu0 = "INSERT OR REPLACE INTO student(id,name,phone) VALUES(1,'zs','zhangsan@whu.edu.cn');"
        
        if !sqlite.execNoneQuerySQL(sql: stu0)
        {
            sqlite.closeDB()
            return
        }
        
        let queryresult = sqlite.execQuerySQL(sql: "SELECT * FROM student")
        print(queryresult!)
        sqlite.closeDB()
    }
    
    static func SaveImage(id:Int,img:UIImage?){
        if img == nil{return}
        
        let sqlite = SQLiteManager.sharedInstance
        
        if !sqlite.openDB(){return}
        
        let sql = "UPDATE student SET pic = ? WHERE id = \(id)"
        
        let data = img!.jpegData(compressionQuality: 1.0) as NSData?
        
        sqlite.execSaveBlob(sql: sql,blob:data!)
        sqlite.closeDB()
        return
    }
    static func LoadImage(id:Int) ->UIImage{
        let sqlite = SQLiteManager.sharedInstance
        if !sqlite.openDB() {return UIImage(named: "nopic")!}
        
        let sql = "SELECT pic FROM student where id = \(id)"
        
        let data = sqlite.execLoadBlob(sql: sql)
        sqlite.closeDB()
        
        if data != nil{
            return UIImage(data: data!)!
        }
        else{
            return UIImage(named: "nopic")!
        }
    }
}
