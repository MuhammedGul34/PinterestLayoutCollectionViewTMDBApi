//
//  PopularMoviesCustomCell.swift
//  ImdbAPI-CustomCollectionView
//
//  Created by Muhammed Gül on 10.01.2023.
//

import UIKit

class PopularMoviesCustomCell: UICollectionViewCell {
    @IBOutlet weak var moviesImage: UIImageView!
    @IBOutlet weak var moviesTitleLabel: UILabel!
    @IBOutlet weak var moviesDescriptionLabel: UILabel!
        
    @IBOutlet weak var heightContraint: NSLayoutConstraint!
    
   
    override func apply(_ layoutAttributes: UICollectionViewLayoutAttributes)
    {
        super.apply(layoutAttributes)
        if let attributes = layoutAttributes as? PinterestLayoutAttributes {
            // - change the image height
            heightContraint.constant = attributes.photoHeight
        }
    }


    func onBind(data:Datum){
        moviesTitleLabel.text = data.title
        
        moviesDescriptionLabel.text = data.publicationHistory
        guard let url = URL(string: "https://www.artic.edu/iiif/2/\(data.imageID)/full/200,400/0/default.jpg") else { return }
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) { data, response, error in
            
             if let error = error {
                print("Error while fetching images", error)
                 return
            }
            if let data = data {
                do {
                    let datas = try data
                    DispatchQueue.main.async {
                        self.moviesImage.image = UIImage(data: datas)
                    }
                } catch let err{
                    print("Error while encoding images",err)
                }
            }
        }.resume()
    }
}

