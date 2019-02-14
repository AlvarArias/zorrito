//
//  imagenCollectionViewCell.swift
//  zorrito_v2
//
//  Created by Alvar Arias on 2019-01-17.
//  Copyright © 2019 Alvar Arias. All rights reserved.
//

import UIKit

class imagenCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var ImgCell: UIImageView!
    
    override var isSelected: Bool{
        didSet{
            if self.isSelected
            {
                //This block will be executed whenever the cell’s selection state is set to true (i.e For the selected cell)
                print("Select")
            }
            else
            {
                //This block will be executed whenever the cell’s selection state is set to false (i.e For the rest of the cells)
            
            }
        }
    }
    
}
