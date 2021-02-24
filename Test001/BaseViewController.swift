//
//  BaseViewController.swift
//  Test001
//
//  Created by lingjie.li on 2021/2/23.
//

import UIKit

class BaseViewController: UIViewController, UIGestureRecognizerDelegate {

    var hideNavigaionBar: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white
        
//        navigationController?.interactivePopGestureRecognizer?.delegate = self
        
        setupContents()
        setupBackButtonItem()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("\(title ?? "vc")-----\(#function)")
//        if hideNavigaionBar {
//            navigationController?.navigationBar.isHidden = true
//        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print("\(title ?? "vc")-----\(#function)")
//        if hideNavigaionBar {
//            navigationController?.navigationBar.isHidden = false
//        }
    }
    
    func setupBackButtonItem() {
        if navigationController?.viewControllers.count ?? 0 < 1 {
            return
        }
        let button = UIButton(type: .system)
        button.setTitle("返回", for: .normal)
        button.sizeToFit()
        button.addTarget(self, action: #selector(back), for: .touchUpInside)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
    }
    
    @objc func back() {
        navigationController?.popViewController(animated: true)
    }
    
    func setupContents() {
        let button = UIButton(type: .system)
        button.setTitle("Third", for: .normal)
        button.addTarget(self, action: #selector(pushThird), for: .touchUpInside)
        button.sizeToFit()
        button.center = view.center
        view.addSubview(button)
    }
    
    @objc func pushThird() {
        let vc = ThirdViewController()
        navigationController?.pushViewController(vc, animated: true)
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
