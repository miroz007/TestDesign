//
//  HomeVC.swift
//  DesignTest
//
//  Created by Amir on 7/22/20.
//  Copyright © 2020 Amir. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
        
    override func viewDidLoad() {
        super.viewDidLoad()

        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "HomeCell", bundle: nil), forCellReuseIdentifier: "HomeCell")
        tableView.register(UINib(nibName: "BaseCell", bundle: nil), forCellReuseIdentifier: "BaseCell")
    }
    
    

}

extension HomeVC: UITableViewDelegate , UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if ( indexPath.row == 0 ) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "BaseCell", for: indexPath) as! BaseCell
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell", for: indexPath) as! HomeCell
            return cell
        }
    }
    
    
}
