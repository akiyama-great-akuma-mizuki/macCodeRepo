//
//  SQLite.swift
//  homework8_2
//
//  Created by 0commander on 2021/4/24.
//  Copyright © 2021 0commander. All rights reserved.
//

import Foundation
class SQLiteManager:NSObject{
    private var dbpath:String!
    private var database:OpaquePointer? = nil
    static var sharedInstance:SQLiteManager{
        return SQLiteManager()
        
    }
    override init(){
        super.init()
        let dirpath =  FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        dbpath = dirpath.appendingPathComponent("app.sqlite").path
        
    }
    
    func openDB()-> Bool{
        let result = sqlite3_open(dbpath, &database)
        if result != SQLITE_OK{
            print("fail to open db")
            return false
        }
        return true
    }
    
    func closeDB(){
        sqlite3_close(database)
    }
    
    func execNoneQuerySQL(sql:String) -> Bool {
        var errMsg:UnsafeMutablePointer<Int8>? = nil
        let csql = sql.cString(using: String.Encoding.utf8)
        
        if sqlite3_exec(database, csql, nil, nil, &errMsg) == SQLITE_OK{
            return true
        }
        
        let msg = String.init(cString: errMsg!)
        print(msg)
        return false
    }
    func record(stmt:OpaquePointer) -> [String:AnyObject]{
        var row = [String:AnyObject]()
        for col in 0 ..< sqlite3_column_count(stmt){
            let cName = sqlite3_column_name(stmt, col)
            let name = String(cString: cName!,encoding:String.Encoding.utf8)
            var value:AnyObject?
            
            switch(sqlite3_column_type(stmt, col)){
            case SQLITE_FLOAT:
                value = sqlite3_column_double(stmt, col) as AnyObject
            case SQLITE_INTEGER:
                value = Int(sqlite3_column_int(stmt, col)) as AnyObject
            case SQLITE_TEXT:
                let ctext = sqlite3_column_text(stmt, col)
                value = String.init(cString:ctext!) as AnyObject
            case SQLITE_NULL:
                value = NSNull()
            default:
                print("unavailable data type")
            }
            row[name!] = value ?? NSNull()
        }
        return row
    }
    func execQuerySQL(sql:String) -> [[String:AnyObject]]?{
        let cSql = sql.cString(using: String.Encoding.utf8)!
        var statement:OpaquePointer? = nil
        
        if sqlite3_prepare_v2(database, cSql, -1, &statement, nil) != SQLITE_OK{
            sqlite3_finalize(statement)
            print("execution \(sql) error!")
            let errmsg = sqlite3_errmsg(database)
            if errmsg != nil{
                print(errmsg!)
            }
        }
        var rows = [[String:AnyObject]]()
        
        while sqlite3_step(statement) == SQLITE_ROW {
            rows.append(record(stmt:statement!))
            
        }
        
        sqlite3_finalize(statement)
        
        
    
        return rows
        
    }
    
    

}
