//
//  ATMTabBarController.swift
//  ATMecs
//
//  Created by qsi on 17/2/24.
//  Copyright © 2017年 qsi. All rights reserved.
//

import UIKit


class ATMTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let homeVC = UIViewController.init();
        let homeVC2 = UIViewController.init();
        let homeVC3 = UIViewController.init();
        let homeVC4 = UIViewController.init();
       
        homeVC.view.backgroundColor = UIColor.white
        homeVC2.view.backgroundColor = UIColor.white
        homeVC3.view.backgroundColor = UIColor.white
        homeVC4.view.backgroundColor = UIColor.white
        
        
        self.setupChirdVc(vc: homeVC, title: "首页", normolImg: UIImage(named:"首页")!, selectedImg: UIImage(named:"首页-selected")!)
        
        self.setupChirdVc(vc: homeVC2, title: "留言",normolImg: UIImage(named:"留言")!, selectedImg: UIImage(named:"留言-selected")!)
        self.setupChirdVc(vc: homeVC3, title: "圈子",normolImg: UIImage(named:"圈子")!, selectedImg: UIImage(named:"圈子-selected")!)
        self.setupChirdVc(vc: homeVC4, title: "我的",normolImg: UIImage(named:"我的")!, selectedImg: UIImage(named:"我的-selected")!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    private func setupChirdVc(vc:UIViewController,title:String,normolImg:UIImage,selectedImg:UIImage){
        self.tabBar.tintColor = UIColor.orange
        vc.tabBarItem.title = title
        vc.tabBarItem.image = normolImg.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        vc.tabBarItem.selectedImage = selectedImg.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        let navVC = UINavigationController.init(rootViewController: vc)
        self.addChildViewController(navVC)
        
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
