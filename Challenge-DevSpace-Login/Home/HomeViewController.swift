//
//  ViewController.swift
//  Challenge-DevSpace-Login
//
//  Created by Jadië Oliveira on 26/08/23.
//

import UIKit



class HomeViewController: UIViewController {
    
    private var homeView: HomeView?
    
    override func loadView() {
        homeView = HomeView()
        view = homeView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.primaryColor
        
        homeView?.delegate(delegate: self)
    }
}

extension HomeViewController: HomeViewProtocol {
    func tappedNextScreen() {
        let loginVC = LoginViewController()
        present(loginVC, animated: true)
    }
    
}

