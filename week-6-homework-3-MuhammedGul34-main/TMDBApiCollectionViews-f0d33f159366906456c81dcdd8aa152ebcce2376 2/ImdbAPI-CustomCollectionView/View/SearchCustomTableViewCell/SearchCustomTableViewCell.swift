//
//  SearchCustomTableViewCell.swift
//  ImdbAPI-CustomCollectionView
//
//  Created by Muhammed Gül on 7.01.2023.
//

import UIKit

class SearchCustomTableViewCell: UITableViewCell {

    @IBOutlet weak var movieExpNAme: UILabel!
    @IBOutlet weak var movienameLabel: UILabel!
    @IBOutlet weak var movieImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func onBind(data:Result){
        movienameLabel.text = data.title
        movieExpNAme.text = data.overview
        
        guard let url = URL(string: "https://image.tmdb.org/t/p/w342/\(data.posterPath)") else { return }
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
                        self.movieImage.image = UIImage(data: datas)
                    }
                } catch let err{
                    print("Error while encoding images",err)
                }
            }
        }.resume()
    }
    
}
    

