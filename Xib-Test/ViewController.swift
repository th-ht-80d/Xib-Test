//
//  ViewController.swift
//  Xib-Test
//
//  Created by 濱貴大 on 2021/03/14.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!

  
    let array = ["Hello　World"]

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.dataSource = self

        //xibファイルを読み込む
        let nib = UINib(nibName: "CollectionViewCell", bundle: nil)
        self.collectionView.register(nib, forCellWithReuseIdentifier: "cell")

    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.array.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell

        cell.label.text = array[indexPath.row]
        return cell
    }
}
