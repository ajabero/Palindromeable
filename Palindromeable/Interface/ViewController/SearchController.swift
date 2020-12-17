//
//  SearchController.swift
//  Palindromeable
//
//  Created by Asaad Jaber on 12/16/20.
//

import Foundation
import UIKit

class SearchController: UISearchController, UISearchBarDelegate {
    var searchKey = String()

    var didPressSearch: ((String?) -> Void)?
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchKey = searchText.lowercased()
    }
        
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchKey = String()
        didPressSearch?(searchKey)
    }
        
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        self.dismiss(animated: true, completion: nil)
        didPressSearch?(searchKey)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        if searchBar.text == "" {
            didPressSearch?(nil)
        }
    }
}
