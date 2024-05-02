//
//  ViewControllerExtnsn.swift
//  DemoTestProject
//
//  Created by Sunish Ram on 27/04/24.
//

import Foundation
import UIKit

extension ViewController : UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.modeldata.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ViewTVC", for: indexPath) as! ViewTVC
        cell.lblId.text = "Id : \(viewModel.modeldata[indexPath.row].id)"
        cell.lblTitle.text = "Title :" + (viewModel.modeldata[indexPath.row].title)
//
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sb : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVc = sb.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
       nextVc.requestId.id = viewModel.modeldata[indexPath.row].id
        self.navigationController?.pushViewController(nextVc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
}
