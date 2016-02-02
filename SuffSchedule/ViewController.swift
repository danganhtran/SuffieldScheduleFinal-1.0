//
//  ViewController.swift
//  SuffSchedule
//
//  Created by Dan on 8/22/15.
//  Copyright (c) 2015 Dan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //array to hold subjects options
    var subjects = ["Math","======","Algebra","Geometry","Calculus","Statistics","","Science","======","Physics","Biology","Chemistry","Comp. Science","","History","======","Economics","Government","Business","","Language","","English","","Art","Music","","Elective","Leadership","Free"]
    

    let defaults =  NSUserDefaults(suiteName: "group.org.suffieldacademy.ScheduleNotifier")
    
    
    @IBOutlet weak var PickerA: UITextField!
    
    @IBOutlet weak var PickerB: UITextField!
    
    @IBOutlet weak var PickerC: UITextField!
    
    @IBOutlet weak var PickerD: UITextField!
    
    @IBOutlet weak var PickerE: UITextField!
    
    @IBOutlet weak var PickerF: UITextField!
    
    @IBOutlet weak var PickerG: UITextField!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        PickerA.text = defaults!.objectForKey("Period A") as? String
        PickerB.text = defaults!.objectForKey("Period B") as? String
        PickerC.text = defaults!.objectForKey("Period C") as? String
        PickerD.text = defaults!.objectForKey("Period D") as? String
        PickerE.text = defaults!.objectForKey("Period E") as? String
        PickerF.text = defaults!.objectForKey("Period F") as? String
        PickerG.text = defaults!.objectForKey("Period G") as? String
        // Do any additional setup after loading the view, typically from a nib.
 
    }
       override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        
        return false
    }
    
    @IBAction func SubjectPickerA(sender: UITextField) {
        ActionSheetStringPicker.showPickerWithTitle("Choose Class", rows: subjects, initialSelection: 0, doneBlock: {
            picker, value, index in
            sender.text = self.subjects[value]
            self.defaults!.setObject(self.PickerA.text, forKey: "Period A")
            return
            }, cancelBlock: { ActionStringCancelBlock in return }, origin: sender)
        
    }
    @IBAction func SubjectPickerB(sender: UITextField) {
        ActionSheetStringPicker.showPickerWithTitle("Choose Class", rows: subjects, initialSelection: 0, doneBlock: {
            picker, value, index in
            sender.text = self.subjects[value]
            self.defaults!.setObject(self.PickerB.text, forKey: "Period B")
            return
            }, cancelBlock: { ActionStringCancelBlock in return }, origin: sender)
    }
    @IBAction func SubjectPickerC(sender: UITextField) {
        ActionSheetStringPicker.showPickerWithTitle("Choose Class", rows: subjects, initialSelection: 0, doneBlock: {
            picker, value, index in
            sender.text = self.subjects[value]
            self.defaults!.setObject(self.PickerC.text, forKey: "Period C")
            return
            }, cancelBlock: { ActionStringCancelBlock in return }, origin: sender)
    }
    @IBAction func SubjectPickerD(sender: UITextField) {
        ActionSheetStringPicker.showPickerWithTitle("Choose Class", rows: subjects, initialSelection: 0, doneBlock: {
            picker, value, index in
            sender.text = self.subjects[value]
            self.defaults!.setObject(self.PickerD.text, forKey: "Period D")
            return
            }, cancelBlock: { ActionStringCancelBlock in return }, origin: sender)
    }
    @IBAction func SubjectPickerE(sender: UITextField) {
        ActionSheetStringPicker.showPickerWithTitle("Choose Class", rows: subjects, initialSelection: 0, doneBlock: {
            picker, value, index in
            sender.text = self.subjects[value]
            self.defaults!.setObject(self.PickerE.text, forKey: "Period E")
            return
            }, cancelBlock: { ActionStringCancelBlock in return }, origin: sender)
    }
    @IBAction func SubjectPickerF(sender: UITextField) {
        ActionSheetStringPicker.showPickerWithTitle("Choose Class", rows: subjects, initialSelection: 0, doneBlock: {
            picker, value, index in
            sender.text = self.subjects[value]
            self.defaults!.setObject(self.PickerF.text, forKey: "Period F")
            return
            }, cancelBlock: { ActionStringCancelBlock in return }, origin: sender)
    }
    
    @IBAction func SubjectPickerG(sender: UITextField) {
        ActionSheetStringPicker.showPickerWithTitle("Choose Class", rows: subjects, initialSelection: 0, doneBlock: {
            picker, value, index in
            sender.text = self.subjects[value]
            self.defaults!.setObject(self.PickerG.text, forKey: "Period G")
            return
            }, cancelBlock: { ActionStringCancelBlock in return }, origin: sender)
    }
    

}

