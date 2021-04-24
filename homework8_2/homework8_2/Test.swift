//
//  Test.swift
//  homework8_2
//
//  Created by 0commander on 2021/4/24.
//  Copyright © 2021 0commander. All rights reserved.
//

import Foundation
public class Test{
   static func initDB(){
        let sqlite = SQLiteManager.sharedInstance
        if !sqlite.openDB( ) { return }
        let createSql = "CREATE TABLE IF NOT EXISTS student('id' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT," +
        "'name' TEXT, 'phone' TEXT);"
        if !sqlite.execNoneQuerySQL(sql: createSql) { sqlite.closeDB() ; return
            
        }
        let cleanAllStu = "DELETE FROM student"
        if !sqlite.execNoneQuerySQL(sql: cleanAllStu) { sqlite.closeDB() ; return }
        
        let resetStu = "DELETE FROM sqlite_sequence WHERE name = 'student' ; "
        if !sqlite.execNoneQuerySQL(sql: resetStu) { sqlite.closeDB() ; return }
        let stu0 = "INSERT INTO student(name , phone) VALUES('张三' , ' zhangsan@whu.edu.cn ' ) ; "
        let stu1 = "INSERT INTO student(name , phone) VALUES('张四' , ' zhangsi@whu.edu.cn ' ) ; "
        if !sqlite.execNoneQuerySQL(sql: stu0) { sqlite.closeDB() ; return }
        if !sqlite.execNoneQuerySQL(sql: stu1){
            sqlite.closeDB() ; return }
        
        sqlite.closeDB()
        
        
    }
    static func GetStudent(){
        let sqlite = SQLiteManager.sharedInstance
        if !sqlite.openDB(){
            return
        }
        
        let queryR =  sqlite.execQuerySQL(sql: "SELECT * FROM student")
        print(queryR!)
        for row in queryR!{
            print(row["name"]!)
        }
        sqlite.closeDB()
        
    }
    
}
