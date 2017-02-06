//
//  RepoCell.swift
//  GithubDemo
//
//  Created by Alex Chen on 2/6/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit
import AFNetworking

class RepoCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var starsLabel: UILabel!
    @IBOutlet weak var forksLabel: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var repo: GithubRepo! {
        didSet{
            nameLabel.text = repo.name
            starsLabel.text = "\(repo.stars!)"
            forksLabel.text = "\(repo.forks!)"
            ownerLabel.text = repo.ownerHandle
            avatarImage.setImageWith(URL(string: repo.ownerAvatarURL!)!)
            descriptionLabel.text = repo.repoDescription
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
