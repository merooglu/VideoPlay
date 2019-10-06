//
//  ViewController.swift
//  VideoPlayer
//
//  Created by Mehmet Eroğlu on 6.10.2019.
//  Copyright © 2019 Mehmet Eroğlu. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    
    var datas = [DataModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let p1 = DataModel(videoUrl:  "https://youtu.be/r2LpOUwca94", videoTitle: "Light it Up", imageUrl: "https://yt3.ggpht.com/a/AGF-l79or_R2OX99ihxQ4T78CWLmeSEMJCY5m2q4Aw=s288-c-k-c0xffffffff-no-rj-mo")
        
        let p2 = DataModel(videoUrl:  "https://youtu.be/r2LpOUwca94", videoTitle: "Let's Dance", imageUrl: "https://yt3.ggpht.com/a/AGF-l79or_R2OX99ihxQ4T78CWLmeSEMJCY5m2q4Aw=s288-c-k-c0xffffffff-no-rj-mo")
        
        let p3 = DataModel(videoUrl:  "https://youtu.be/r2LpOUwca94", videoTitle: "Grow Up", imageUrl: "https://yt3.ggpht.com/a/AGF-l79or_R2OX99ihxQ4T78CWLmeSEMJCY5m2q4Aw=s288-c-k-c0xffffffff-no-rj-mo")
        
        let p4 = DataModel(videoUrl:  "https://youtu.be/r2LpOUwca94", videoTitle: "Shake it Up", imageUrl: "https://yt3.ggpht.com/a/AGF-l79or_R2OX99ihxQ4T78CWLmeSEMJCY5m2q4Aw=s288-c-k-c0xffffffff-no-rj-mo")
        
        let p5 = DataModel(videoUrl:  "https://youtu.be/r2LpOUwca94", videoTitle: "Shine Bright Like a Diamond", imageUrl: "https://yt3.ggpht.com/a/AGF-l79or_R2OX99ihxQ4T78CWLmeSEMJCY5m2q4Aw=s288-c-k-c0xffffffff-no-rj-mo")
        
        datas.append(p1)
        datas.append(p2)
        datas.append(p3)
        datas.append(p4)
        datas.append(p5)
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyRockCell", for: indexPath) as? PartyRockCell {
            let data = datas[indexPath.row]
            cell.updateCell(dataModel: data)

            return cell
        }else {
          return UITableViewCell()
        }
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let contentData = datas[indexPath.row]
        
        performSegue(withIdentifier: "DetailVC", sender: contentData)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DetailVC {
            
            if let data = sender as? DataModel {
                destination.partyRock = data
            }
            
        }
        
    }
    
}

