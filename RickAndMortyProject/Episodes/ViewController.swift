//
//  ViewController.swift
//  RickAndMortyProject
//
//  Created by Вячеслав on 2/1/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    var ramImageView : UIImageView = {
        var image = UIImage(named: "Ram")
        var ramImage = UIImageView(image: image)
        ramImage.contentMode = .scaleAspectFit
        ramImage.translatesAutoresizingMaskIntoConstraints = false
        return ramImage
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Episodes"
        
        let logoWidth: CGFloat = 400
        let logoHeight: CGFloat = 200
        ramImageView.frame = CGRect(x: 0, y: 0, width: logoWidth, height: logoHeight)
        
        
        navigationItem.titleView = ramImageView
        
        view.backgroundColor = .white
        self.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 0)
        // Do any additional setup after loading the view.
    }


}

