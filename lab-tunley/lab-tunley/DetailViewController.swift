//
//  DetailViewController.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/5/22.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    @IBOutlet weak var trackImageView: UIImageView!
    @IBOutlet weak var trackMovTitle: UILabel!
    @IBOutlet weak var trackVotesAvg: UILabel!
    @IBOutlet weak var trackVotes: UILabel!
    @IBOutlet weak var trackPopularity: UILabel!
    @IBOutlet weak var trackMovDesc: UILabel!
    
    

    // TODO: Pt 1 - Add a track property
    var track: Track!


    override func viewDidLoad() {
        super.viewDidLoad()

        // TODO: Pt 1 - Configure the UI elements with the passed in track
        Nuke.loadImage(with:track.backdrop_path, into: trackImageView)
        trackMovTitle.text = track.original_title
        trackVotesAvg.text = track.vote_average
        trackVotes.text = track.vote_count
        trackPopularity.text = track.popularity
        trackMovDesc.text = track.overview

    }



}
