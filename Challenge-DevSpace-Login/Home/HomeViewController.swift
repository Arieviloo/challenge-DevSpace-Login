//
//  ViewController.swift
//  Challenge-DevSpace-Login
//
//  Created by Jadië Oliveira on 26/08/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    private var homeView: HomeView?
    let presentVC: PresentViewController = PresentViewController()
    
    override func loadView() {
        homeView = HomeView()
        view = homeView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        
        if let sheet = presentVC.sheetPresentationController {
            sheet.detents = [.medium()]
            sheet.preferredCornerRadius = 30
        }
        
        present(presentVC, animated: true)
    }


}

