//
//  ViewController.swift
//  testing App
//
//  Created by Alvar Arias on 2019-01-23.
//  Copyright © 2019 Alvar Arias. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    @available(iOS 6.0, *)
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return imgArray.count
    }

  
    
   
    
    var imgArray = [UIImage(named: "banan"),UIImage(named: "bil"),UIImage(named: "katt"),UIImage(named: "boll"), UIImage(named:"glass"),UIImage(named: "vatten"),UIImage(named: "träd") ]
/*
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return imgArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView .dequeueReusableCell(withReuseIdentifier: "ImgCollectionViewCell", for: indexPath) as! ImgCollectionViewCell
        
        cell.imagenCell.image = imgArray[indexPath.row]
        
        return cell
        
    }
  */
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
            
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return imgArray.count
    }
    */
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView .dequeueReusableCell(withReuseIdentifier: "ImgCollectionViewCell", for: indexPath) as! ImgCollectionViewCell
        
        cell.imagenCell.image = imgArray[indexPath.row]
        
        return cell
    }
 
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        print(indexPath.row)
        
        return
    }
    
}

