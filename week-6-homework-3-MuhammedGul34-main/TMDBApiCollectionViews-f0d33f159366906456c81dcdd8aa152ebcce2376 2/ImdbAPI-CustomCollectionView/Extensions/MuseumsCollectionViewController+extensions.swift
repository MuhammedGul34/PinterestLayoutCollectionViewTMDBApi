//
//  MuseumsCollectionViewController+extensions.swift
//  ImdbAPI-CustomCollectionView
//
//  Created by Muhammed Gül on 12.01.2023.
//

import UIKit
import AVKit

extension MuseumsCollectionViewController
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
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PostCell", for: indexPath) as! ArtOfMuseumCustomCell
        if let museums = museums?[indexPath.row]{
            cell.onBind(data: museums)
        }
        return cell
    }
}

extension MuseumsCollectionViewController : PinterestLayoutDelegate
{
    func collectionView(collectionView: UICollectionView, heightForPhotoAt indexPath: IndexPath, with width: CGFloat) -> CGFloat
    {
            let boundingRect = CGRect(x: 0, y: 0, width: width, height: CGFloat(MAXFLOAT))
        
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

