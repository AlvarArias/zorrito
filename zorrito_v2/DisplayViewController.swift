//
//  DisplayViewController.swift
//  zorrito_v2
//
//  Created by Alvar Arias on 2019-01-15.
//  Copyright © 2019 Alvar Arias. All rights reserved.
//

import UIKit

 var imageArray = [UIImage]()

class DisplayViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    @available(iOS 6.0, *)
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }

//    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {}
    
//    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {}
    
    // imagenes
    @IBOutlet weak var imgCateg: UIImageView!
    @IBOutlet weak var imgZorrito: UIImageView!
    @IBOutlet weak var imgPunt: UIImageView!
    
    //Botones
    @IBOutlet weak var botonBack: UIButton!
    
    // Collection View
    @IBOutlet weak var myColeccion: UICollectionView!
    
    @IBOutlet weak var myScrollView: UIScrollView!
    
   // Var image Array was here
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
       // imageArray was here
        imageArray = [#imageLiteral(resourceName: "images"),#imageLiteral(resourceName: "images-5"),#imageLiteral(resourceName: "images-2"),#imageLiteral(resourceName: "images-4"),#imageLiteral(resourceName: "images-6"),#imageLiteral(resourceName: "images-3"),#imageLiteral(resourceName: "images-7")]
   
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
/*
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return imageArray.count
    }
*/
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imagenCollectionViewCell", for: indexPath) as!
        imagenCollectionViewCell

       cell.ImgCell.image = imageArray[indexPath.row]
       
        
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
    }
  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
