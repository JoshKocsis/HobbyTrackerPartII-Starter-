//
//  FriendTableViewCell.swift
//  HobbyTracker
//
//  Created by Josh Kocsis on 4/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class FriendTableViewCell: UITableViewCell {
    
    // Mark: - IBOutlets
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var hometownLabel: UILabel!
    @IBOutlet weak var hobbiesLabel: UILabel!
    
    var friend: Friend? {
        didSet {
            self.updateViews()
        }
    }
    
    private func updateViews() {
        guard let friend = self.friend else { return }
        
        nameLabel.text = friend.name
        hometownLabel.text = friend.hometown
        hobbiesLabel.text = "\(friend.hobbies.count)"
    }
}
