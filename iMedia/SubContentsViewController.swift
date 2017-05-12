//
//  SubContentsViewController.swift
//  SlideMenuControllerSwift
//
//  Created by Yuji Hato on 11/8/15.
//  Copyright © 2015 Yuji Hato. All rights reserved.
//

import UIKit
import MediaPlayer
import MobileCoreServices
import AVKit
import AVFoundation


class SubContentsViewController : UIViewController {
    
//    var moviePlayer:AVPlayerViewController!
    var avPlayer = AVPlayer()
    var avPlayerLayer: AVPlayerLayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playVideo()
        
    }
    
    func playVideo()  {
        let url:URL = URL(string: "https://cms.medianova.com/index.php/extwidget/preview/partner_id/463/uiconf_id/6711601/entry_id/0_oett5mv7/embed/auto?&flashvars%5BstreamerType%5D=auto")!
        //        let url = NSURL(string:"http://www.ebookfrenzy.com/ios_book/movie/movie.mov")!
        //        let videoURL = NSURL(string: Videos[indexPath.row].url!)
        //        let player = AVPlayer(URL: url)
        //        let playerViewController = AVPlayerViewController()
        //        playerViewController.player = player
        //        self.presentViewController(playerViewController, animated: true) {
        //            playerViewController.player!.play()
        //        }
        let player = AVPlayer(url: url)
        player.allowsExternalPlayback = true
        player.usesExternalPlaybackWhileExternalScreenIsActive = true
        let playerController = AVPlayerViewController()
        
        
        playerController.player = player
        //        NSNotificationCenter.defaultCenter().addObserver(self, selector: "playerDidReachEndNotificationHandler:", name: AVPlayerItemDidPlayToEndTimeNotification, object: player.currentItem)
        
        
        
        self.addChildViewController(playerController)
        self.view.addSubview(playerController.view)
        
//        playerController.view.frame = self.view.frame
        playerController.view.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 310)
        
        player.play()
        
        // 2
//        let wrapperView = UIView(frame: CGRectMake(30, 250, self.view.frame.size.width-60, 20))
//        self.view.backgroundColor = UIColor.clearColor()
//        self.view.addSubview(wrapperView)
//        
//        // 3
//        let volumeView = MPVolumeView(frame: wrapperView.bounds)
//        volumeView.showsVolumeSlider = false
//        volumeView.showsRouteButton = true
//        volumeView.sizeToFit()
//        wrapperView.addSubview(volumeView)
        
        
    }
}
