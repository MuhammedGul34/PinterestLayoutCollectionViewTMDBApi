//
//  PopularMoviesCollectionViewController.swift
//  ImdbAPI-CustomCollectionView
//
//  Created by Muhammed Gül on 10.01.2023.
//

import UIKit
import AVKit
import AVFoundation

class MuseumsCollectionViewController: UICollectionViewController {
    
    var museums: [Datum]? {
        didSet {
            DispatchQueue.main.async {
                self.collectionView.reloadData()
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.contentInset = UIEdgeInsets(top: 12, left: 4, bottom: 12, right: 4)
        
        if let layout = collectionView?.collectionViewLayout as? PinterestLayout {
            layout.delegate = self
        }
        fetchMuseums()
    }
    
    private func fetchMuseums(){
        guard let url = URL(string: "https://api.artic.edu/api/v1/artworks/search?query[term][is_boosted]=true&fields[]=title&fields[]=artist_display&fields[]=image_id&fields[]=publication_history&limit=26") else { return }
        
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) { data, response, err in
            if let err = err {
                print("Failed to fetch data",err)
            }
            if let data = data {
                do {
                    let museum = try JSONDecoder().decode(Museums.self, from: data)
                    DispatchQueue.main.async {
                        self.museums = museum.data
                    }
                } catch let error {
                    print("Failed to decode", error)
                }
                
            }
            
        }.resume()
    }
    
}

