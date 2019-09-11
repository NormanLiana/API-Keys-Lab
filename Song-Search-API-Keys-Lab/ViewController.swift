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
    
    @IBOutlet weak var artistTableView: UITableView!
    
    // MARK: Properties
    var tracks = [Tracks]() {
        didSet {
            artistTableView.reloadData()
        }
    }
    
    // MARK: Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        artistTableView.dataSource = self
        loadData()
        // Do any additional setup after loading the view.
    }
    
    // MARK: Private Methods
    private func loadData() {
        ArtistAPIClient.shared.getSongs { (result) in
            DispatchQueue.main.async {
                switch result {
                case .success(let tracksFromOnline):
                    self.tracks = tracksFromOnline
                case .failure(let error):
                    print(error)
                    print("its me, sam! I love Liana so much I can't take it anymore AHHHHHHHHHHHH")
                }
            }
        }
    }
}

// MARK: Extensions

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tracks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = artistTableView.dequeueReusableCell(withIdentifier: "artistCell", for: indexPath)
        cell.textLabel?.text = tracks[indexPath.row].track.song
        return cell
    }
    
    
}
