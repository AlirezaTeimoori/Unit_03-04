//Created by: Alireza Teimoori
//Created on: 13 Oct 2017
//Created for: ICS3UR-1
//Lesson: Unit 3-04
//this app checks if the year user has entered is or is not a leap year

import UIKit
// comment out line below and one at bottom, to make code work in Xcode
import PlaygroundSupport
import Foundation
//for random number
class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    var instructionLabel : UILabel!
    var yearTextField : UITextField!
    var CheckButton : UIButton!
    var answerLabel : UILabel!
    
    override func viewDidLoad() {
        // create the UIView
        
        let view = UIView()
        view.backgroundColor = UIColor.white
        self.view = view
        
        // create all the UIElements
        
        
        
        instructionLabel = UILabel(frame: CGRect(x: 300, y: 50, width: 500, height: 50))
        instructionLabel.text = "enter a year to check if is a leap year or not"
        view.addSubview(instructionLabel)
        
        yearTextField = UITextField(frame: CGRect(x: 360, y: 150, width: 200, height: 50))
        yearTextField.borderStyle = UITextBorderStyle.roundedRect
        yearTextField.placeholder = "between 1 & 2017"
        view.addSubview(yearTextField)
        
        
        CheckButton = UIButton(frame: CGRect(x: 410, y: 230, width: 100, height: 50))
        CheckButton.setTitle("Check!", for: UIControlState.normal)
        CheckButton.setTitleColor(UIColor.blue, for: UIControlState.normal)
        CheckButton.addTarget(self, action: #selector(CheckTheNumber), for: UIControlEvents.touchUpInside)
        view.addSubview(CheckButton)
        
        
        answerLabel = UILabel(frame: CGRect(x: 300, y: 350, width: 500, height: 50))
        answerLabel.text = nil
        view.addSubview(answerLabel)
        
    }
    
    @objc func CheckTheNumber() {
        // calculate the person's height
        
        let year : Int =  Int(yearTextField.text!)!
        
        if year > 0{
            if year % 100 == 0 {
                if year % 400 == 0 {
                    answerLabel.text = "\(year) is a Leap Year." 
                }else{
                    answerLabel.text = "\(year) is not a Leap Year." 
                }
            }else if year % 4 == 0{
                answerLabel.text = "\(year) is a Leap Year." 
            }else{
                answerLabel.text = "\(year) is not a Leap Year." 
            }
        }else{
            answerLabel.text = "enter a number between 1 and 2017 for year" 
        }
    }
            // this is for when code is moved to Xcode, the Status bar will be removed
            override var prefersStatusBarHidden: Bool {
                return true
            }
        }
        
        // need to also comment this out to make work in Xcode
        PlaygroundPage.current.liveView = ViewController()


