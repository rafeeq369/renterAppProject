//
//  ViewController.swift
//  RenterApp
//
//  Created by intelmac on 16/01/21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    let data = ["Apple", "Oppo", "Poco", "Samsung", "Surface"]
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var HomeBanner: UIView!
    @IBOutlet weak var CVTitles: UICollectionView!
    @IBOutlet weak var CVBrands: UICollectionView!
    @IBOutlet weak var BrandBtns: UIButton!
    
    
        override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "viewCell")
        self.collectionView.register(UINib(nibName: "BrandCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "brandCell")
        
        self.HomeBanner.layer.cornerRadius = self.HomeBanner.frame.width/19.5
        self.HomeBanner.clipsToBounds = true
        
    }
    


    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
            return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == CVTitles {
            return 8
        }
        else if collectionView == CVBrands {
            return 5
        }
        else{
            return 6
        }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == CVTitles {
            let cellTop  = collectionView.dequeueReusableCell(withReuseIdentifier: "cellTop", for: indexPath as IndexPath) as! TopCollectionViewCell
            return cellTop
        }
        else if collectionView == CVBrands {
            let BrandCell  = collectionView.dequeueReusableCell(withReuseIdentifier: "brandCell", for: indexPath as IndexPath) as! BrandCollectionViewCell
            BrandBtns?.setTitle("Button Title", for: [])
            return BrandCell
        }
        else{
            let cell  = collectionView.dequeueReusableCell(withReuseIdentifier: "viewCell", for: indexPath as IndexPath) as! CollectionViewCell
            return cell
        }
    }
    
}


extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 320, height: 126)
    }
}
















//extension ViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: collectionView.frame.width/1.5, height: collectionView.frame.width/2)
//    }
//
//    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ViewCell", for: indexPath) as! CollectionViewCell
//            return cell
//        }
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 1
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ViewCell", for: indexPath) as! CollectionViewCell
//        return cell
//    }
//}
//
