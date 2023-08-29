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
        let text = "full varias outros coisas no meio name"
        $0.text = text
        let underl = NSMutableAttributedString(string: text)
        let range1 = (text as NSString).range(of: "full")
        let range2 = (text as NSString).range(of: "name")
        underl.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red , range: range1)
        underl.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.blue , range: range2)
        $0.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        $0.attributedText = underl
        $0.isUserInteractionEnabled = true
        //        $0.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(aquideubom)))
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
        $0.isUserInteractionEnabled = true
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
    
    lazy var termsCheckButton: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.setImage(UIImage(systemName: "square"), for: .normal)
        $0.setImage(UIImage(systemName: "checkmark.square.fill")?.withTintColor(.systemGreen, renderingMode: .alwaysOriginal), for: .selected)
        $0.addTarget(self, action: #selector(tappedCheckButton), for: .touchUpInside)
        return $0
    }(UIButton())
    
    lazy var termsLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        let text = "I agree the Terms & Conditions and Privacy Policy"
        $0.text = text
        $0.numberOfLines = 0
        return $0
    }(UILabel())
    
    
    var isSelected = false
    @objc func tappedCheckButton() {
        isSelected.toggle()
        termsCheckButton.isSelected = isSelected
    }
    
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
        backgroundView.addSubview(termsCheckButton)
        backgroundView.addSubview(termsLabel)
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
            passwordTextField.heightAnchor.constraint(equalTo: fullNameTextField.heightAnchor),
            
            termsCheckButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            termsCheckButton.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor),
            termsCheckButton.trailingAnchor.constraint(equalTo: termsLabel.leadingAnchor, constant: -5),
            
            termsLabel.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            termsLabel.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor)
            
            
        ])
    }
}
