//
//  PresentView.swift
//  Challenge-DevSpace-Login
//
//  Created by Jadië Oliveira on 26/08/23.
//

import UIKit

class PresentView: UIView {
    
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
        $0.layer.cornerRadius = 20
//        $0.layer.borderColor = UIColor(red: 207/255, green: 0/255, blue: 192/255, alpha: 1.0).cgColor
        $0.layer.borderWidth = 0
        $0.backgroundColor = .purple
        $0.setImage(UIImage(systemName: "arrowshape.forward.fill")?.withTintColor(.black, renderingMode: .alwaysOriginal), for: .normal)
        return $0
        
    }(UIButton(type: .system))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
        configView()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configView() {
        addSubview(titleLabel)
        addSubview(subtitleLabel)
        addSubview(nextPageButton)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5),
            subtitleLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            subtitleLabel.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
            
            nextPageButton.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: 40),
            nextPageButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            nextPageButton.heightAnchor.constraint(equalToConstant: 40),
            nextPageButton.widthAnchor.constraint(equalToConstant: 40)
        ])
    }
}
