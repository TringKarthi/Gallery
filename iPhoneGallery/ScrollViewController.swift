//
//  ScrollViewController.swift
//  iPhoneGallery
//
//  Created by karthi on 11/7/16.
//  Copyright © 2016 tringapps. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController , UIScrollViewDelegate {
    
    let viewObject = ViewController()
    let scrollView = UIScrollView()
    var buttonTag : Int?
    
    var scrollImageView = UIImageView()
    override func viewDidLoad() {
        
        super.viewDidLoad()
        scrollView.delegate = self
        
        self.view = scrollView
        
        scrollView.contentSize = CGSize(width:100, height:100 )
        
        if buttonTag == 101 {
            scrollImageView = UIImageView(frame: CGRect(x: 0, y: 50, width: 400, height: 400))
            scrollImageView.image = UIImage(named: "treeimage")
        } else {
            scrollImageView = UIImageView(frame: CGRect(x: 0, y: 50, width: 400, height: 400))
            scrollImageView.image = UIImage(named: "Image")
        }
        
        //let scrollImageView = UIImageView(image: image)
        // scrollImageView.frame = CGRect(x: 0, y: 150, width: 400, height: 400)
        self.view.addSubview(scrollImageView)
        scrollView.minimumZoomScale = 0.2
        scrollView.maximumZoomScale = 0.9
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return self.scrollImageView
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

