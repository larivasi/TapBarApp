//
//  ViewController.swift
//  TapBarApp
//
//  Created by Ларин Василий on 03.10.2022.
//

import UIKit

class StartViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let firstVC = viewController as? FirstViewController {
                firstVC.view.backgroundColor = .yellow
            } else if let secondVC = viewController as? SecondViewController {
                secondVC.view.backgroundColor = .blue
            } else if let navigationVC = viewController as? UINavigationController {
                guard let thirdVC = navigationVC.topViewController as? ThirdViewController else { return }
                thirdVC.title = "Third Screen"
                thirdVC.view.backgroundColor = .orange
            }
        }
    }


}

