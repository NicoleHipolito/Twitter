# Project 5 - *Twitter*

**Twitter** is a basic twitter app to read and compose tweets the [Twitter API](https://apps.twitter.com/).

Time spent: **5** hours spent in total

## User Stories

The following **required** functionality is completed:

- [x] User sees app icon in home screen and styled launch screen. (1pt)
- [x] User can sign in using OAuth login flow. (1pt)
- [x] User can Logout. (1pt)
- [x] Create Data Models for User and Tweet. (1pt)
- [x] User can view last 20 tweets from their home timeline with the user profile picture, username, tweet text, and timestamp. (2pts)
- [x] User can pull to refresh. (1pt)
- [x] User can tap the retweet and favorite buttons in a tweet cell to retweet and/or favorite a tweet. (2pts)
- [x] Using AutoLayout, the Tweet cell should adjust it's layout for iPhone 7, Plus and SE device sizes as well as accommodate device rotation. (1pt)

The following **stretch** features are implemented:

- [x] The current signed in user will be persisted across restarts. (1pt)
- [ ] Each tweet should display the relative timestamp for each tweet "8m", "7h". (1pt)
- [ ] User should be able to unretweet and unfavorite and should decrement the retweet and favorite count. (1pt)
- [ ] Links in tweets are clickable. (2pts)
- [ ] User can load more tweets once they reach the bottom of the feed using infinite loading similar to the actual Twitter client. (2pts)

The following **additional** features are implemented:

- [x] List anything else that you can get done to improve the app functionality!
- Added user images and made them circular.

Please list two areas of the assignment you'd like to **discuss further with your peers** during the next class (examples include better ways to implement something, how to extend your app in certain ways, etc):

1. How to do the clickable links. I changed the UILabels to the class mentioned but it never went through so I wanted to know more on how it is actually implemented or how it works.
2. Models

## Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='twitter.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

- Wrapping my head around creating a model for the APIManager was kind of a struggle for me at first. However, as I worked more, I was able to clear up some confusions about it.

## Credits

List an 3rd party libraries, icons, graphics, or other assets you used in your app.

- [AFNetworking](https://github.com/AFNetworking/AFNetworking) - networking task library

## License

Copyright 2018 Nicole Hipolito

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

# Project 6 - *Twitter*

Time spent: **8** hours spent in total

## User Stories

The following **required** stories are completed:

- [x] User can tap on a tweet to view it in a detail view, with controls to retweet, favorite, and reply (2pts)
- [x] User can compose a new tweet by tapping on a compose button. (3pts)
- [x] When composing a tweet, user sees a countdown for the number of characters remaining for the tweet (out of 140) (2pt)
- [x] User can view their profile in a *profile tab* (3pts)
    -- Contains the user header view: picture and tagline
    -- Contains a section with the users basic stats: # tweets, # following, # followers

The following **stretch** features are implemented:

- [ ] Profile view includes that user's timeline. (2pts)
- [ ] User can tap the profile image in any tweet to see another user's profile. (1pt)
- Contains the user header view: picture and tagline.
- Contains a section with the users basic stats: # tweets, # following, # followers.
- [ ] After creating a new tweet, a user should be able to view it in the timeline immediately without refetching the timeline from the network. (1pt)
- [ ] User can reply to any tweet, and replies should be prefixed with the username and the reply_id should be set when posting the tweet. (2pts)
- [ ] User sees embedded images in tweet if available. (3pts)
- [ ] Pulling down the profile page should blur and resize the header image. (2pts)

The following **additional** features are implemented:

- [ ] List anything else that you can get done to improve the app functionality!

Please list two areas of the assignment you'd like to **discuss further with your peers** during the next class (examples include better ways to implement something, how to extend your app in certain ways, etc):

1. Static Table Views
2. Having a cell class vs Working directly with TablesViews

## Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='twitter2.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

A huge challenge for me was creating a static table view. It wouldn't let me do it in the same view controller because it said I had to embed it. After going through many answers, I was able to find the solution to my problem but I wasn't able to fix the positioning of the cells in my table view.

## License

Copyright [yyyy] [name of copyright owner]

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
