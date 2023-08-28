//
//  LoginView.swift
//  Challenge-DevSpace-Login
//
//  Created by Jadië Oliveira on 28/08/23.
//

import UIKit

class LoginView: UIView {
    
    lazy var logoImagaView: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = UIImage(named: "logo")
        return $0
    }(UIImageView())
    
    lazy var backgroundView: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 20
//        $0.frame = CGRect(x: 0, y: 0, width: frame.width, height: 100)
        $0.backgroundColor = .white
        return $0
    }(UIView())
    
    lazy var signUpLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Sign Up"
        return $0
    }(UILabel())
    
    lazy var fullNameLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Full Name"
        return $0
    }(UILabel())
    
    lazy var fullNameTextField: UITextField = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .lightGray
        return $0
    }(UITextField())
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .orange
        configView()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configView() {
        addSubview(logoImagaView)
        addSubview(backgroundView)
        backgroundView.addSubview(signUpLabel)
        backgroundView.addSubview(fullNameLabel)
        backgroundView.addSubview(fullNameTextField)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            logoImagaView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            logoImagaView.centerXAnchor.constraint(equalTo: centerXAnchor),
            logoImagaView.heightAnchor.constraint(equalToConstant: 200),
            logoImagaView.widthAnchor.constraint(equalToConstant: 200),
            
            backgroundView.topAnchor.constraint(equalTo: logoImagaView.bottomAnchor, constant: 0),
            backgroundView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            signUpLabel.topAnchor.constraint(equalTo: backgroundView.topAnchor, constant: 20),
            signUpLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            signUpLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            
            fullNameLabel.topAnchor.constraint(equalTo: signUpLabel.bottomAnchor, constant: 20),
            fullNameLabel.leadingAnchor.constraint(equalTo: signUpLabel.leadingAnchor),
            fullNameLabel.trailingAnchor.constraint(equalTo: signUpLabel.trailingAnchor),
            
            fullNameTextField.topAnchor.constraint(equalTo: fullNameLabel.bottomAnchor, constant: 5),
            fullNameTextField.leadingAnchor.constraint(equalTo: signUpLabel.leadingAnchor),
            fullNameTextField.trailingAnchor.constraint(equalTo: signUpLabel.trailingAnchor),
            fullNameTextField.heightAnchor.constraint(equalToConstant: 40)
            
            
            
            
        ])
    }
}
