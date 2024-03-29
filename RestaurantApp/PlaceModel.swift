//
//  PlaceModel.swift
//  RestaurantApp
//
//  Created by Bend3r on 27.03.2021.
//

import UIKit

struct PlaceModel {
    let name: String
    let type: String?
    let location: String?
    let image: UIImage?
    let restaurantImage: String?
    
   static let restaurantNames = [
        "Burger Heroes", "Kitchen", "Bonsai", "Дастархан",
        "Индокитай", "X.O", "Балкан Гриль", "Sherlock Holmes",
        "Speak Easy", "Morris Pub", "Вкусные истории",
        "Классик", "Love&Life", "Шок", "Бочка"
]
    
   static func getPlaces() -> [PlaceModel] {
        var places = [PlaceModel]()
        for place in restaurantNames {
            places.append(PlaceModel(name: place, type: "Restaurant", location: "Almaty", image: nil, restaurantImage: place))
        }
        return places
    }
}


