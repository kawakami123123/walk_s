//
//  MissionSelectVwCtrllerS.swift
//  WalkMissionS
//
//  Created by KK_mac on 2015/11/21.
//  Copyright © 2015年 KK_mac. All rights reserved.
//

import Foundation
import UIKit

class MissionSelectVwCtrllerS: UIViewController,UITableViewDelegate,UITableViewDataSource
{
    
     let sections = ["1時間コース","2時間コース","半日コース","1日コース","お泊まりコース"]
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //MARK: - ーーーーTableViewのデリゲート
    //セクションのタイトルを返す.
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
  
        return sections[section]
    }
    
    //セクションの数を返す.
   func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return sections.count
    }
    
    
    
    //テーブルに表示する配列の総数を返す
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
        
    }
    
    
    //MARK: - -----  cellの表示
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) ->  UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "entrycell")
    
        cell.textLabel?.text = indexPath.row.description  //test
        return cell
    }
    
    
    //MARK:  Cell が選択された場合
    func tableView(table: UITableView, didSelectRowAtIndexPath indexPath:NSIndexPath) {
        performSegueWithIdentifier("toMapReadyVwCtlS",sender: nil)
        
    }
    
    // Segue 準備
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "toMapReadyVwCtlS") {
            // let subVC: MissionMapReadyVwCtrllerS = (segue.destinationViewController as? MissionMapReadyVwCtrllerS)!
            
            
        }
    }

}


