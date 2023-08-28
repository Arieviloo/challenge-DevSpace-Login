//
//  PresentViewController.swift
//  Challenge-DevSpace-Login
//
//  Created by Jadië Oliveira on 26/08/23.
//

import UIKit

class PresentViewController: UIViewController {
    
    private var presentView: PresentView?
    
    override func loadView() {
        presentView = PresentView()
        view = presentView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presentView?.delegate(delegate: self)
    }
}

extension PresentViewController: PresentViewProtocol {
    func tappedNextScreen() {
        print("\(#function) bumba")
        let loginVC = LoginViewController()
        present(loginVC, animated: true)
    }
    
    
}
