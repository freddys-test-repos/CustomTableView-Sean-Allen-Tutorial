//
//  ViewController.swift
//  BeginnerTableView
//
//  Created by Alfredo Merino on 4/2/19.
//  Copyright © 2019 Alfredo Merino. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
  
    
    var videos: [Video] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    
        videos = createArray()
        
        
    }
    
    func createArray() -> [Video] {
        
        var tempVideos: [Video] = []
        
        let video1 = Video(image: #imageLiteral(resourceName: "beginner-first-app.png"), title: "Your first app")
        let video2 = Video(image: #imageLiteral(resourceName: "dev-setup.png"), title: "My Dev setup")
        let video3 = Video(image:#imageLiteral(resourceName: "int-overview.png") , title: "iOS Interview")
        let video4 = Video(image: #imageLiteral(resourceName: "ss-delegates.png"), title: "Buttons in Tableview")
        let video5 = Video(image:#imageLiteral(resourceName: "ss-uipickerview-card.png") , title: "UIPickerView Tutorial")
        let video6 = Video(image:#imageLiteral(resourceName: "vlog-4.png") , title: "Day in the life")
        
        tempVideos.append(video1)
        tempVideos.append(video2)
        tempVideos.append(video3)
        tempVideos.append(video4)
        tempVideos.append(video5)
        tempVideos.append(video6)
        
        return tempVideos
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let video = videos[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! VideoCell
        
        
        cell.setVideo(video: video)
        
        return cell
        
    }
    
    
}
