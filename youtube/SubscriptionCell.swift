//
//  SubscriptionCell.swift
//  youtubeish
//
//  Created by Khyle Mott on 11/9/16.
//  Copyright © 2016 khylem. All rights reserved.
//

import UIKit

class SubscriptionCell: FeedCell {

    override func fetchVideos() {
        ApiService.sharedInstance.fetchSubscriptionFeed { (videos) in
            self.videos = videos
            self.collectionView.reloadData()
        }
    }

}
