import UIKit

var errorCode: Int?
errorCode = 100
errorCode = nil

var result: Int? = 30
print(result!+1)

func calSides(shape: String) ->Int?{
    switch shape{
    case "Triangle":
        return 3
    case "Square":
        return 4
    case "Rectangle":
        return 4
    case "Hexagon":
        return 6
    default:
        return nil
    }
}

calSides(shape: "Hexagon")

//GUARD KEYWORD
func printSides(shape:String){
    let sides = calSides(shape: shape)
    
    // Ở HÀM IF ĐẦU TIÊN
    // KẾT QUẢ Ở SIDES TRẢ VỀ INT HAY NIL
    // NẾU INT THÌ CHẠY PRINT ĐẦU TIÊN
    // NGƯỢC LẠI THÌ TỚI HÀM PRINT THỨ 2
    if let sides = sides{
        print("A \(shape) has \(sides) sides.")
    }
    else{
        print("I don’t know the number of sides for \(shape).")
    }
}

printSides(shape: "TRexagon")

// SỬ DỤNG GUARD ĐỂ CODE GỌN HƠN
// GUARD DÙNG ĐỂ CHECK NULL (NIL) CỦA BIẾN
func printSides2(shape: String){
    guard let sides = calSides(shape: shape) else{
        print("I don’t know the number of sides for \(shape).")
        return
    }
    
    print("A \(shape) has \(sides) sides.")
}

printSides2(shape: "Hexagon")

// NIL COALESCING
// KIỂU SHORT IF DÀNH CHO NIL
var optionalInt: Int?
var mustHaveResult = optionalInt ?? 0

