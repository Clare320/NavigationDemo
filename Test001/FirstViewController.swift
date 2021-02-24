//
//  FirstViewController.swift
//  Test001
//
//  Created by lingjie.li on 2021/2/23.
//

import UIKit

class FirstViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        hideNavigaionBar = true
    }
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        navigationController?.setNavigationBarHidden(true, animated: true)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
//        navigationController?.setNavigationBarHidden(false, animated: false)
        
        DispatchQueue.main.async {
            print("first----async willDisappear--")
            self.navigationController?.setNavigationBarHidden(false, animated: false)
        }
        
//        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()) {
//            self.navigationController?.setNavigationBarHidden(false, animated: false)
//        }
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
