//
//  MovieDetailesViewViewController.swift
//  MovieListTask
//
//  Created by JETS Mobile Lab-7 on 5/5/19.
//  Copyright © 2019 iti. All rights reserved.
//

import UIKit

class MovieDetailesViewViewController: UIViewController {

    @IBOutlet weak var movieImg: UIImageView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet var genreLabel: UIView!
    @IBOutlet weak var releaseYearLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    var movie = Movie();
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
