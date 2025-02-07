//
//  LaunchScreenVC.swift
//  RickAndMortyProject
//
//  Created by Вячеслав on 2/1/25.
//

import UIKit

class LaunchScreenVC: UIViewController {
    
    var ramImageView : UIImageView = {
        var image = UIImage(named: "Ram")
        var ramImage = UIImageView(image: image)
        ramImage.contentMode = .scaleAspectFit
        ramImage.translatesAutoresizingMaskIntoConstraints = false
        return ramImage
    }()
    
    var portalImageView : UIImageView = {
        var portalImage = UIImage(named: "Portal")
        var portalImageV = UIImageView(image: portalImage)
        portalImageV.contentMode = .scaleAspectFit
        portalImageV.translatesAutoresizingMaskIntoConstraints = false
        return portalImageV
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        view.addSubview(portalImageView)
        view.addSubview(ramImageView)
        
        
        NSLayoutConstraint.activate([
            portalImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            portalImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            portalImageView.widthAnchor.constraint(equalToConstant: 270),
            portalImageView.heightAnchor.constraint(equalToConstant: 270)])
        
        NSLayoutConstraint.activate([
            ramImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            ramImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -200),
            ramImageView.widthAnchor.constraint(equalToConstant: 360),
            ramImageView.heightAnchor.constraint(equalToConstant: 212)])
        //        animatedLogo()
        
        
    }
    override func viewDidAppear(_ animated: Bool) { //Анимация
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 3.0, delay: .zero, options: .curveEaseInOut) {
            let transform = CGAffineTransform(rotationAngle: .pi)
            self.portalImageView.transform = transform
            
            
        }

        }
        
    }

