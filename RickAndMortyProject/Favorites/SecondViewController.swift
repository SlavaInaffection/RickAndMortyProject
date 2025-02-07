//
//  SecondViewController.swift
//  RickAndMortyProject
//
//  Created by Вячеслав on 2/3/25.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    var ramImageView : UIImageView = {
        var image = UIImage(named: "Ram")
        var ramImage = UIImageView(image: image)
        ramImage.contentMode = .scaleAspectFit
        ramImage.translatesAutoresizingMaskIntoConstraints = false
        return ramImage
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "favorites"
        let logoWidth: CGFloat = 400
        let logoHeight: CGFloat = 200
        ramImageView.frame = CGRect(x: 0, y: 0, width: logoWidth, height: logoHeight)
        
        
        navigationItem.titleView = ramImageView
        
        view.backgroundColor = .white
        self.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
