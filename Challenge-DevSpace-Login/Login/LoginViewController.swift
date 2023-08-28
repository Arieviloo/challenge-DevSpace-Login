//
//  LoginViewController.swift
//  Challenge-DevSpace-Login
//
//  Created by Jadië Oliveira on 28/08/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    private var loginView: LoginView?
    
    override func loadView() {
        loginView = LoginView()
        view = loginView
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
