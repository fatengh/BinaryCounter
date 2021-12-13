//
//  ViewController.swift
//  BinaryCounter
//
//  Created by admin on 13/12/2021.
//

import UIKit

class ViewController: UIViewController {
     // total lebel and init
    @IBOutlet weak var totalLebel: UILabel!
    var total = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 16 cell
        return 16;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // custom cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "BinryCell", for: indexPath) as! CustomCellTableViewCell
        // calling prperty of other class
        cell.delegate = self
        // creat cell with power of 10
        cell.numLebel.text = "\(pow(10, indexPath.row))"
        return cell
    }
    
    
}

// getting number by delegate to change total
extension ViewController : CustomCellTableViewCellDelegat{
    
    func changedNum(num: Int) {
        self.total += num
        totalLebel.text = "Total: \(self.total)"
    }
}
