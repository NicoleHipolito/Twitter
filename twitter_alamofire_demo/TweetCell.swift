//
//  TweetCell.swift
//  twitter_alamofire_demo
//
//  Created by Charles Hieger on 6/18/17.
//  Copyright © 2017 Charles Hieger. All rights reserved.
//

import UIKit

class TweetCell: UITableViewCell {
    
    @IBOutlet weak var tweetTextLabel: UILabel!
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var screenName: UILabel!
    @IBOutlet weak var profilePic: UIImageView!
    @IBOutlet weak var replyCount: UILabel!
    @IBOutlet weak var retweetCount: UILabel!
    @IBOutlet weak var favoritedCount: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var replyButton: UIButton!
    @IBOutlet weak var rtButton: UIButton!
    @IBOutlet weak var favButton: UIButton!
    
    var tweet: Tweet! {
        didSet {
            tweetTextLabel.text = tweet.text
            NameLabel.text = tweet.user.name
            screenName.text = ("@" + tweet.user.screenName!)  as String?
//            profilePic.image =
//            replyCount.text =
            retweetCount.text = String(tweet.retweetCount)
            if(tweet.favoriteCount != nil){
                let fc = tweet.favoriteCount!
                favoritedCount.text = String(fc)
            }
            else{
                favoritedCount.text = ""
            }
            dateLabel.text = tweet.createdAtString
//             MARK: Properties
//            var id: Int64 // For favoriting, retweeting & replying
//            var text: String // Text content of tweet
//            var favoriteCount: Int? // Update favorite count label
//            var favorited: Bool? // Configure favorite button
//            var retweetCount: Int // Update favorite count label
//            var retweeted: Bool // Configure retweet button
//            var user: User // Contains name, screenname, etc. of tweet author
//            var createdAtString: String // Display date
//
        }
    }
    
    @IBAction func replyButtonTapped(_ sender: Any) {
    }
    @IBAction func retweetButtonTapped(_ sender: Any) {
        if(tweet.favorited == true){
            tweet.favorited = false
            
        }
    }
    @IBAction func favoritedButtonTapped(_ sender: Any) {
        
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
