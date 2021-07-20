import Foundation
//chi ap dung cho class, khong ap dung cho struct
class Stock {
    static var coinsInStock = 100_000
    static func distribute(coins: Int) -> Int {
        let numberOfDistributeCoins = min(coins,coinsInStock)
        coinsInStock = coinsInStock - numberOfDistributeCoins
        return numberOfDistributeCoins
    }
    static func receive(coins: Int) {
        coinsInStock += coins
    }
}
class GamePlayer {
    var existingCoins: Int
    init(coins: Int) {
        existingCoins = Stock.distribute(coins: coins)
    }
    func win(coins: Int) {
        existingCoins += Stock.distribute(coins: coins)
    }
    deinit{
        print("Deinit...")
        Stock.receive(coins: existingCoins)
    }
}
var player:GamePlayer? = GamePlayer(coins: 1200)
print("Existing Coins: \(player?.existingCoins)")
player!.win(coins: 1500)
print("there are now \(Stock.coinsInStock) coins left in the bank")
player = nil
print("there are now \(Stock.coinsInStock) coins left in the bank")