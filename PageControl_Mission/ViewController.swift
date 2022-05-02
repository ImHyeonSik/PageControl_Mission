//
//  ViewController.swift
//  PageControl_Mission
//
//  Created by hyeonsik on 2022/05/02.
//

import UIKit

var images = ["01.png","02.png","03.png","04.png","05.png"]

class ViewController: UIViewController {

    @IBOutlet var imgView: UIImageView!
    
    @IBOutlet var pageControl: UIPageControl!
    
    @IBOutlet var numberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        pageControl.numberOfPages = images.count
        pageControl.currentPage = 0 // 현재 페이지를 의미
        pageControl.pageIndicatorTintColor = UIColor.green
        pageControl.currentPageIndicatorTintColor = UIColor.red
        imgView.image = UIImage(named: images[0])
        
        numberLabel.text = String(pageControl.currentPage)
        
    }

    @IBAction func pageChange(_ sender: UIPageControl) {
        imgView.image = UIImage(named:images [pageControl.currentPage])
        numberLabel.text = String(pageControl.currentPage)
    }
    
}

