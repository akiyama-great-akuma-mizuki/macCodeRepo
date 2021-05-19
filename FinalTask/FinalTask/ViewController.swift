//
//  ViewController.swift
//  FinalTask
//
//  Created by 0commander on 2021/5/18.
//  Copyright © 2021 0commander. All rights reserved.
//

import UIKit
import Foundation
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func loginPressed(_ sender: Any) {
        let loginVC = UserLoginViewController()
        present(loginVC,animated: true,completion: nil)
        //loginVC.dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func logonPressed(_ sender: Any) {
    }
}

class UserLoginViewController: UIViewController{
    var txtUser:UITextField!
    var txtPwd :UITextField!
    var btnLogin:UIButton!
    override func viewDidLoad() {
        super.viewDidLoad ()
        let mainSize = UIScreen.main.bounds.size
        let vLogin = UIView(frame :CGRect(x: 30,y: 200,width: mainSize.width - 60,height:250))
        vLogin.layer.borderWidth = 0.5
        vLogin.layer.borderColor = UIColor.lightGray.cgColor
        vLogin.backgroundColor = UIColor.white
        self.view.addSubview(vLogin)
        txtUser = UITextField(frame :CGRect(x: 30, y: 30,width: vLogin.frame.size.width - 60,height : 44))
        txtUser.layer.cornerRadius = 5
        txtUser.layer.borderColor = UIColor.lightGray.cgColor
        txtUser.layer.borderWidth = 0.5
        txtUser.autocapitalizationType = .none
        txtUser.leftView = UIView(frame:CGRect(x: 0, y: 0, width: 44,height: 44))
        txtUser.leftViewMode = UITextField.ViewMode .always
        let imgUser = UIImageView(frame :CGRect(x: 11, y: 11, width: 22,height: 22))
        imgUser.image = UIImage(named : "iconfont-user" )
        txtUser.leftView!.addSubview(imgUser)
        vLogin.addSubview(txtUser)
        txtPwd = UITextField(frame:CGRect(x: 30,y: 90,width: vLogin.frame.size.width - 60,height : 44))
        txtPwd . layer.cornerRadius = 5
        txtPwd . layer.borderColor = UIColor.lightGray.cgColor
        txtPwd . layer.borderWidth = 0.5
        txtPwd.isSecureTextEntry = true
        txtPwd.leftView = UIView(frame:CGRect(x: 0, y: 0, width: 44, height: 44))
        txtPwd .leftViewMode = UITextField.ViewMode.always
        
        txtUser.text = UserDefaults.standard.string(forKey: "name")
        txtPwd.text = UserDefaults.standard.string(forKey: "password")
    
        let imgPwd = UIImageView(frame:CGRect(x: 11,y: 11, width: 22, height: 22))
        imgPwd.image = UIImage(named: "iconfont-password" )
        txtPwd.leftView!.addSubview(imgPwd)
        vLogin.addSubview(txtPwd)
        btnLogin = UIButton(frame :CGRect(x: 40,y: 150,width: 100,height:40))
        btnLogin.setTitle("登录",for: .normal)
        btnLogin.backgroundColor = UIColor.gray
        vLogin.addSubview(btnLogin)
        btnLogin.addTarget(self, action: #selector(loginEvent), for: .touchUpInside)
        
        btnLogin = UIButton(frame :CGRect(x: mainSize.width - 60 - 40 - 100,y: 150,width: 100,height:40))
        btnLogin.setTitle("取消",for: .normal)
        btnLogin.backgroundColor = UIColor.gray
        vLogin.addSubview(btnLogin)
        btnLogin.addTarget(self, action: #selector(cancelEvent), for: .touchUpInside)
    }
    @objc func loginEvent() {
        let usercode = txtUser.text!
        let password = txtPwd.text!
        txtUser.resignFirstResponder()
        txtPwd.resignFirstResponder()
        if usercode == UserDefaults.standard.string(forKey: "name") && password == UserDefaults.standard.string(forKey: "password")
        {
            let mainBoard:UIStoryboard! = UIStoryboard(name: "Main", bundle: nil)
            let VCMain = mainBoard!.instantiateViewController (withIdentifier:"tablevcmain")
            UIApplication.shared.windows[0].rootViewController = VCMain
        }
        else{
            let p = UIAlertController(title: "登录失败",message:"用户名或密码错误",preferredStyle: .alert)
            p.addAction(UIAlertAction(title: "确定", style: . default,handler:{ (_ :UIAlertAction ) in self.txtPwd.text = ""}))
            present(p, animated: false, completion:nil)
            //self.dismiss(animated: true, completion: nil)
        }
    }
    @objc func cancelEvent(){
        self.dismiss(animated: true, completion: nil)
    }
}

