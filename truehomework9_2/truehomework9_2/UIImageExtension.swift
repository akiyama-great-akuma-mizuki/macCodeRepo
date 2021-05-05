//
//  UIImageExtension.swift
//  truehomework9_2
//
//  Created by 0commander on 2021/5/4.
//  Copyright © 2021 0commander. All rights reserved.
//

import Foundation
import  UIKit
extension UIImageView{
    
    func downloadAsyncFrom(url:String){
        let urlNet = URL(string: url)
        let task = URLSession.shared.dataTask(with: urlNet!){
            (data,response,erroe) in
            if let nsd = data{
                DispatchQueue.main.async {
                    self.image = UIImage(data:nsd,scale:1)
                    self.contentMode = .scaleAspectFit
                }
            }
        }
        
        task.resume()
    }
}
