//
//  AddMoviewViewController.swift
//  moviesListTask
//
//  Created by Esraa Hassan on 5/6/19.
//  Copyright © 2019 iti. All rights reserved.
//

import UIKit

class AddMoviewViewController: UIViewController {
   
    var movieTitle: String?
    var rating: Float?
    var release:Int?
    var imgStr:String?
    var genre: String?
    @IBOutlet weak var genreTf: UITextField!
    @IBOutlet weak var releaseYearTf: UITextField!
    @IBOutlet weak var ratingTf: UITextField!
    @IBOutlet weak var titleTf: UITextField!
    @IBOutlet weak var imgTf: UITextField!
    var protocolVar : AddingAMovieProtocol? ;
    @IBAction func addBtn(_ sender: UIButton) {
        movieTitle = titleTf.text
        rating = Float(ratingTf.text!)
        imgStr = imgTf.text
        release = Int(releaseYearTf.text!)
        genre = genreTf.text
        let newMovie = Movie(title : movieTitle! , image : imgStr! , rating : rating! , releaseYear : release! , genre : [genre!])
        protocolVar?.addNewMovie(movie: newMovie)
        self.navigationController?.popViewController(animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

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
