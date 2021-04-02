//
//  MyPlaceController.swift
//  RestaurantApp
//
//  Created by Bend3r on 27.03.2021.
//

import UIKit


class MainViewController: UITableViewController {
    
    var place = PlaceModel.getPlaces()

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return place.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        let places = place[indexPath.row]
        cell.nameOfPlace.text = places.name
        cell.locationOfPlace.text = places.location
        cell.typeOfPlace.text = places.type
        if places.image == nil {
            cell.imageOfPlace.image = UIImage(named: places.restaurantImage!)
        } else {
            cell.imageOfPlace.image = places.image
        }
        cell.imageOfPlace.layer.cornerRadius = cell.imageOfPlace.frame.height / 2
        
        
        return cell
    }

   
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        guard let newPlaceVC = segue.source as? NewPlaceViewController else { return }
        newPlaceVC.saveNewPlace()
        place.append(newPlaceVC.newPlace!)
        tableView.reloadData()
    }
}
