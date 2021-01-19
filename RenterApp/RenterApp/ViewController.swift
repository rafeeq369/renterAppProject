//
//  ViewController.swift
//  RenterApp
//
//  Created by intelmac on 16/01/21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    let data = ["Apple", "Oppo", "Poco", "Samsung", "Surface"]
    let imgs = [#imageLiteral(resourceName: "ipad4"), #imageLiteral(resourceName: "ipad2"), #imageLiteral(resourceName: "i1"), #imageLiteral(resourceName: "ipad2"), #imageLiteral(resourceName: "ipad1"), #imageLiteral(resourceName: "ipad4")]

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var HomeBanner: UIView!
    @IBOutlet weak var CVTitles: UICollectionView!
    @IBOutlet weak var CVBrands: UICollectionView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "viewCell")
        
        self.HomeBanner.layer.cornerRadius = self.HomeBanner.frame.width/19.5
        self.HomeBanner.clipsToBounds = true
        
               
    }
    


//    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
//            return 1
//    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == CVTitles {
            return self.data.count
        }
        else if collectionView == CVBrands {
            return self.data.count
        }
        else{
            return 6
        }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == CVTitles {
            let cellTop  = collectionView.dequeueReusableCell(withReuseIdentifier: "cellTop", for: indexPath as IndexPath) as! TopCollectionViewCell
            cellTop.topCVLbl?.text = data[indexPath.row]
            return cellTop
        }
        else if collectionView == CVBrands {
            let BrandCell  = collectionView.dequeueReusableCell(withReuseIdentifier: "brandCell", for: indexPath as IndexPath) as! BrandCollectionViewCell
            BrandCell.brandTitleCell?.text = data[indexPath.row]
            BrandCell.PopularBrandsView.layer.cornerRadius = BrandCell.PopularBrandsView.frame.width/19.5
            BrandCell.PopularBrandsView.clipsToBounds = true
            return BrandCell
        }
        else{
            let cell  = collectionView.dequeueReusableCell(withReuseIdentifier: "viewCell", for: indexPath as IndexPath) as! CollectionViewCell
            cell.imageCorner?.image = imgs[indexPath.row]
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
