//
//  ViewController.swift
//  ViewScrol
//
//  Created by Mohan K on 17/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var fitnessTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        fitnessTableView.delegate = self
        fitnessTableView.dataSource = self
        fitnessTableView.rowHeight = 90
        
        
        
        fitnessTableView.register(UINib(nibName: "fitTableViewCell", bundle: nil), forCellReuseIdentifier: "fitTableView")
    }


}

extension ViewController : UITableViewDelegate , UITableViewDataSource {
    
    func tableView(_ tableView:UITableView, numberOfRowsInSection Row:Int) -> Int {
        return 10
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
      
            
            let cell = fitnessTableView.dequeueReusableCell(withIdentifier: "fitTableView", for: indexPath) as! fitTableViewCell
//           
//            let cell = fitnessTableView.dequeueReusableCell(withIdentifier: "fitTableViewCell", for: indexPath) as! fitTableViewCell
            
            cell.track.text = "Enter text"
            
            return cell
            
    }
//        return UITableViewCell()
    
}
