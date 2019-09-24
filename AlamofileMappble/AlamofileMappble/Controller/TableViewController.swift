

//
//  TableViewController.swift
//  AlamofileMappble
//
//  Created by Boss on 9/23/19.
//  Copyright © 2019 LuyệnĐào. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var detaildata: DetailData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //getDeitalData()
        getDetailDataAll()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        getDetailDataAll()
        tableView.reloadData()
    }
    //    override func viewWillAppear(_ animated: Bool) {
    //        super.viewWillAppear(animated)
    //            getDetailDataAll()
    //        //tableView.reloadData()
    //    }
    
    func getDetailDataAll(){

        DataServicegetDataDetail.sharedInstance.getdataDetail(callBack: { (response) in
            self.detaildata = response
        }) { (error) in
            print(error)
        }
    }
    // MARK: - Table view data source
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if detaildata?.lstMenuSales == nil {
            return 0
        } else {
            return (detaildata?.lstMenuSales?.count)!
        }
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell else {return UITableViewCell()}
        cell.idLable.text = detaildata?.lstMenuSales![indexPath.row].id
        cell.nameLabel.text = detaildata?.lstMenuSales![indexPath.row].name
        cell.iconLabel.text = detaildata?.lstMenuSales![indexPath.row].icon
        return cell
    }
    

    
}
