//
//  CustomCellTableViewCell.swift
//  BinaryCounter
//
//  Created by admin on 13/12/2021.
//

import UIKit
 // protocl for delegate
protocol CustomCellTableViewCellDelegat: class{
    func changedNum (num : Int)
}

class CustomCellTableViewCell: UITableViewCell {
// num lebel and init
    @IBOutlet weak var numLebel: UILabel!
    
    var num = 0
    // object
    weak var delegate : CustomCellTableViewCellDelegat?
    // mine button
    @IBAction func minePressed(_ sender: UIButton) {
        num = Int(numLebel!.text!)!
        num = -num
        delegate?.changedNum(num: num)
    }
    // plus button 
    @IBAction func plusPressed(_ sender: UIButton) {
        num = Int(numLebel!.text!)!
        delegate?.changedNum(num: num)
    }
    
}
