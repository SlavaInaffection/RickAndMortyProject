//
//  SecondViewController.swift
//  RickAndMortyProject
//
//  Created by Вячеслав on 2/3/25.
//

import UIKit

class SecondViewController: UIViewController {
    
    //MARK: - Images
    var ramImageView : UIImageView = {
        var image = UIImage(named: "Ram")
        var ramImage = UIImageView(image: image)
        ramImage.contentMode = .scaleAspectFit
        ramImage.translatesAutoresizingMaskIntoConstraints = false
        return ramImage
    }()

    var favoritesImage = UIImage(named: "Favorites")?.resized(to: 0.5)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "favorites"
        let logoWidth: CGFloat = 400
        let logoHeight: CGFloat = 200
        ramImageView.frame = CGRect(x: 0, y: 0, width: logoWidth, height: logoHeight)
        
        
        navigationItem.titleView = ramImageView
        
        view.backgroundColor = .white
        self.tabBarItem = UITabBarItem(title: "Favorites", image: favoritesImage, tag: 1)
        // Do any additional setup after loading the view.
    }
    

  
}
