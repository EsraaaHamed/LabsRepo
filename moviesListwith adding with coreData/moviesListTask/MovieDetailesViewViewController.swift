//
//  MovieDetailesViewViewController.swift
//  moviesListTask
//
//  Created by Esraa Hassan on 5/6/19.
//  Copyright © 2019 iti. All rights reserved.
//

import UIKit
import CoreData
class MovieDetailesViewViewController: UIViewController {
    @IBOutlet weak var movieImg: UIImageView!

    @IBOutlet weak var genreLabelDesc: UILabel!
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet var genreLabel: UIView!
    @IBOutlet weak var releaseYearLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    var movie : NSManagedObject?
    override func viewDidLoad() {
        super.viewDidLoad()
        var titlee=movie?.value(forKey: "title") as! String;

        movieTitleLabel.text = movie?.value(forKey: "title") as! String;
        genreLabelDesc.text = movie?.value(forKey: "genre") as! String
        releaseYearLabel.text = String (movie?.value(forKey: "releaseYear") as! Float)
        ratingLabel.text = String (movie?.value(forKey: "rate") as! Int32)
        var imgStr =   movie?.value(forKey: "image") as! String
        movieImg.image = UIImage(named: imgStr)
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
