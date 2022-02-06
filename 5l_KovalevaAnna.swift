import Foundation

enum MachinWindowState {
	case open, close
}

enum MachineEngineState {
	case launched, muted
}



protocol CarDelegate {
	var brand: String {get}
	var year: Int {get}
	var engineState: MachineEngineState {get set}
	var windowState: MachinWindowState {get set}
}


extension CarDelegate {
	mutating func setWindowState(window: MachinWindowState) {
			switch window {
				case .open:
				print("Окно \(brand) открыто")
				self.windowState = .open
				
				case .close:
				print("Окно \(brand) закрыто")
				windowState = .close
			}
		}
		
		mutating func setEngineState(engine: MachineEngineState){
			switch engine {
				case .launched:
				print("Двигатель \(brand) запущен \n")
				self.engineState = .launched
				
				case .muted:
				print("Двигатель \(brand) заглушен \n")
				self.engineState = .muted
			}
		}
}


enum SportСarHatchState {
	case open, close
}

enum TrunkCarLiftBody {
	case raise, lower
}

protocol TrunkCarDelegate: CarDelegate {
	var liftBody: TrunkCarLiftBody {get set}
}

extension TrunkCarDelegate {
	mutating func setLiftBody(liftBody: TrunkCarLiftBody){
		switch liftBody {
			case .raise:
			print("Багажник \(brand) поднят \n")
			self.liftBody = .raise
			
			case .lower:
			print("Багажник \(brand) опущен \n")
			self.liftBody = .lower
		}
	}
	
	
}

protocol SportCarDelegate: CarDelegate {
	var hatchState: SportСarHatchState {get set}
}

extension SportCarDelegate {
	mutating func setHatchState(hatchState: SportСarHatchState){
		switch hatchState {
			case .open:
			print("Люк \(brand) открыт")
			self.hatchState = .open
			
			case .close:
			print("Люк \(brand) закрыт")
			self.hatchState = .close
		}
	}
}

class TrunkCar: TrunkCarDelegate {
	var brand: String
	var year: Int
	var engineState: MachineEngineState
	var windowState: MachinWindowState
	var liftBody: TrunkCarLiftBody

	init(brand: String, year: Int, engineState: MachineEngineState, windowState: MachinWindowState, liftBody: TrunkCarLiftBody ){
		self.brand = brand
		self.year = year
		self.engineState = engineState
		self.windowState = windowState
		self.liftBody = liftBody
	}
}

class SportCar: SportCarDelegate {
	var brand: String
	var year: Int
	var engineState: MachineEngineState
	var windowState: MachinWindowState
	var hatchState: SportСarHatchState
	
	
	init(brand: String, year: Int, engineState: MachineEngineState, windowState: MachinWindowState, hatchState: SportСarHatchState){
		self.brand = brand
		self.year = year
		self.engineState = engineState
		self.windowState = windowState
		self.hatchState = hatchState
		
	}
}

extension TrunkCar: CustomStringConvertible {
	var description: String {
		return "Автомобиль: \(brand)\n" +
		"Год выпуска: \(year)\n" +
		"Состояние двигателя: \(engineState)\n" +
		"Состояние окон: \(windowState)\n" +
		"Состояние багажника: \(liftBody)\n"
	}
}

extension SportCar: CustomStringConvertible {
	var description: String {
		return "Автомобиль: \(brand)\n" +
		"Год выпуска: \(year)\n" +
		"Состояние двигателя: \(engineState)\n" +
		"Состояние окон: \(windowState)\n" +
		"Состояние люка: \(hatchState)\n"
	}
}


var sportCarOne = SportCar(brand: "Toyota", year: 2020, engineState: .launched, windowState: .open, hatchState: .open)
var trunkarOne = TrunkCar(brand: "Honda", year: 2014, engineState: .launched, windowState: .open, liftBody: .lower)
sportCarOne.setEngineState(engine: .muted)
trunkarOne.setLiftBody(liftBody: .raise)

print(sportCarOne)
print(trunkarOne)


