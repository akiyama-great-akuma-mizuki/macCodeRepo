//
//  ViewController.swift
//  truehomework9_2
//
//  Created by 0commander on 2021/5/4.
//  Copyright © 2021 0commander. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ImageDAL.initDB()
    }


    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    
    
    @IBAction func downloadPressed(_ sender: Any) {
        img1.downloadAsyncFrom(url: "https://apod.nasa.gov/apod/image/1107/atlantisapproach_nasa_900.jpg")
    }
    
    @IBAction func localPressed(_ sender: Any) {
        img1.image = UIImage(named: "china")
    }
    
    @IBAction func savePressed(_ sender: Any) {
        ImageDAL.SaveImage(id: 1, img: img1.image)
    }
    
    @IBAction func loadPressed(_ sender: Any) {
        img2.image = ImageDAL.LoadImage(id: 1)
    }
    
}

