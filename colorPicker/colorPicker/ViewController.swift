//
//  ViewController.swift
//  colorPicker
//
//  Created by Cassidy Pelchat on 3/22/19.
//  Copyright © 2019 Cassidy Pelchat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let dataSource = ["Red", "Orange", "Yellow", "Green", "Blue", "Purple"]
    
    @IBOutlet weak var detail: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.dataSource = self
        pickerView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataSource.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        detail.text = dataSource[row]
        
    
        if(row == 0)
        {
            self.view.backgroundColor = UIColor.red;
        }
        else if(row == 1)
        {
            self.view.backgroundColor = UIColor.orange;
        }
        else if(row == 2)
        {
            self.view.backgroundColor = UIColor.yellow;
        }
        else if(row == 3)
        {
            self.view.backgroundColor = UIColor.green;
        }
        else if(row == 4)
        {
            self.view.backgroundColor = UIColor.blue;
        }
        else
        {
            self.view.backgroundColor = UIColor.purple;
        }
        
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataSource[row]
    }
    
    
}
