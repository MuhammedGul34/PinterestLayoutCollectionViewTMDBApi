//
//  ViewController.swift
//  ImdbAPI-CustomCollectionView
//
//  Created by Muhammed Gül on 7.01.2023.
//

import UIKit

class SearchTableViewController: UITableViewController {
    
    
    var movies = [Result]() {
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.tableView.register(UINib(nibName: "SearchCustomTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        
        fetchMovies()
        
        
    }
    
    
    private func fetchMovies(){
        
        guard let url = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=aa832f9d260b9356aabd10fb60198527&language=en-US&page=1") else { return }
        
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, err in
            if let err = err {
                print("Failed to fetch data",err)
            }
            if let data = data {
                do {
                    let result = try JSONDecoder().decode(Movies.self, from: data)
                    DispatchQueue.main.async {
                        self.movies = result.results
                    }
                } catch let error {
                    print("Failed to decode", error)
                }
                
            }
            
        }.resume()
    }
}
    
    
    
    
extension SearchTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
}

extension SearchTableViewController {
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SearchCustomTableViewCell
        cell.onBind(data: movies[indexPath.row])
        
        return cell
    }
}

extension SearchTableViewController {
    
}
    

