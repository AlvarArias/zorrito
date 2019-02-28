//
//  imagenCollectionViewCell.swift
//  zorrito_v2
//
//  Created by Alvar Arias on 2019-01-17.
//  Copyright © 2019 Alvar Arias. All rights reserved.
//

import UIKit

class imagenCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var ImgCell: SpringImageView!
    
    override var isSelected: Bool{
        didSet{
            if self.isSelected
            {
                //This block will be executed whenever the cell’s selection state is set to true (i.e For the selected cell)
                print("Selected")
                //self.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
                //self.ImgCell.backgroundColor = UIColor.red
                //self.ImgCell.alpha = 0.5
                //self.tickImageView.isHidden = false
            
                //Sring Animation
                ImgCell.animateToNext {
                    self.ImgCell.animation = "pop"
                    self.ImgCell.force = 1
                    self.ImgCell.duration = 5
                    self.ImgCell.delay = 0
                    self.ImgCell.velocity = 3
                    self.ImgCell.repeatCount = 1
                    self.ImgCell.animateTo()
                }
                // cambia una vex tocada
                self.ImgCell.alpha = 0
                
                
            }
            else
            {
                //This block will be executed whenever the cell’s selection state is set to false (i.e For the rest of the cells)
                //self.transform = CGAffineTransform.identity
                //self.contentView.backgroundColor = UIColor.gray
                //self.tickImageView.isHidden = true
                //self.ImgCell.alpha = 1
                
            }
        }
    }
    
}
