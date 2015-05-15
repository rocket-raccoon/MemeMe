//
//  SavedMemesTableViewController.swift
//  imagePickerTutorial
//
//  Created by Alberto Benavides on 5/14/15.
//  Copyright (c) 2015 rocket-raccoon. All rights reserved.
//

import UIKit

class SavedMemesTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var tableView: UITableView!
    
    var memes = [Meme]()
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        //Instantiate our memes array
        let object = UIApplication.sharedApplication().delegate
        let appDelegate = object as! AppDelegate
        memes = appDelegate.memes
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MemeCell") as! UITableViewCell
        let meme = memes[indexPath.row]
        cell.imageView!.image = meme.image
        cell.textLabel?.text = meme.topText! + " " + meme.bottomText!
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let detailView = storyboard?.instantiateViewControllerWithIdentifier("MemeDetailView") as! MemeDetailViewController
        detailView.meme = memes[indexPath.row]
        navigationController?.pushViewController(detailView, animated: false)
    }


}
