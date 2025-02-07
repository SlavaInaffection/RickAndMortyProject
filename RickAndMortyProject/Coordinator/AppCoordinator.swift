//
//  AppCoordinator.swift
//  RickAndMortyProject
//
//  Created by Вячеслав on 2/5/25.
//

import UIKit

// MARK: - Coordinator
import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    func start()
}

class TabBarCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var tabBarController: UITabBarController

    init(tabBarController: UITabBarController = UITabBarController()) {
        self.tabBarController = tabBarController
    }

    func start() {
        let firstCoordinator = FirstCoordinator()
        let secondCoordinator = SecondCoordinator()

        childCoordinators.append(firstCoordinator)
        childCoordinators.append(secondCoordinator)

        firstCoordinator.start()
        secondCoordinator.start()

        tabBarController.viewControllers = [firstCoordinator.navigationController, secondCoordinator.navigationController]
    }
}

class FirstCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController

    init() {
        self.navigationController = UINavigationController()
    }

    func start() {
        let vc = ViewController()
        navigationController.viewControllers = [vc]
    }
}

class SecondCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController

    init() {
        self.navigationController = UINavigationController()
    }

    func start() {
        let vc2 = SecondViewController()
        navigationController.viewControllers = [vc2]
    }
}

