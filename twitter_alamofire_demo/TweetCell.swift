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
    @IBOutlet weak var retweetCount: UILabel!
    @IBOutlet weak var favoritedCount: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var replyButton: UIButton!
    @IBOutlet weak var rtButton: UIButton!
    @IBOutlet weak var favButton: UIButton!
    
    var tweet: Tweet! {
        didSet {
            profilePic.af_setImage(withURL: URL(string: tweet.user.profilePic)!)
            profilePic.layer.borderWidth = 1
            profilePic.layer.borderColor = UIColor.clear.cgColor
            profilePic.layer.masksToBounds = false
            profilePic.layer.cornerRadius = profilePic.frame.height/2
            profilePic.clipsToBounds = true
            if(tweet.favorited == true){
                favButton.setImage(UIImage(named: "favor-icon-red"), for: [])
            }
            else{
                favButton.setImage(UIImage(named: "favor-icon.png"), for: [])
            }
            tweetTextLabel.text = tweet.text
            NameLabel.text = tweet.user.name
            screenName.text = ("@" + tweet.user.screenName!)  as String?
            retweetCount.text = String(tweet.retweetCount)
            if(tweet.favoriteCount != nil){
                let fc = tweet.favoriteCount!
                favoritedCount.text = String(fc)
            }
            else{
                favoritedCount.text = ""
            }
            if(tweet.retweeted == true){
                rtButton.setImage(UIImage(named: "retweet-icon-green.png"), for: [])
            }
            else{
                rtButton.setImage(UIImage(named: "retweet-icon.png"), for: [])
            }
            dateLabel.text = tweet.createdAtString

        }
    }
    
    @IBAction func replyButtonTapped(_ sender: Any) {
    }
    @IBAction func retweetButtonTapped(_ sender: Any) {
        print(tweet.retweeted)
        if(tweet.retweeted == true){
            tweet.retweeted = false
            tweet.retweetCount -= 1
            retweetCount.text = String(tweet.retweetCount)
            print(tweet.retweetCount)
            rtButton.setImage(UIImage(named: "retweet-icon.png"), for: [])
        }
        else{
            tweet.retweeted = true
            tweet.retweetCount += 1
            retweetCount.text = String(tweet.retweetCount)
            print(tweet.retweetCount)
            rtButton.setImage(UIImage(named: "retweet-icon-green.png"), for: [])
        }
    }
    @IBAction func favoritedButtonTapped(_ sender: Any) {
        // TODO: Update the local tweet model
        // TODO: Update cell UI
        print(tweet.favorited)
        if(tweet.favorited == true){
            tweet.favorited = false
            tweet.favoriteCount! -= 1
            print(tweet.favoriteCount)
            favButton.setImage(UIImage(named: "favor-icon.png"), for: [])
        }
        else{
            tweet.favorited = true
            tweet.favoriteCount! += 1
            print(tweet.favoriteCount)
            favButton.setImage(UIImage(named: "favor-icon-red"), for: [])
        }
        if(tweet.favoriteCount != nil){
            let fc = tweet.favoriteCount!
            favoritedCount.text = String(fc)
        }
        else{
            favoritedCount.text = ""
        }
        // TODO: Send a POST request to the POST favorites/create endpoint
        APIManager.shared.favorite(tweet) { (tweet: Tweet?, error: Error?) in
            if let  error = error {
                print("Error favoriting tweet: \(error.localizedDescription)")
            } else if let tweet = tweet {
                print("Successfully favorited the following Tweet: \n\(tweet.text)")
            }
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
