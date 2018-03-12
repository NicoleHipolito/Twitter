//
//  ComposeViewController.swift
//  twitter_alamofire_demo
//
//  Created by Nicole Hipolito on 3/8/18.
//  Copyright © 2018 Charles Hieger. All rights reserved.
//

import UIKit
import UITextView_Placeholder

protocol ComposeViewControllerDelegate: class {
    func did(post: Tweet)
}
class ComposeViewController: UIViewController{

    @IBOutlet weak var userProfilePic: UIImageView!
    @IBOutlet weak var composeTextView: UITextView!
    weak var delegate: ComposeViewControllerDelegate?
//    var user: User!
    override func viewDidLoad() {
        super.viewDidLoad()
        composeTextView.placeholder = "What's happening?"
        APIManager.shared.getCurrentAccount(completion: { (user, error) in
            if let error = error {
                print("Failed to attain user info")
            } else if let user = user {
                self.userProfilePic.af_setImage(withURL: URL(string: user.profilePic)!)
            }
        })
    }

    @IBAction func xButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tweetTapped(_ sender: Any) {
//        composeTextView.text
        APIManager.shared.composeTweet(with: composeTextView.text) { (tweet, error) in
            if let error = error {
                print("Error composing Tweet: \(error.localizedDescription)")
            } else if let tweet = tweet {
                self.delegate?.did(post: tweet)
                print("Compose Tweet Success!")
            }
        }
        dismiss(animated: true, completion: nil)
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
