//
//  RootTabbarViewController.swift
//  Test001
//
//  Created by lingjie.li on 2021/2/23.
//

import UIKit

class RootTabbarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        setupViewControllers()
    }
    
    func setupViewControllers() {
        let firstVC = FirstViewController()
        firstVC.title = "First"
        let firstNav = BaseNavigationViewController(rootViewController: firstVC)
        
        let secondVC = SecondViewController()
        secondVC.title = "Second"
        let secondNav = BaseNavigationViewController(rootViewController: secondVC)
        
        viewControllers = [firstNav, secondNav]
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
