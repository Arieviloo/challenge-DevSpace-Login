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
        $0.backgroundColor = .white
        return $0
    }(UIView())
    
    lazy var signUpLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Sign Up"
        $0.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        $0.textColor = UIColor(red: 50/255, green: 59/255, blue: 142/255, alpha: 1.0)
        return $0
    }(UILabel())
    
    lazy var fullNameLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Full Name"
        $0.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        return $0
    }(UILabel())
    
    lazy var fullNameTextField: UITextField = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = UIColor(red: 239/255, green: 239/255, blue: 253/255, alpha: 1.0)
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 8
        $0.placeholder = "Peter Parker"
        $0.autocorrectionType = .no
        $0.keyboardType = .default
        $0.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: 40))
        $0.leftViewMode = .always
        return $0
    }(UITextField())
    
    lazy var emailLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Email"
        $0.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        return $0
    }(UILabel())
    
    lazy var emailTextField: UITextField = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = UIColor(red: 239/255, green: 239/255, blue: 253/255, alpha: 1.0)
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 8
        $0.placeholder = "peterparker@gmail.com"
        $0.autocorrectionType = .no
        $0.keyboardType = .emailAddress
        $0.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: 40))
        $0.leftViewMode = .always
        return $0
    }(UITextField())
    
    lazy var passwordLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Password"
        $0.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        return $0
    }(UILabel())
    
    lazy var passwordTextField: UITextField = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = UIColor(red: 239/255, green: 239/255, blue: 253/255, alpha: 1.0)
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 8
        $0.placeholder = "*******"
        $0.autocorrectionType = .no
        $0.keyboardType = .default
        $0.isSecureTextEntry = true
        $0.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: 40))
        $0.leftViewMode = .always
        return $0
    }(UITextField())
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(red: 50/255, green: 59/255, blue: 142/255, alpha: 1.0)
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
        backgroundView.addSubview(emailLabel)
        backgroundView.addSubview(emailTextField)
        backgroundView.addSubview(passwordLabel)
        backgroundView.addSubview(passwordTextField)
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
            fullNameTextField.heightAnchor.constraint(equalToConstant: 40),
            
            emailLabel.topAnchor.constraint(equalTo: fullNameTextField.bottomAnchor, constant: 20),
            emailLabel.leadingAnchor.constraint(equalTo: fullNameLabel.leadingAnchor),
            emailLabel.trailingAnchor.constraint(equalTo: fullNameLabel.trailingAnchor),
            
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 5),
            emailTextField.leadingAnchor.constraint(equalTo: fullNameTextField.leadingAnchor),
            emailTextField.trailingAnchor.constraint(equalTo: fullNameTextField.trailingAnchor),
            emailTextField.heightAnchor.constraint(equalTo: fullNameTextField.heightAnchor),
            
            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
            passwordLabel.leadingAnchor.constraint(equalTo: fullNameLabel.leadingAnchor),
            passwordLabel.trailingAnchor.constraint(equalTo: fullNameLabel.trailingAnchor),
            
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 5),
            passwordTextField.leadingAnchor.constraint(equalTo: fullNameTextField.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: fullNameTextField.trailingAnchor),
            passwordTextField.heightAnchor.constraint(equalTo: fullNameTextField.heightAnchor)
            
        ])
    }
}
