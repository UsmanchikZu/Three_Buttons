//
//  ViewController.swift
//  Three buttons
//
//  Created by aeroclub on 04.11.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private var isPressed = false
    
    private lazy var firstButton: UIButton = {
        let button = UIButton(configuration: .filled())
        
        button.setTitle("First Button", for: .normal)
        button.backgroundColor = .systemGray3
        button.setImage(UIImage(systemName: "arrow.forward.circle.fill"), for: .normal)
        button.semanticContentAttribute = .forceRightToLeft
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(firstButtonTap), for: [.touchDown, .touchUpInside, .touchUpOutside])
        button.configuration?.titlePadding = 8
        button.configuration?.imagePadding = 8
        button.configuration?.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 14, bottom: 10, trailing: 14)
        
        return button
    }()
    
    private lazy var secondButton: UIButton = {
        let button = UIButton(configuration: .filled())
        
        button.setTitle("Second Medium Button", for: .normal)
        button.backgroundColor = .systemGray3
        button.setImage(UIImage(systemName: "arrow.forward.circle.fill"), for: .normal)
        button.semanticContentAttribute = .forceRightToLeft
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(secondButtonTap), for: [.touchDown, .touchUpInside, .touchUpOutside])
        button.configuration?.titlePadding = 8
        button.configuration?.imagePadding = 8
        button.configuration?.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 14, bottom: 10, trailing: 14)
        
        return button
    }()
    
    private lazy var thirdButton: UIButton = {
        let button = UIButton(configuration: .filled())
        
        button.setTitle("Third", for: .normal)
        button.backgroundColor = .systemGray3
        button.setImage(UIImage(systemName: "arrow.forward.circle.fill"), for: .normal)
        button.semanticContentAttribute = .forceRightToLeft
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(thirdButtonTap), for: [.touchDown, .touchUpInside, .touchUpOutside])
        button.configuration?.titlePadding = 8
        button.configuration?.imagePadding = 8
        button.configuration?.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 14, bottom: 10, trailing: 14)
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    private func setup() {
        view.addSubview(firstButton)
        view.addSubview(secondButton)
        view.addSubview(thirdButton)
        
        firstButton.translatesAutoresizingMaskIntoConstraints = false
        secondButton.translatesAutoresizingMaskIntoConstraints = false
        thirdButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            firstButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            firstButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            
            secondButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            secondButton.topAnchor.constraint(equalTo: firstButton.bottomAnchor, constant: 10),
            
            thirdButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            thirdButton.topAnchor.constraint(equalTo: secondButton.bottomAnchor, constant: 10)
            
        ])
    }
    
    @objc func firstButtonTap() {
      
        if isPressed {
            isPressed = false
            UIView.animate(withDuration: 0.2,
                           delay: 0,
                           usingSpringWithDamping: 0.5,
                           initialSpringVelocity: 0.5,
                           options: .curveEaseInOut) {
                self.firstButton.transform = .identity
            }
        } else {
            isPressed = true
            UIView.animate(withDuration: 0.2,
                           delay: 0,
                           usingSpringWithDamping: 0.5,
                           initialSpringVelocity: 0.5,
                           options: .curveEaseInOut) {
                self.firstButton.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
            }
        }
    }
    
    @objc func secondButtonTap() {
        
        if isPressed {
            isPressed = false
            UIView.animate(withDuration: 0.2,
                           delay: 0,
                           usingSpringWithDamping: 0.5,
                           initialSpringVelocity: 0.5,
                           options: .curveEaseInOut) {
                self.secondButton.transform = .identity
            }
        } else {
            isPressed = true
            UIView.animate(withDuration: 0.2,
                           delay: 0,
                           usingSpringWithDamping: 0.5,
                           initialSpringVelocity: 0.5,
                           options: .curveEaseInOut) {
                self.secondButton.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
            }
        }
    }
    
    @objc func thirdButtonTap() {
        if isPressed {
            isPressed = false
            UIView.animate(withDuration: 0.2,
                           delay: 0,
                           usingSpringWithDamping: 0.5,
                           initialSpringVelocity: 0.5,
                           options: .curveEaseInOut) {
                self.thirdButton.transform = .identity
            }
        } else {
            isPressed = true
            UIView.animate(withDuration: 0.2,
                           delay: 0,
                           usingSpringWithDamping: 0.5,
                           initialSpringVelocity: 0.5,
                           options: .curveEaseInOut) {
                self.thirdButton.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
            }
        }
        present(ButtonTap(), animated: true)
    }
}

