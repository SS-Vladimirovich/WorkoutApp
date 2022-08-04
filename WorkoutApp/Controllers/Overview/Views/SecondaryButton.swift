//
//  SecondaryButton.swift
//  WorkoutApp
//
//  Created by SERGEY SOKOLOV on 02.08.2022.
//

import Foundation
import UIKit

class SecondaryButton: UIButton {
    
    let label = UILabel()
    let iconView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addViews()
        layoutViews()
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setTitle(_ title: String) {
        label.text = title
    }
}

extension SecondaryButton {
    
    func addViews() {
        addView(label)
        addView(iconView)
    }
    
    func layoutViews() {
        NSLayoutConstraint.activate([
            iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            iconView.heightAnchor.constraint(equalToConstant: 5),
            iconView.widthAnchor.constraint(equalToConstant: 10),
            
            label.centerYAnchor.constraint(equalTo: centerYAnchor),
            label.trailingAnchor.constraint(equalTo: iconView.leadingAnchor),
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10)
        ])
    }
    
    func configure() {
        backgroundColor = Resouces.Colors.secondary
        layer.cornerRadius = 14
        makeSystem(self)
        
        label.textColor = Resouces.Colors.active
        label.textAlignment = .center
        label.font = Resouces.Fonts.helvelticaRegular(with: 15)
        
        iconView.image = Resouces.Images.Common.downArrow?.withRenderingMode(.alwaysTemplate)
        iconView.tintColor = Resouces.Colors.active
    }
}
