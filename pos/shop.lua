local Shop = {}

local stock = {}
local basket = {}

local posPort = {}
local shelves = {}
local cashier = {}

function Shop.init(_posPort, _cashier, _shelves, _modem)
	posPort = _posPort
	cashier = _cashier
	shelves = _shelves
	modem = _modem
	modem.open(posPort)
end

function Shop.addStock(id, name, number, price)
   stock[id] = {}
   stock[id]["id"] = id
   stock[id]["name"] = name
   stock[id]["number"] = number
   stock[id]["price"] = price
end 

function Shop.getStock()
	return stock
end

function Shop.getStockLevel(item)
	stock[item]["number"] = getStockLevel(item)
	return stock[item]["number"]
end

function Shop.addToBasket(item)
	basket = stock[item]
end

local function getStockLevel(item)
	modem.transmit(shelves[item], posPort, "stockLevels")
	while true do
		local event, modemSide, senderChannel, replyChannel,
			message, senderDistance = os.pullEvent("modem_message")
		if senderChannel == shelves[item] then
			return message
		end
	end
end

return Shop