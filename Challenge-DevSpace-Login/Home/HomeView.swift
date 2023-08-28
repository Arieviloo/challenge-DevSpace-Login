//
//  HomeView.swift
//  Challenge-DevSpace-Login
//
//  Created by Jadië Oliveira on 26/08/23.
//

import UIKit

class HomeView: UIView {
    
    lazy var logoImagaView: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = UIImage(named: "logo")
        return $0
    }(UIImageView())
    
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
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            logoImagaView.centerXAnchor.constraint(equalTo: centerXAnchor),
            logoImagaView.centerYAnchor.constraint(equalTo: centerYAnchor),
            logoImagaView.heightAnchor.constraint(equalToConstant: 200),
            logoImagaView.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
}
