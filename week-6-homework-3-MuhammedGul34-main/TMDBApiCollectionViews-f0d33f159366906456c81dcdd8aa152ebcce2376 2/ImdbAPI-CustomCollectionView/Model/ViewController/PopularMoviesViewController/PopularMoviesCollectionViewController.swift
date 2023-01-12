//
//  PopularMoviesCollectionViewController.swift
//  ImdbAPI-CustomCollectionView
//
//  Created by Muhammed Gül on 10.01.2023.
//

import UIKit
import AVKit
import AVFoundation

class PopularMoviesCollectionViewController: UICollectionViewController {
    
    
    
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
        
        guard let url = URL(string: "https://api.artic.edu/api/v1/artworks/search?query[term][is_boosted]=true&fields[]=title&fields[]=artist_display&fields[]=image_id&fields[]=publication_history&limit=14") else { return }
        
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

extension PopularMoviesCollectionViewController
{
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let museums = museums {
            return museums.count
        } else {
            return 0
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PostCell", for: indexPath) as! PopularMoviesCustomCell
        if let museums = museums?[indexPath.row]{
            cell.onBind(data: museums)
        }
        return cell
    }
}

extension PopularMoviesCollectionViewController : PinterestLayoutDelegate
{
    func collectionView(collectionView: UICollectionView, heightForPhotoAt indexPath: IndexPath, with width: CGFloat) -> CGFloat
    {
             
            let boundingRect = CGRect(x: 0, y: 0, width: width, height: CGFloat(MAXFLOAT))
            // TODO: fix This
        
            let rect = AVMakeRect(aspectRatio: .init(width: 200, height: 400), insideRect: boundingRect)
            return rect.size.height
        
        
    }
    
    func collectionView(collectionView: UICollectionView, heightForCaptionAt indexPath: IndexPath, with width: CGFloat) -> CGFloat
    {
        if let museums = museums?[indexPath.item] {
            
            let topPadding = CGFloat(8)
            let bottomPadding = CGFloat(12)
            let captionFont = UIFont.systemFont(ofSize: 15)
            let captionHeight = self.height(for: museums.publicationHistory ?? "no puplication", with: captionFont, width: width)
            let profileImageHeight = CGFloat(36)
            let height = topPadding + captionHeight + topPadding + profileImageHeight + bottomPadding
            
            return height
        }
        
        return 0.0
    }
    
    func height(for text: String, with font: UIFont, width: CGFloat) -> CGFloat
    {
        let nsstring = NSString(string: text)
        let maxHeight = CGFloat(64.0)
        let textAttributes = [NSAttributedString.Key.font : font]
        let boundingRect = nsstring.boundingRect(with: CGSize(width: width, height: maxHeight), options: .usesLineFragmentOrigin, attributes: textAttributes, context: nil)
        return ceil(boundingRect.height)
    }
}

struct imageSize {
    var width: Int
    var height: Int
}
