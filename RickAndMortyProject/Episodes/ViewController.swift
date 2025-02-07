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
    
    var EpisodesImage = UIImage(named: "Episodes")?.resized(to: 0.5)
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Episodes"
        
        let logoWidth: CGFloat = 400
        let logoHeight: CGFloat = 200
        ramImageView.frame = CGRect(x: 0, y: 0, width: logoWidth, height: logoHeight)
        
        
        
        navigationItem.titleView = ramImageView
        self.tabBarItem = UITabBarItem(title: "Episodes", image: EpisodesImage, tag: 0)
        view.backgroundColor = .white
        /*self.tabBarItem = UITabBarItem(title: "Episodes" , image: ramImageViewEpisodes, tag: 0)*/
        // Do any additional setup after loading the view.
        
    }


}

extension UIImage {
    func resized(to scale: CGFloat) -> UIImage {
        let newSize = CGSize(width: self.size.width * scale, height: self.size.height * scale)
        let renderer = UIGraphicsImageRenderer(size: newSize)
        return renderer.image {_ in
            self.draw(in: CGRect(origin: .zero, size: newSize))
        }
    }
    
}
