//
//  ViewController.swift
//  iPhoneGallery
//
//  Created by karthi on 11/7/16.
//  Copyright © 2016 tringapps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let treeButton = UIButton(type: .custom)
    let fallsButton = UIButton(type: .custom)
    
    override func viewDidLoad() {
        
        self.navigationController?.title = "Home"
        
        treeButton.setImage(UIImage(named: "treeimage"), for: .normal)
        treeButton.frame = CGRect(x: 0, y: 150, width:200, height: 200 )
        treeButton.addTarget(self, action: #selector(buttonPress) , for: .touchUpInside)
        treeButton.tag = 101
        self.view.addSubview(treeButton)
        
        fallsButton.setImage(UIImage(named: "Image"), for: .normal)
        fallsButton.frame = CGRect(x: 205, y: 150, width:200, height: 200 )
        fallsButton.addTarget(self, action: #selector(buttonPress), for: .touchUpInside)
        fallsButton.tag = 102
        self.view.addSubview(fallsButton)
        
    }
    
    func buttonPress(sender: UIButton)
    {
        let newscrollVC = ScrollViewController()
        newscrollVC.buttonTag = sender.tag
        print("tag value ",sender.tag)
        self.navigationController?.pushViewController(newscrollVC, animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

