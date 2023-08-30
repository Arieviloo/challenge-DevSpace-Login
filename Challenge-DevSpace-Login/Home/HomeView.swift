//
//  HomeView.swift
//  Challenge-DevSpace-Login
//
//  Created by Jadië Oliveira on 26/08/23.
//

import UIKit

protocol HomeViewProtocol:NSObject {
    func tappedNextScreen()
}

class HomeView: UIView {
    
    private var delegate: HomeViewProtocol?
    public func delegate(delegate: HomeViewProtocol) {
        self.delegate = delegate
    }
    
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
    
    lazy var titleLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Acess online course for free every time"
        $0.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        $0.textAlignment = .center
        $0.numberOfLines = 0
        return $0
    }(UILabel())
    
    lazy var subtitleLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Update your basic skill to be advance with experts mentors"
        $0.font = UIFont.systemFont(ofSize: 18)
        $0.textAlignment = .center
        $0.numberOfLines = 0
        return $0
    }(UILabel())
    
    lazy var nextPageButton: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 25
        $0.layer.borderWidth = 0
        $0.backgroundColor = UIColor.primaryColor
        $0.setImage(UIImage(systemName: "arrowshape.forward.fill")?.withTintColor(.white, renderingMode: .alwaysOriginal), for: .normal)
        $0.addTarget(self, action: #selector(tappedNextScreen), for: .touchUpInside)
        return $0
        
    }(UIButton(type: .system))
    
    @objc func tappedNextScreen() {
        self.delegate?.tappedNextScreen()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configView()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configView() {
        addSubview(logoImagaView)
        addSubview(backgroundView)
        backgroundView.addSubview(titleLabel)
        backgroundView.addSubview(subtitleLabel)
        backgroundView.addSubview(nextPageButton)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            logoImagaView.centerXAnchor.constraint(equalTo: centerXAnchor),
            logoImagaView.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -50),
            logoImagaView.heightAnchor.constraint(equalToConstant: 200),
            logoImagaView.widthAnchor.constraint(equalToConstant: 200),
            
            backgroundView.topAnchor.constraint(equalTo: logoImagaView.bottomAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            titleLabel.topAnchor.constraint(equalTo: backgroundView.topAnchor, constant: 30),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5),
            subtitleLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            subtitleLabel.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
            
            nextPageButton.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: 40),
            nextPageButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            nextPageButton.heightAnchor.constraint(equalToConstant: 50),
            nextPageButton.widthAnchor.constraint(equalToConstant: 50)
        ])
    }
}
