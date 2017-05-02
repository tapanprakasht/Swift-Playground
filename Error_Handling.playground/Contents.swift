//: Playground - noun: a place where people can play


// Error Handling

enum SpendingError: Error {
    case limit
    case minus
}

func calculateTotalSpending(morningSpending: Double, eveningSpending: Double) throws -> Double {
    if morningSpending < 0 || eveningSpending < 0 {
        throw SpendingError.minus
    }
    
    if (morningSpending + eveningSpending) > 1000 {
        throw SpendingError.limit
    }
    
    return morningSpending + eveningSpending
}

do {
    try calculateTotalSpending(morningSpending: 1000, eveningSpending: 500)
} catch SpendingError.minus {
    print("Minus")
} catch SpendingError.limit {
    print("Limit")
}

