internal class Node<T: Hashable> {
    let coordinates: T
    let parent: Node?
    let costScore: Double
    let heuristicScore: Double
    var totalScore: Double {
        return costScore + heuristicScore
    }
    
    init(coordinates: T, parent: Node?, costScore: Double, heuristicScore: Double) {
        self.coordinates = coordinates
        self.parent = parent
        self.costScore = costScore
        self.heuristicScore = heuristicScore
    }
}

extension Node: Comparable {
    static func == (lhs: Node, rhs: Node) -> Bool {
        return lhs === rhs
    }

    static func < (lhs: Node, rhs: Node) -> Bool {
        return (lhs.totalScore) < (rhs.totalScore)
    }
}
