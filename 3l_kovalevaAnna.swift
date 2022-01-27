import Foundation

enum MachinWindowState {
	case open, close
}

enum MachineEngineState {
	case launched, muted
}

struct SportCar {
	var brand: String
	let year: Int
	let trunkVolume: Double
	var engineState: MachineEngineState
	var windowState: MachinWindowState
	let filledTrunkSpace: Double
	
	
	mutating func setEngineState(value: MachineEngineState) {
		self.engineState = value
	}
	
	mutating func setWindowState(value: MachinWindowState) {
		self.windowState = value
	}
	
	init(){
		self.brand = "Nissan"
		self.year = 2000
		self.trunkVolume = 400.0
		self.engineState = .muted
		self.windowState = .close
		self.filledTrunkSpace = 300
		
	}
	
}


struct TrunkCar {
	var brand: String
	let year: Int
	let trunkVolume: Double
	var engineState: MachineEngineState
	var windowState: MachinWindowState
	let filledTrunkSpace: Double
	
	
	mutating func setEngineState(value: MachineEngineState) {
		self.engineState = value
	}
	
	mutating func setWindowState(value: MachinWindowState) {
		self.windowState = value
	}
	
	init(brandCar: String, yearCar: Int, trunkVolumeCar: Double, engineStateCar: MachineEngineState, windowStateCar: MachinWindowState, filledTrunkSpaceCar: Double){
		self.brand = brandCar
		self.year = yearCar
		self.trunkVolume = trunkVolumeCar
		self.engineState = engineStateCar
		self.windowState = windowStateCar
		self.filledTrunkSpace = filledTrunkSpaceCar
	}
	
	init(){
		self.brand = "Honda"
		self.year = 1990
		self.trunkVolume = 400.0
		self.engineState = .muted
		self.windowState = .close
		self.filledTrunkSpace = 300
		
	}
	
}


var sportCarToyota = SportCar()
print(sportCarToyota)

var trunkCarMersedes = TrunkCar()
print(trunkCarMersedes)


//var sportCarToyota = SportCar(brand: "Toyota", year: 1999, trunkVolume: 100, engineState: .launched, windowState: .close, filledTrunkSpace: 80)
//
//var trunkCarMersedes = TrunkCar(brand: "Mersedes", year: 1988, trunkVolume: 1000, engineState: .muted, windowState: .open, filledTrunkSpace: 500)



enum LoadingStatus {
	case Submerge(cargoVolume: Int)
	case Unload(cargoVolume: Int)
}

var LoadingStatusSubmerge = LoadingStatus.Submerge(cargoVolume:  800)
LoadingStatusSubmerge = .Unload(cargoVolume:  800);

switch LoadingStatusSubmerge {
	case .Submerge(let volume): 
	   print("Загрузка: \(volume)")
	   break;
	case .Unload(let volume): 
		print("Разгрузка: \(volume)")
		break;
	default:
		print("default")
		break;
}

print(LoadingStatusSubmerge)







