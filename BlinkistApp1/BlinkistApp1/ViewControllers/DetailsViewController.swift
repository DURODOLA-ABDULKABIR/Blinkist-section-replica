//
//  DetailsViewController.swift
//  BlinkistApp1
//
//  Created by Decagon on 20.4.21.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var cellImage: UIImageView!
    
    var image = UIImage()
    var  labelContent1 = ""
    var  labelContent2 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cellImage.image = image
        label1.text = labelContent1
        label2.text = labelContent2
    }
    
    
        
}
