//
//  SceneDelegate.swift
//  RickAndMortyProject
//
//  Created by Вячеслав on 2/1/25.
//
import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    var tabBarCoordinator: TabBarCoordinator?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: windowScene)
        self.window = window
        
        // 🔹 1. Показываем фейковый LaunchScreen
        let loadingVC = LaunchScreenVC()
        window.rootViewController = loadingVC
        
        
        
        window.makeKeyAndVisible()
        
        // ⏳ 2. Через 2 секунды загружаем TabBarController
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            let tabBarController = UITabBarController()
            let tabBarCoordinator = TabBarCoordinator(tabBarController: tabBarController)
            self.tabBarCoordinator = tabBarCoordinator
            tabBarCoordinator.start()
            
            // 🔹 3. Устанавливаем TabBarController как RootViewController
            window.rootViewController = tabBarController
        }
    }

    func sceneDidDisconnect(_ scene: UIScene) {}
    func sceneDidBecomeActive(_ scene: UIScene) {}
    func sceneWillResignActive(_ scene: UIScene) {}
    func sceneWillEnterForeground(_ scene: UIScene) {}
    func sceneDidEnterBackground(_ scene: UIScene) {}
}

