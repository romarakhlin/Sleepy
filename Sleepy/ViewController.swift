//
//  ViewController.swift
//  Sleepy
//
//  Created by Roman Rakhlin on 14.10.2019.
//  Copyright © 2019 Roman Rakhlin. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {
    
    var answer1: String!
    var answer2: String!
    
    static let sharedInstance = ViewController()
    
    var hours = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"]
    var minutes = ["50", "30", "10", "00", "-", "-", "-", "-", "-", "-", "-", "-"]
    
    let pickerView = UIPickerView()
    
    @IBOutlet weak var hoursField: UITextField!
    @IBOutlet weak var minutesField: UITextField!
    
    @IBOutlet weak var waringLabel: UILabel!
    @IBOutlet weak var photo: UIImageView!
    
    @IBOutlet weak var first: UILabel!
    @IBOutlet weak var second: UILabel!
    @IBOutlet weak var third: UILabel!
    @IBOutlet weak var fourth: UILabel!
    
    @IBOutlet weak var button: UIButton!
    @IBAction func button(_ sender: UIButton) {
        
        if hoursField.text!.isEmpty && minutesField.text!.isEmpty {
            
            self.waringLabel.text = "Please, fill all fields!"
        } else if hoursField.text!.isEmpty {
            
            self.waringLabel.text = "Please, fill all fields!"
        } else if minutesField.text!.isEmpty {
            
            self.waringLabel.text = "Please, fill all fields!"
        } else if hoursField.text! == "1" && minutesField.text! == "00" {
            
            first.text = "4:00 PM"
            second.text = "5:30 PM"
            third.text = "7:00 PM"
            fourth.text = "8:30 PM"
        } else if hoursField.text! == "1" && minutesField.text! == "10" {
            
            first.text = "4:10 PM"
            second.text = "5:40 PM"
            third.text = "7:10 PM"
            fourth.text = "8:40 PM"
        } else if hoursField.text! == "1" && minutesField.text! == "30" {
            
            first.text = "4:30 PM"
            second.text = "6:00 PM"
            third.text = "7:30 PM"
            fourth.text = "9:00 PM"
        } else if hoursField.text! == "1" && minutesField.text! == "50" {
            
            first.text = "4:50 PM"
            second.text = "6:20 PM"
            third.text = "7:50 PM"
            fourth.text = "9:20 PM"
        } else if hoursField.text! == "2" && minutesField.text! == "00" {
            
            first.text = "5:00 PM"
            second.text = "6:30 PM"
            third.text = "8:00 PM"
            fourth.text = "9:30 PM"
        } else if hoursField.text! == "2" && minutesField.text! == "10" {
            
            first.text = "5:10 PM"
            second.text = "6:40 PM"
            third.text = "8:10 PM"
            fourth.text = "9:40 PM"
        } else if hoursField.text! == "2" && minutesField.text! == "30" {
            
            first.text = "5:30 PM"
            second.text = "7:00 PM"
            third.text = "8:30 PM"
            fourth.text = "10:00 PM"
        } else if hoursField.text! == "2" && minutesField.text! == "50" {
            
            first.text = "5:50 PM"
            second.text = "7:20 PM"
            third.text = "8:50 PM"
            fourth.text = "10:20 PM"
        } else if hoursField.text! == "3" && minutesField.text! == "00" {
            
            first.text = "6:00 PM"
            second.text = "7:30 PM"
            third.text = "9:00 PM"
            fourth.text = "10:30 PM"
        } else if hoursField.text! == "3" && minutesField.text! == "10" {
            
            first.text = "6:10 PM"
            second.text = "7:40 PM"
            third.text = "9:10 PM"
            fourth.text = "10:40 PM"
        } else if hoursField.text! == "3" && minutesField.text! == "30" {
            
            first.text = "6:30 PM"
            second.text = "8:00 PM"
            third.text = "9:30 PM"
            fourth.text = "11:00 PM"
        } else if hoursField.text! == "3" && minutesField.text! == "50" {
            
            first.text = "6:50 PM"
            second.text = "8:20 PM"
            third.text = "9:50 PM"
            fourth.text = "11:20 PM"
        } else if hoursField.text! == "4" && minutesField.text! == "00" {
            
            first.text = "7:00 PM"
            second.text = "8:30 PM"
            third.text = "10:00 PM"
            fourth.text = "11:30 PM"
        } else if hoursField.text! == "4" && minutesField.text! == "10" {
            
            first.text = "7:10 PM"
            second.text = "8:40 PM"
            third.text = "10:10 PM"
            fourth.text = "11:40 PM"
        } else if hoursField.text! == "4" && minutesField.text! == "30" {
            
            first.text = "7:30 PM"
            second.text = "9:00 PM"
            third.text = "10:30 PM"
            fourth.text = "12:00 AM"
        } else if hoursField.text! == "4" && minutesField.text! == "50" {
            
            first.text = "7:50 PM"
            second.text = "9:20 PM"
            third.text = "10:50 PM"
            fourth.text = "12:20 AM"
        } else if hoursField.text! == "5" && minutesField.text! == "00" {
            
            first.text = "8:00 PM"
            second.text = "9:30 PM"
            third.text = "11:00 PM"
            fourth.text = "12:30 AM"
        } else if hoursField.text! == "5" && minutesField.text! == "10" {
            
            first.text = "8:10 PM"
            second.text = "9:40 PM"
            third.text = "11:10 PM"
            fourth.text = "12:40 AM"
        } else if hoursField.text! == "5" && minutesField.text! == "30" {
            
            first.text = "8:30 PM"
            second.text = "10:00 PM"
            third.text = "11:30 PM"
            fourth.text = "1:00 AM"
        } else if hoursField.text! == "5" && minutesField.text! == "50" {
            
            first.text = "8:50 PM"
            second.text = "10:20 PM"
            third.text = "11:50 PM"
            fourth.text = "1:20 AM"
        } else if hoursField.text! == "6" && minutesField.text! == "00" {
            
            first.text = "9:00 PM"
            second.text = "10:30 PM"
            third.text = "12:00 AM"
            fourth.text = "1:30 AM"
        } else if hoursField.text! == "6" && minutesField.text! == "10" {
            
            first.text = "9:10 PM"
            second.text = "10:40 PM"
            third.text = "12:10 AM"
            fourth.text = "1:40 AM"
        } else if hoursField.text! == "6" && minutesField.text! == "30" {
            
            first.text = "9:30 PM"
            second.text = "11:00 PM"
            third.text = "12:30 AM"
            fourth.text = "2:00 AM"
        } else if hoursField.text! == "6" && minutesField.text! == "50" {
            
            first.text = "9:50 PM"
            second.text = "11:20 PM"
            third.text = "12:50 AM"
            fourth.text = "2:20 AM"
        } else if hoursField.text! == "7" && minutesField.text! == "00" {
            
            first.text = "10:00 PM"
            second.text = "11:30 PM"
            third.text = "1:00 AM"
            fourth.text = "2:30 AM"
        } else if hoursField.text! == "7" && minutesField.text! == "10" {
            
            first.text = "10:10 PM"
            second.text = "11:40 PM"
            third.text = "1:10 AM"
            fourth.text = "2:40 AM"
        } else if hoursField.text! == "7" && minutesField.text! == "30" {
            
            first.text = "10:30 PM"
            second.text = "12:00 AM"
            third.text = "1:30 AM"
            fourth.text = "3:00 AM"
        } else if hoursField.text! == "7" && minutesField.text! == "50" {
            
            first.text = "10:50 PM"
            second.text = "12:20 AM"
            third.text = "1:50 AM"
            fourth.text = "3:20 AM"
        } else if hoursField.text! == "8" && minutesField.text! == "00" {
            
            first.text = "11:00 PM"
            second.text = "12:30 PM"
            third.text = "2:00 AM"
            fourth.text = "3:30 AM"
        } else if hoursField.text! == "8" && minutesField.text! == "10" {
            
            first.text = "11:10 PM"
            second.text = "12:40 PM"
            third.text = "2:10 AM"
            fourth.text = "3:40 AM"
        } else if hoursField.text! == "8" && minutesField.text! == "30" {
            
            first.text = "11:30 PM"
            second.text = "1:00 AM"
            third.text = "2:30 AM"
            fourth.text = "4:00 AM"
        } else if hoursField.text! == "8" && minutesField.text! == "50" {
            
            first.text = "11:50 PM"
            second.text = "1:20 AM"
            third.text = "2:50 AM"
            fourth.text = "4:20 AM"
        } else if hoursField.text! == "9" && minutesField.text! == "00" {
            
            first.text = "12:00 PM"
            second.text = "1:30 AM"
            third.text = "3:00 AM"
            fourth.text = "4:30 AM"
        } else if hoursField.text! == "9" && minutesField.text! == "10" {
            
            first.text = "12:10 PM"
            second.text = "1:40 AM"
            third.text = "3:10 AM"
            fourth.text = "4:40 AM"
        } else if hoursField.text! == "9" && minutesField.text! == "30" {
            
            first.text = "12:30 PM"
            second.text = "2:00 AM"
            third.text = "3:30 AM"
            fourth.text = "5:00 AM"
        } else if hoursField.text! == "9" && minutesField.text! == "50" {
            
            first.text = "12:50 PM"
            second.text = "2:20 AM"
            third.text = "3:50 AM"
            fourth.text = "5:20 AM"
        } else if hoursField.text! == "10" && minutesField.text! == "00" {
            
            first.text = "1:00 AM"
            second.text = "2:30 AM"
            third.text = "4:00 AM"
            fourth.text = "5:30 AM"
        } else if hoursField.text! == "10" && minutesField.text! == "10" {
            
            first.text = "1:10 AM"
            second.text = "2:40 AM"
            third.text = "4:10 AM"
            fourth.text = "5:40 AM"
        } else if hoursField.text! == "10" && minutesField.text! == "30" {
            
            first.text = "1:30 AM"
            second.text = "3:00 AM"
            third.text = "4:30 AM"
            fourth.text = "6:00 AM"
        } else if hoursField.text! == "10" && minutesField.text! == "50" {
            
            first.text = "2:50 AM"
            second.text = "4:20 AM"
            third.text = "6:50 AM"
            fourth.text = "7:20 AM"
        } else if hoursField.text! == "11" && minutesField.text! == "00" {
            
            first.text = "2:00 AM"
            second.text = "3:30 AM"
            third.text = "5:00 AM"
            fourth.text = "6:30 AM"
        } else if hoursField.text! == "11" && minutesField.text! == "10" {
            
            first.text = "2:10 AM"
            second.text = "4:40 AM"
            third.text = "5:10 AM"
            fourth.text = "7:40 AM"
        } else if hoursField.text! == "11" && minutesField.text! == "30" {
            
            first.text = "2:30 AM"
            second.text = "4:00 AM"
            third.text = "5:30 AM"
            fourth.text = "7:00 AM"
        } else if hoursField.text! == "11" && minutesField.text! == "50" {
            
            first.text = "2:50 AM"
            second.text = "4:20 AM"
            third.text = "5:50 AM"
            fourth.text = "7:20 AM"
        } else if hoursField.text! == "12" && minutesField.text! == "00" {
            
            first.text = "3:00 AM"
            second.text = "4:30 AM"
            third.text = "6:00 AM"
            fourth.text = "7:30 AM"
        } else if hoursField.text! == "12" && minutesField.text! == "10" {
            
            first.text = "3:10 AM"
            second.text = "4:40 AM"
            third.text = "6:10 AM"
            fourth.text = "7:40 AM"
        } else if hoursField.text! == "12" && minutesField.text! == "30" {
            
            first.text = "3:30 AM"
            second.text = "5:00 AM"
            third.text = "6:30 AM"
            fourth.text = "8:00 AM"
        } else if hoursField.text! == "12" && minutesField.text! == "50" {
            
            first.text = "3:50 AM"
            second.text = "5:20 AM"
            third.text = "6:50 AM"
            fourth.text = "8:20 AM"
        } else {
            
            self.waringLabel.text = "Incorrect input"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
        
        self.hoursField.inputView = pickerView
        self.minutesField.inputView = pickerView

        updatePicker()
        
        let content = UNMutableNotificationContent()
        content.title = "Title"
        content.body = "Body"
        content.sound = UNNotificationSound.default

        let gregorian = Calendar(identifier: .gregorian)
        let now = Date()
        var components = gregorian.dateComponents([.year, .month, .day, .hour, .minute, .second], from: now)

        components.hour = 19
        components.minute = 00
        components.second = 00

        let date = gregorian.date(from: components)!

        let triggerDaily = Calendar.current.dateComponents([.hour,.minute,.second,], from: date)
        let trigger = UNCalendarNotificationTrigger(dateMatching: triggerDaily, repeats: true)

        let request = UNNotificationRequest(identifier: "ViewController", content: content, trigger: trigger)
        print("INSIDE NOTIFICATION")

        UNUserNotificationCenter.current().add(request, withCompletionHandler: {(error) in
            if error != nil {
                print("SOMETHING WENT WRONG")
            }
        })
    }

    func updatePicker() {
        
        let pickerView = UIPickerView()
        pickerView.reloadAllComponents()
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if hoursField.isFirstResponder == true {
            
            return hours.count
        } else if minutesField.isFirstResponder == true {
            
            return minutes.count
        } else if hoursField.isFirstResponder == false {
            
            return minutes.count
        } else if minutesField.isFirstResponder == false {
            
            return hours.count
        } else {
            
            return 0
        }
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if hoursField.isFirstResponder == true {
            
            return hours[row]
        } else if minutesField.isFirstResponder == true {
            
            return minutes[row]
        } else if hoursField.isFirstResponder == false {
            
            return minutes[row]
        } else if minutesField.isFirstResponder == false {
            
            return hours[row]
        } else {
            
            return ""
        }
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if hoursField.isFirstResponder == true {
            
            hoursField.text = hours[row]
            self.view.endEditing(true)
        } else if minutesField.isFirstResponder == true {
            
            minutesField.text = minutes[row]
            self.view.endEditing(true)
        } else if hoursField.isFirstResponder == false {
            
            minutesField.text = minutes[row]
            self.view.endEditing(true)
        } else if minutesField.isFirstResponder == false {
            
            hoursField.text = hours[row]
            self.view.endEditing(true)
        }
    }
}
