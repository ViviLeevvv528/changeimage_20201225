//
//  ViewController.swift
//  changeimage_20201225
//
//  Created by Vivi Lee on 2020/12/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var naraImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeimageSize(_ sender: UISegmentedControl){
        let width: CGFloat = 300
        var height: CGFloat = 0
        
        if sender.selectedSegmentIndex == 0 {
            height = width
        } else if sender.selectedSegmentIndex == 1 {
            height = width / 3 * 4
        } else {
            height = width / 9 * 16
        }
        naraImage.frame.size = CGSize(width: width, height: height)
    }
    
}

