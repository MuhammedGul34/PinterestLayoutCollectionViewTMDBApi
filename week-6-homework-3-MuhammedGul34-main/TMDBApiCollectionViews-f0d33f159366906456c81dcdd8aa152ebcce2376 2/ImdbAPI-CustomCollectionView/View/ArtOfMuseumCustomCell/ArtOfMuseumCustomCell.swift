//
//  PopularMoviesCustomCell.swift
//  ImdbAPI-CustomCollectionView
//
//  Created by Muhammed Gül on 10.01.2023.
//

import UIKit

class ArtOfMuseumCustomCell: UICollectionViewCell {
    @IBOutlet weak var artImage: UIImageView!
    @IBOutlet weak var artNameLabel: UILabel!
    @IBOutlet weak var artDescriptonLabel: UILabel!
        
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
        artNameLabel.text = data.title
        if data.publicationHistory?.count ?? 0 > 1 {
           artDescriptonLabel.text = data.publicationHistory
        } else {
            artDescriptonLabel.text = "Saint-Remy. In fact, he was in the asylum when he painted his other famous night work."
        }
        
       
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
                        self.artImage.image = UIImage(data: datas)
                    }
                } catch let err{
                    print("Error while encoding images",err)
                }
            }
        }.resume()
    }
}

