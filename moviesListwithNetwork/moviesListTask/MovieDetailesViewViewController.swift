//
//  MovieDetailesViewViewController.swift
//  moviesListTask
//
//  Created by Esraa Hassan on 5/6/19.
//  Copyright © 2019 iti. All rights reserved.
//

import UIKit

class MovieDetailesViewViewController: UIViewController {
    @IBOutlet weak var movieImg: UIImageView!

    @IBOutlet weak var genreLabelDesc: UILabel!
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var releaseYearLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    var movie = Movie();
    override func viewDidLoad() {
        super.viewDidLoad()
        movieTitleLabel.text = movie.title;
        genreLabelDesc.text = movie.genre.description;
        releaseYearLabel.text = String(movie.releaseYear);
        ratingLabel.text = String( movie.rating );
        let url=URL(string: movie.image)
        let request=URLRequest(url: url!)
        let session=URLSession(configuration: URLSessionConfiguration.default)
        let task = session.downloadTask(with: request) { (url, response, error) in
            do{
                var urlImage = try Data(contentsOf: url!)
                DispatchQueue.main.async {
                    self.movieImg.image = UIImage(data: urlImage)

                }
                
            }catch{
                print("error")
            }
            }.resume()
       
        
        
        

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
