//
//  AppSearchController.swift
//  AppStoreClone
//
//  Created by Jorge Soto on 11/9/22.
//

import UIKit

private let reuseIdentifier = "Cell"

class AppSearchController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        collectionView.backgroundColor = .systemPink
    }
    
    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
