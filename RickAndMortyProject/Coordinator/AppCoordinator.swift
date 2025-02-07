//
//  AppCoordinator.swift
//  RickAndMortyProject
//
//  Created by Вячеслав on 2/5/25.
//

import UIKit

// MARK: - Coordinator
import UIKit

protocol Coordinator { // Создаем координатор через протокол и сетаем чайлдкоординаторы
    var childCoordinators: [Coordinator] { get set }
    func start()
}

class TabBarCoordinator: Coordinator {  // Создаем класс ТабБарКоординатор, инитаем его
    var childCoordinators = [Coordinator]()
    var tabBarController: UITabBarController

    init(tabBarController: UITabBarController = UITabBarController()) {
        self.tabBarController = tabBarController
    }

    func start() { // Делаем функцию с координаторами для каждой вьюхи которая имеет таббар
        let firstCoordinator = FirstCoordinator()
        let secondCoordinator = SecondCoordinator()

        childCoordinators.append(firstCoordinator) // Подключаем их
        childCoordinators.append(secondCoordinator)

        firstCoordinator.start()
        secondCoordinator.start()

        tabBarController.viewControllers = [firstCoordinator.navigationController, secondCoordinator.navigationController] // Привязываем к вьюхам
    }
}

class FirstCoordinator: Coordinator { // делаем координаторы которые мы сделали ранее
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController

    init() {
        self.navigationController = UINavigationController()
    }

    func start() { // подключаем вьюху с навигатором
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

