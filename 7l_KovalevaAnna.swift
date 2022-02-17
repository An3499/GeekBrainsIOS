import Foundation

enum jsonDownload: Error {
	case moreSizeFileDownload
	case serverError(error: Int)
	case noNameFiles
}

struct File {
	var image: String
	var size: Int
}

class downloadJSON {
	
	var fileDownload = [
		"dfruit.jpeg" : File(image: "fruit", size: 4),
		"playground.png" : File(image: "playground", size: 8),
		"animal.jpg" : File(image: "animal", size: 10)
		
	]

	var sizeDownload = 10
	var errorValueServer = 404
	
	func downloadItem(itemNamed name: String, error: Int) throws {
		guard let file = fileDownload[name] else {
			throw jsonDownload.noNameFiles
		}
		
		guard file.size <= sizeDownload else {
			throw jsonDownload.moreSizeFileDownload
		}
		
		guard error == errorValueServer else {
			throw jsonDownload.serverError(error: errorValueServer)
		}
		
		print("Загружены данные \(file.image) с размером \(file.size)")
	}
}

	let UICollection = [
		"TableView" : "fruits.jpeg",
		"TabBar" : "playground.png",
		"CollectionView" : "animal.jpg"
	]

	func download(collection: String, funcDownload: downloadJSON) throws {
		let serverMessage = 404
		let collectionView = UICollection[collection] ?? "Loading..."
		try funcDownload.downloadItem(itemNamed: collectionView, error: serverMessage)
	}

	do {
		
		try download(collection: "CollectionView", funcDownload: downloadJSON())
		
	} catch jsonDownload.noNameFiles {
		print("Нет такого файла")
		
	} catch jsonDownload.moreSizeFileDownload {
			print("Слишком большой файл")
			
	} catch jsonDownload.serverError(let errorCode) {
		print("Сервер вернул ошибку \(errorCode)")
	}
	