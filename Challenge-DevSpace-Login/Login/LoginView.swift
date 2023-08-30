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
        $0.textColor = UIColor.primaryColor
        return $0
    }(UILabel())
    
    lazy var fullNameLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Full name"
        $0.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        return $0
    }(UILabel())
    
    lazy var fullNameTextField: UITextField = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = UIColor.secondaryColor
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
        $0.backgroundColor = UIColor.secondaryColor
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
        $0.backgroundColor = UIColor.secondaryColor
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
        $0.setImage(UIImage(systemName: "checkmark.square.fill")?.withTintColor(UIColor.primaryColor, renderingMode: .alwaysOriginal), for: .selected)
        $0.addTarget(self, action: #selector(tappedCheckButton), for: .touchUpInside)
        return $0
    }(UIButton())
    
    lazy var termsLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        let text = "I agree the Terms & Conditions and Privacy Policy"
        $0.text = text
        let mutableText = NSMutableAttributedString(string: text)
        let termsString = (text as NSString).range(of: "Terms & Conditions")
        let privacyString = (text as NSString).range(of: "Privacy Policy")
        mutableText.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.purple, range: termsString)
        mutableText.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.purple, range: privacyString)
        $0.attributedText = mutableText
        $0.isUserInteractionEnabled = true
        $0.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tappedTextTerms)))
        $0.numberOfLines = 0
        $0.font = UIFont.systemFont(ofSize: 14)
        return $0
    }(UILabel())
    
    
    lazy var createButton: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.setTitle("Create Account", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 8
        $0.backgroundColor = UIColor.primaryColor
        return $0
    }(UIButton(type: .system))
    
    lazy var signGoogleButton: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 8
        $0.layer.borderWidth = 2
        $0.layer.borderColor = UIColor.primaryColor.cgColor
        $0.setTitleColor(UIColor.primaryColor, for: .normal)
        return $0
    }(UIButton(type: .system))
    
    lazy var logoGoogleImage: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = UIImage(named: "google")
        $0.contentMode = .scaleAspectFit
        return $0
    }(UIImageView())
    
    lazy var signGoogleLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Sign up with Google"
        $0.isUserInteractionEnabled = true
        $0.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        $0.textColor = UIColor.primaryColor
        return $0
    }(UILabel())
    
    lazy var lineLeftView: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.layer.borderWidth = 2
        $0.layer.borderColor = UIColor.secondaryColor.cgColor
        return $0
    }(UIView())
    
    lazy var lineRighttView: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.layer.borderWidth = 2
        $0.layer.borderColor = UIColor.secondaryColor.cgColor
        return $0
    }(UIView())
    
    lazy var orLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "or"
        $0.isUserInteractionEnabled = true
        $0.font = UIFont.systemFont(ofSize: 14)
        return $0
    }(UILabel())
    
    var isSelected = false
    @objc func tappedCheckButton() {
        isSelected.toggle()
        termsCheckButton.isSelected = isSelected
    }
    
    @objc func tappedTextTerms(gesture: UITapGestureRecognizer) {
        guard let text = termsLabel.text else { return }
        let termsRange = (text as NSString).range(of:"Terms & Conditions")
        let privacyRange = (text as NSString).range(of:"Privacy Policy")
        
        if gesture.didTapAttributedTextInLabel(label: termsLabel, inRange: termsRange) {
            print("Tapped terms")
        } else if gesture.didTapAttributedTextInLabel(label: termsLabel, inRange: privacyRange) {
            print("Tapped privacy")
        } else {
            print("Tapped none")
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.primaryColor
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
        backgroundView.addSubview(createButton)
        backgroundView.addSubview(signGoogleButton)
        backgroundView.addSubview(lineLeftView)
        backgroundView.addSubview(lineRighttView)
        backgroundView.addSubview(orLabel)
        signGoogleButton.addSubview(logoGoogleImage)
        signGoogleButton.addSubview(signGoogleLabel)
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
            termsLabel.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor),
            termsLabel.centerYAnchor.constraint(equalTo: termsCheckButton.centerYAnchor),
            
            createButton.topAnchor.constraint(equalTo: termsLabel.bottomAnchor, constant: 20),
            createButton.leadingAnchor.constraint(equalTo: fullNameTextField.leadingAnchor),
            createButton.trailingAnchor.constraint(equalTo: fullNameTextField.trailingAnchor),
            createButton.heightAnchor.constraint(equalToConstant: 40),
            
            lineLeftView.topAnchor.constraint(equalTo: createButton.bottomAnchor, constant: 20),
            lineLeftView.leadingAnchor.constraint(equalTo: createButton.leadingAnchor),
            lineLeftView.centerXAnchor.constraint(equalTo: centerXAnchor, constant: -110/1),
            lineLeftView.heightAnchor.constraint(equalToConstant: 2),
            
            orLabel.topAnchor.constraint(equalTo: createButton.bottomAnchor, constant: 10),
            orLabel.centerXAnchor.constraint(equalTo: createButton.centerXAnchor),
            
            lineRighttView.topAnchor.constraint(equalTo: createButton.bottomAnchor, constant: 20),
            lineRighttView.trailingAnchor.constraint(equalTo: createButton.trailingAnchor),
            lineRighttView.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 110),
            lineRighttView.heightAnchor.constraint(equalToConstant: 2),
            
            signGoogleButton.topAnchor.constraint(equalTo: createButton.bottomAnchor, constant: 40),
            signGoogleButton.leadingAnchor.constraint(equalTo: createButton.leadingAnchor),
            signGoogleButton.trailingAnchor.constraint(equalTo: createButton.trailingAnchor),
            signGoogleButton.heightAnchor.constraint(equalTo: createButton.heightAnchor),
            
            signGoogleLabel.centerXAnchor.constraint(equalTo: signGoogleButton.centerXAnchor),
            signGoogleLabel.centerYAnchor.constraint(equalTo: signGoogleButton.centerYAnchor),
            
            logoGoogleImage.centerYAnchor.constraint(equalTo: signGoogleButton.centerYAnchor),
            logoGoogleImage.trailingAnchor.constraint(equalTo: signGoogleLabel.leadingAnchor, constant: -5),
            logoGoogleImage.heightAnchor.constraint(equalToConstant: 20),
            logoGoogleImage.widthAnchor.constraint(equalToConstant: 20)
            
           
            
        ])
    }
}
