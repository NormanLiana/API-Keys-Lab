//
//  ViewController.swift
//  Song-Search-API-Keys-Lab
//
//  Created by Liana Norman on 9/9/19.
//  Copyright © 2019 Liana Norman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Outlets
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

// MARK: Extensions

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}
