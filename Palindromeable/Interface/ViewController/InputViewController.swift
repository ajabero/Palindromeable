//
//  InputViewController.swift
//  Palindromeable
//

import UIKit

class InputViewController: UICollectionViewController {
    var searchController: SearchController!
    var palindromeable: Palindromeable!
    
    private var dataSource: DataSource? {
        didSet {
          self.collectionView.dataSource = dataSource
          self.collectionView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Palindromeable"
        navigationController?.navigationBar.prefersLargeTitles = true

        view.backgroundColor = UIColor.white
        
        searchController = SearchController()
        searchController.searchBar.delegate = searchController

        dataSource = DataSource()
        
        collectionView.register(GridCell.self, forCellWithReuseIdentifier: GridCell.reuseIdentifier)
        
//        collectionView.contentInset = UIEdgeInsets(top: -navigationController!.navigationBar.frame.size.height - UIApplication.shared.statusBarFrame.size.height, left: 0, bottom: 0, right: 0)
        collectionView.isScrollEnabled = false
        collectionView.backgroundColor = UIColor.white
        
        navigationItem.searchController = searchController
        
        searchController.didPressSearch = { [weak self](key) in
            guard let key = key else {
                self?.dataSource?.palindromeable = nil
                self?.collectionView.reloadData()
                return
            }
            self?.palindromeable = Palindromeable(str: key)
            self?.dataSource?.palindromeable = self?.palindromeable.isPalindromeable()
            self?.collectionView.reloadData()
        }
    }
}

