//
//  ViewController.swift
//  MidTermExamSemester2
//
//  Created by macbook on 2019-11-06.
//  Copyright © 2019 macbook. All rights reserved.
//STUDENT NAME : BASIL SCARIA VARGHESE
//STUDENT ID : 200411299

import UIKit

class ViewController: UIViewController {

    @IBOutlet var dynamicheightlabel: UIView!
    @IBOutlet weak var MyLabel1: UILabel!
    @IBOutlet weak var datepicker1: UIDatePicker!
    
    @IBOutlet weak var imageresultlabel: UILabel!
    @IBOutlet weak var ImageView2: UIImageView!
    
    @IBOutlet weak var ImageView1: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        dynamicheightlabel.layer.cornerRadius=2 //Question 4
        dynamicheightlabel.sizeToFit()//3
       
        MyLabel1.numberOfLines = 0 //Question 2
        MyLabel1.text = "BLAH BLAH BLAH BLAH BLAH \n Basil"
        
        MyLabel1.sizeToFit()
        //Question 5 - Date Picker
        datepicker1.datePickerMode = UIDatePicker.Mode.dateAndTime
        let calendar = Calendar(identifier: .gregorian)
        
        let currentDate = Date()
        var components = DateComponents()
        components.calendar = calendar
        
        components.year = -18
        components.month = 12
        let maxDate = calendar.date(byAdding: components, to: currentDate)!
        
        components.year = -150
        let minDate = calendar.date(byAdding: components, to: currentDate)!
        
        datepicker1.minimumDate = minDate
        datepicker1.maximumDate = maxDate
        print(minDate)
        print(maxDate)
        
        
       
    }
    
    
    @IBAction func nextscreenbutton(_ sender: Any) {
        performSegue(withIdentifier: "mySegue", sender: (Any).self)
    }
    
    
    
    @IBAction func setlabeltext1(_ sender: Any) {
        
        MyLabel1.numberOfLines = 0
        
        
        
        //Question 4 continuation
        
        let attr = [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18), NSAttributedString.Key.foregroundColor : UIColor.red]
        let attrs1 = [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18), NSAttributedString.Key.foregroundColor : UIColor.blue]
        
        let attrs2 = [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18), NSAttributedString.Key.foregroundColor : UIColor.green]
        
        let attributedString = NSMutableAttributedString(string:"I am going to school  ", attributes:attr)
        let attributedString1 = NSMutableAttributedString(string:"and I have an exam ", attributes:attrs1)
        
        let attributedString2 = NSMutableAttributedString(string:"exam . I hope I shall", attributes:attrs2)
        let attributedString3 = NSMutableAttributedString(string:"do OK. I wish it would be a good day", attributes:attr)
        
        attributedString.append(attributedString1)
        attributedString.append(attributedString2)
        attributedString.append(attributedString3)
        
        
        
        
        
        
        MyLabel1.attributedText = attributedString
        
        MyLabel1.sizeToFit()
        
        //Question 4 ends
        
        //Question 6 Begins
        
        let myimage1 = ImageView1.image
        let myimage2 = ImageView2.image
        let data1: NSData = myimage1!.pngData()! as NSData
        let data2: NSData = myimage2!.pngData()! as NSData
        if(data1.isEqual(data2)){
            imageresultlabel.text = "The images are equal"
        }
        else{
            imageresultlabel.text = "The images are not equal"
        }
        
        //Question 9
        let alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            switch action.style{
            case .default:
                print("default")
                
            case .cancel:
                print("cancel")
                
            case .destructive:
                print("destructive")
                
                
            @unknown default:
                print("unknown")
            }}))
        alert.addTextField(configurationHandler: { (textField) in
            textField.placeholder = "Hey Buddy"
        })
        self.present(alert, animated: true, completion: nil)
        
        
  
        


    }
    
    @IBAction func setlabeltext(_ sender: Any) {
    }
    

}



