//
//  BaseNavigationViewController.swift
//  Test001
//
//  Created by lingjie.li on 2021/2/23.
//

import UIKit

class BaseNavigationViewController: UINavigationController, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        delegate = self
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if viewControllers.count >= 1 {
            let button = UIButton(type: .system)
            button.setTitle("返回", for: .normal)
            button.sizeToFit()
            button.addTarget(self, action: #selector(back), for: .touchUpInside)
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
            viewController.hidesBottomBarWhenPushed = true
        }
        
        super.pushViewController(viewController, animated: animated)
    }
    
    @objc func back() {
        popViewController(animated: true)
    }
    
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        if let viewController = viewController as? BaseViewController {
            navigationController.setNavigationBarHidden(viewController.hideNavigaionBar, animated: animated)
        }
    }
    
//    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
//        if let viewController = viewController as? BaseViewController {
//            navigationController.setNavigationBarHidden(viewController.hideNavigaionBar, animated: animated)
//        }
//    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


/***
 1. push压栈
 2. push时两个vc的生命周期
 3. FDFullScreen
 
 1. 为啥 UINavigationController 不论是 init 还是使用直接构造方法，第一个 VC 都是压栈；
 2. push前创建 UIBarButtonItem 和 viewDidLoad再创建 有什么区别
 */