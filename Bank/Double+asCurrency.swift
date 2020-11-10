import Foundation

extension Double{
    func asCurrency(_ symbol: String = "$") -> String?{
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencySymbol = symbol
        
        let number = NSNumber(value: self)
        return formatter.string(from: number)
        
    }
}
