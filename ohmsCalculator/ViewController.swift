//
//  ViewController.swift
//  ohmsCalculator
//
//  Created by Jacob Davis on 3/27/23.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    @IBOutlet weak var picker: UIPickerView!

    @IBOutlet weak var ohmsLabel: UILabel!
    
    @IBOutlet weak var percentLabel: UILabel!
    @IBOutlet weak var ohmsLabel2: UILabel!
    var names = [[1,2,3,4,5,6,7,8,9,10],[1,2,3,4,5,6,7,8,9,10],[1,2,3,4,5,6,7,8,9,10,11,12],[1,2,3,4,5,6,7,8,9,10,11,12]]
    var row1: [Int] = []
    var row2: [Int] = []
    var row3: [Int] = []
    var row4: [Int] = []
    
    var counting = 0
//    var black = 1
//    var hi = 3
    var concatenate = 0
    var math = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ohmsLabel.text = " Ω"
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return names.count
    }
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        
        if  row == 0{
            return NSAttributedString(string: "\(names[component][row])", attributes: [NSAttributedString.Key.backgroundColor: UIColor.black])
        } else if row == 1{
            return NSAttributedString(string: "\(names[component][row])", attributes: [NSAttributedString.Key.backgroundColor: UIColor.brown])
        } else if row == 2{
            return NSAttributedString(string: "\(names[component][row])", attributes: [NSAttributedString.Key.backgroundColor: UIColor.red])
        }else if row == 3{
            return NSAttributedString(string: "\(names[component][row])", attributes: [NSAttributedString.Key.backgroundColor: UIColor.orange])
        }else if row == 4{
            return NSAttributedString(string: "\(names[component][row])", attributes: [NSAttributedString.Key.backgroundColor: UIColor.yellow])
        }else if row == 5{
            return NSAttributedString(string: "\(names[component][row])", attributes: [NSAttributedString.Key.backgroundColor: UIColor.green])
        }else if row == 6{
            return NSAttributedString(string: "\(names[component][row])", attributes: [NSAttributedString.Key.backgroundColor: UIColor.blue])
        }else if row == 7{
            return NSAttributedString(string:"\(names[component][row])", attributes: [NSAttributedString.Key.backgroundColor: UIColor.purple])
        }else if row == 8{
            return NSAttributedString(string: "\(names[component][row])", attributes: [NSAttributedString.Key.backgroundColor: UIColor.gray])
        }else if row == 9{
            return NSAttributedString(string: "\(names[component][row])", attributes: [NSAttributedString.Key.backgroundColor: UIColor.white])
        }else if row == 10{
            return NSAttributedString(string: "\(names[component][row])", attributes: [NSAttributedString.Key.backgroundColor: UIColor.systemYellow])
        }else if row == 11{
            return NSAttributedString(string: "\(names[component][row])", attributes: [NSAttributedString.Key.backgroundColor: UIColor.systemGray6])
        }
        return NSAttributedString(string: "\(names[component][row])")
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return names[component].count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(names[component][row])"
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        var test = names[component]
//        print(test)
//        if "\(test)" == names[component][row]{
//            print("hello")
//        }
        print([component])
//        row1.append(names[1][row])
//        row2.append(names[0][row])
        if component == 0{
            ohmsLabel2.text = "\(names[0][row])"
            row1.insert(names[0][row], at: 0)
        } else if component == 1{
            ohmsLabel.text = "\(names[1][row]) Ω"
            row1.insert(names[1][row], at: 1)
        }else if component == 2{
            row3.insert(names[2][row], at: 0)
            concatenate = Int("\(row1[0])\(row1[1])")!
//            print(row1[0])
//            print(row1[1])
            print(concatenate)
            
//            black = Int(pow(hi, 2))
//            math = concatenate * pow(1, 2)
//            print(math)
            if row3[0] == 1{
              math = concatenate * 1
            } else if row3[0] == 2{
                math = concatenate * 10
            }else if row3[0] == 3{
                math = concatenate * 100
            }else if row3[0] == 4{
                math = concatenate * 1000
            }else if row3[0] == 5{
                math = concatenate * 10000
            }else if row3[0] == 6{
                math = concatenate * 100000
            }else if row3[0] == 7{
                math = concatenate * 1000000
            }else if row3[0] == 8{
                math = concatenate * 10000000
            }else if row3[0] == 9{
                math = concatenate * 100000000
            }else if row3[0] == 10{
                math = concatenate * 1000000000
            }else if row3[0] == 11{
                math = concatenate * Int(0.1)
            }else if row3[0] == 12{
                math = concatenate * Int(0.01)
            }
            ohmsLabel.text = "\(math) Ω"
            math = 0
            ohmsLabel2.text = ""
        }else if component == 3{
            row4.insert(names[3][row], at: 0)
            if row4[0] == 1{
                percentLabel.text = "± 1%"
            } else if row4[0] == 2{
                percentLabel.text = "± 2%"
            }else if row4[0] == 3{
                percentLabel.text = "± 3%"
            }else if row4[0] == 4{
                percentLabel.text = "± 4%"
            }else if row4[0] == 5{
                percentLabel.text = "± 0.5%"
            }else if row4[0] == 6{
                percentLabel.text = "± 0.25%"
            }else if row4[0] == 7{
                percentLabel.text = "± 0.1%"
            }else if row4[0] == 8{
                percentLabel.text = "± 0.05%"
            }else if row4[0] == 9{
                percentLabel.text = "± 2%"
            }else if row4[0] == 10{
                percentLabel.text = ""
            }else if row4[0] == 11{
                percentLabel.text = "± 5%"
            }else if row4[0] == 12{
                percentLabel.text = "± 10%"
            }
        }
            
       
//        if test.count % 2 == 1{
//            ohmsLabel2.text = "\(names[component][row])  "
//        } else if test.count % 2 == 0{
//            counting = Int("\(test[test.count])")!
//            ohmsLabel.text = "\(counting) Ω "
//        }
            
        
//        var pick = picker.selectedRow(inComponent: 1)
//        print(pick)
    }
    
   

}
