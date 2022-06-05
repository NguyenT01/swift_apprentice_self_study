import UIKit

//--- NO STRUCT

let restaurantLocation = (2,3)
let restaurantRange = 2.5

let otherRestaurantLocation = (8,8)
let otherRestaurantRange = 2.5

func distance(from source: (x: Int, y: Int),
              to target: (x: Int, y: Int))-> Double{
    let distanceX = Double(source.x - target.x)
    let distanceY = Double(source.y - target.y)
    return (distanceX * distanceX + distanceY * distanceY).squareRoot()
}

func isInDeliveryRange(location: (x: Int, y: Int))-> Bool{
    let deliveryDistance = distance(from: location, to: restaurantLocation)
    let secondDeliveryDistance = distance(from: location, to: otherRestaurantLocation)
    return deliveryDistance < restaurantRange || secondDeliveryDistance < otherRestaurantRange
}

isInDeliveryRange(location: (x: 5, y: 5))

