import Foundation

struct queuePeople<Queue: Comparable> {
	
	var people = [Queue]()
	
	mutating func add (_ human: Queue) {
		people.append(human)
	}
	
	mutating func next() -> Queue {
		print("Next queue \(people.first!)")
		return people.removeFirst()
	}
	
	func filter(human: Queue) {
		print("Find \(people.filter{$0 == human})")
	}
	
	mutating func propertySort() -> [Queue] {
		return people.sorted(by: >)
	}
	
	subscript(index: Int) -> Queue? {
		index < people.count ? people[index] : nil
	}
	
	func printCount() {
		print(people.count)
	}
}

var round = queuePeople<String>(people:["Anna"])
round.add("Alex")
round.add("Bob")
round.add("Bob")
round.add("Devid")
print("Sorted: \(round.propertySort())")

round.next()
round.add("Julia")
print(round)
round.filter(human: "Bob")
round.printCount()

print(round)
print(round[2])








		
		

