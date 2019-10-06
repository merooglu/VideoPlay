//
//  PartyRockCell.swift
//  VideoPlayer
//
//  Created by Mehmet Eroğlu on 6.10.2019.
//  Copyright © 2019 Mehmet Eroğlu. All rights reserved.
//

import UIKit

class PartyRockCell: UITableViewCell {

    @IBOutlet weak var videoTitle: UILabel!
    @IBOutlet weak var videoImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateCell(dataModel: DataModel) {
        videoTitle.text = dataModel.videoTitle
        
        let url = URL(string: dataModel.imageUrl)!
        
        DispatchQueue.global().async {
            do {
                let downloadImage = try Data.init(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoImage.image = UIImage(data: downloadImage)
                }
            }catch  {
                // handle error
            }
        }
        
        
    }
    
}
