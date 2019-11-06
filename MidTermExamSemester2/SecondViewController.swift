//
//  SecondViewController.swift
//  MidTermExamSemester2
//
//  Created by macbook on 2019-11-06.
//  Copyright © 2019 macbook. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var slider1: UISlider!
    @IBOutlet weak var ImageView3: UIImageView!
    //Question 10
    @IBOutlet weak var View3: UIView!
    @IBOutlet weak var View2: UIView!
    @IBOutlet weak var View1: UIView!
    @IBOutlet weak var masklabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Question 11
        slider1.minimumValue=0
        slider1.maximumValue=50
    
        let coloredBackground = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
        coloredBackground.backgroundColor = UIColor.green
        
       
        coloredBackground.addSubview(ImageView3)
        
        let label = UILabel(frame: coloredBackground.bounds)
        label.text = "stackoverflow"
        coloredBackground.addSubview(label)
        
        ImageView3.mask = label
        
        

        // Do any additional setup after loading the view.
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
