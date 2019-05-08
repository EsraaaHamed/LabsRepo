//
//  MoviesTableViewController.swift
//  MovieListTask
//
//  Created by JETS Mobile Lab-7 on 5/5/19.
//  Copyright © 2019 iti. All rights reserved.
//

import UIKit
import CoreData

class MoviesTableViewController: UITableViewController , AddingAMovieProtocol {

    
    var moviesArr = Array < NSManagedObject > ();
    override func viewDidLoad() {
        super.viewDidLoad()
        moviesArr = [];
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let managerContext = appDelegate.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest <NSManagedObject> (entityName: "EntityOfMovie")
        do
        {
            moviesArr = try managerContext.fetch(fetchRequest)
        }
        catch let error as NSError
        {
            print(error)
        }
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
        return moviesArr.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = moviesArr [indexPath.row].value(forKey: "title") as! String
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
    
    
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            let managerContext = appDelegate.persistentContainer.viewContext
            managerContext.delete(moviesArr[indexPath.row])
            
            moviesArr.remove(at: indexPath.row)
            do{
                try managerContext.save()
            }
            catch{
                
            }
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
     }
    
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
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let movieDetailes =  self.storyboard?.instantiateViewController(withIdentifier:"moviesDetailes") as! MovieDetailesViewViewController;
        
        movieDetailes.movie = moviesArr[(self.tableView.indexPathForSelectedRow?.row)!];
        self.navigationController?.pushViewController(movieDetailes, animated: true)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        //Check which ID
        let checkID = segue.destination.restorationIdentifier;
        if checkID=="addMovieID"
        {
            let addMovie = segue.destination as! AddMoviewViewController;
            addMovie.protocolVar = self;
        }
      
    }
    func addNewMovie(newMovie: Movie) {
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let managerContext = appDelegate.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "EntityOfMovie", in: managerContext)
        let movie = NSManagedObject (entity: entity!, insertInto: managerContext)
        movie.setValue(newMovie.title, forKey: "title")
        movie.setValue(newMovie.rating, forKey: "rate")
        
        movie.setValue(newMovie.releaseYear, forKey: "releaseYear")
        movie.setValue(newMovie.genre.description, forKey: "genre")
        movie.setValue(newMovie.image, forKey: "image")
        do
        {
            try managerContext.save();
            moviesArr.append(movie)
            self.tableView.reloadData()
        }
        catch let error
        {
            print(error.localizedDescription)
        }
        //movies.append(MovieClass(title: "Movie \(count)", releaseDate: 2000, rate: 5.0))
        //moviesArr?.append(movie)
        self.tableView.reloadData()
    }
    
}
