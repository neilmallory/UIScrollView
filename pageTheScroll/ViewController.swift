//
//  ViewController.swift
//  pageTheScroll
//
//  Created by neil mallory on 11/05/2017.
//  Copyright © 2017 neil mallory. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    var images = [UIImageView]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            
            newX = view.frame.midX + (view.frame.size.width * CGFloat(x))
            
            scrollView.addSubview(imageView)
            
            imageView.frame = CGRect(x: newX - 75, y: (view.frame.size.height / 2) - 75, width: 150, height: 150)
        }
        
        print("Count: \(images.count)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

