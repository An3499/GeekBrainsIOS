import Foundation

enum MachinWindowState {
	case open, close
}

enum MachineEngineState {
	case launched, muted
}

class Car {
	var brand: String
	let year: Int
	let trunkVolume: Double
	var engineState: MachineEngineState
	var windowState: MachinWindowState
	let filledTrunkSpace: Double
	
	
	func setEngineState(value: MachineEngineState) {
		self.engineState = value
	}
	
	func setWindowState(value: MachinWindowState) {
		self.windowState = value
	}
	
	init(brand: String, year: Int, trunkVolume: Double, engineState: MachineEngineState, windowState: MachinWindowState, filledTrunkSpace: Double){
		self.brand = brand
		self.year = year
		self.trunkVolume = trunkVolume
		self.engineState = engineState
		self.windowState = windowState
		self.filledTrunkSpace = filledTrunkSpace
		
	}
	
}

enum SportСarHatchState {
	case open, close
}

enum TrunkCarLiftBody {
	case raise, lower
}

class SportСar: Car {
	var hatchState: SportСarHatchState
	
	init(brand: String, year: Int, trunkVolume: Double, engineState: MachineEngineState, windowState: MachinWindowState, filledTrunkSpace: Double, hatchState: SportСarHatchState ){
		self.hatchState = hatchState
		
		super.init(brand: brand, year: year, trunkVolume: trunkVolume, engineState: engineState, windowState: windowState, filledTrunkSpace: filledTrunkSpace)
	}
	
	func setHatchState(value: SportСarHatchState) {
		self.hatchState = .open
	}
}

class TrunkCar: Car {
	var liftBody: TrunkCarLiftBody
	
	init(brand: String, year: Int, trunkVolume: Double, engineState: MachineEngineState, windowState: MachinWindowState, filledTrunkSpace: Double, liftBody: TrunkCarLiftBody ){
		self.liftBody = liftBody
		
		super.init(brand: brand, year: year, trunkVolume: trunkVolume, engineState: engineState, windowState: windowState, filledTrunkSpace: filledTrunkSpace)
	}
	
	func setLiftBody(value: TrunkCarLiftBody) {
		self.liftBody = value
	}
}

let sportCarHonda = SportСar(brand: "Honda", year: 1980, trunkVolume: 300, engineState: .launched, windowState: .close, filledTrunkSpace: 80, hatchState: .close)
sportCarHonda.setHatchState(value: .open)

print(sportCarHonda)

let trunkCarToyota = TrunkCar(brand: "Toyota", year: 1988, trunkVolume: 1000, engineState: .launched, windowState: .open, filledTrunkSpace: 800, liftBody: .lower)
trunkCarToyota.setLiftBody(value: .raise)
print(trunkCarToyota)

	