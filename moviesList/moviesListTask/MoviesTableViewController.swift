//
//  MoviesTableViewController.swift
//  MovieListTask
//
//  Created by JETS Mobile Lab-7 on 5/5/19.
//  Copyright © 2019 iti. All rights reserved.
//

import UIKit

class MoviesTableViewController: UITableViewController {
    var moviesArr : [Movie]?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let objone = Movie(title: "Dawn of the Planet of the Apes", image : "1.jpg", rating: 8.3, releaseYear: 2014, genre: ["Action", "Drama", "Sci-Fi"]);
        let objtwo = Movie(title: "District 9", image: "2.jpg", rating: 8, releaseYear: 2009, genre: ["Action", "Sci-Fi", "Thriller"]);
        let objthree = Movie(title: "Transformers: Age of Extinction", image:  "3.jpg", rating: 6.3, releaseYear: 2014, genre: ["Action", "Adventure", "Sci-Fi"]);
        
        let objfour = Movie(title: "X-Men: Days of Future Past", image:"4.jpg", rating: 8.4, releaseYear: 2014, genre: ["Action", "Sci-Fi", "Thriller"]);
        let objfive = Movie(title: "The Machinist", image: "5.jpg", rating: 7.8, releaseYear: 2004, genre: ["Drama", "Thriller"]);
        
        moviesArr=[objone,objtwo,objthree,objfour,objfive];
        
        
        
        
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return moviesArr!.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = moviesArr! [indexPath.row].title;
        // Configure the cell...
        
        return cell
    }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let movieDetailes = segue.destination as! MovieDetailesViewViewController;
        movieDetailes.movie = moviesArr![(self.tableView.indexPathForSelectedRow?.row)!];
    }
    
    
}
