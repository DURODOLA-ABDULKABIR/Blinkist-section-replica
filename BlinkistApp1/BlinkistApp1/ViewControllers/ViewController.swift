//
//  ViewController.swift
//  BlinkistApp1
//
//  Created by Decagon on 19.4.21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var collectionView: UICollectionView?
    
    
    let data = DataLoader().booksData
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.register(HeaderCollectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderCollectionReusableView.identifier)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.size.width/2)-30, height: 200)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MainCollectionViewCell", for: indexPath) as! MainCollectionViewCell
        cell.cellImage.image = UIImage(named: data[indexPath.row].image)
        cell.label1.text! = data[indexPath.row].title
        cell.label2.text! = data[indexPath.row].author
        cell.label3.text! = data[indexPath.row].book_type
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderCollectionReusableView.identifier, for: indexPath) as! HeaderCollectionReusableView
        header.configure()
        return header
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let desVC = mainStoryboard.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
        desVC.image = UIImage(named: data[indexPath.row].image)!
        desVC.labelContent1 = data[indexPath.row].title
        desVC.labelContent2 = data[indexPath.row].author
        
        self.navigationController?.pushViewController(desVC, animated: true)
    }
    

//        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//            return CGSize(width: (collectionView.frame.size.width/2)-7, height: (collectionView.frame.size.height/2.5))
//        }

}


