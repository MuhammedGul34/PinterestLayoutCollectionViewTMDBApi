//
//  PopularMoviesTableViewController+Extensions.swift
//  ImdbAPI-CustomCollectionView
//
//  Created by Muhammed Gül on 12.01.2023.
//

import UIKit

extension PopularMoviesTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
}

extension PopularMoviesTableViewController {
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MoviesTableViewCell
        cell.onBind(data: movies[indexPath.row])
        
        return cell
    }
}


    


