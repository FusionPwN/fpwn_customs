function findItem(arr, itemToFind)
	local foundIt = false
	local index = nil
	for i = 1, #arr, 1 do
		if arr[i] == itemToFind then
			foundIt = true
			index = i
			break
		end
	end
	if not foundIt then
		return foundIt
	else
		return index
	end
end

function findKey(obj, keyToFind)
	local foundIt = false
	local key = nil
	for k, v in pairs(obj) do
		if k == keyToFind then
			foundIt = true
			key = k
			break
		end
	end
	if not foundIt then
		return foundIt
	else
		return key
	end
end

function calcFinalPrice(shopCart, shopProfit)
	local shopCostValue = 0
	local totalCartValue = 0
	for k, v in pairs(shopCart) do
		--print("k: " .. k)
		--print("v['price']: " .. v['price'])
		local c = v['price'] * (shopProfit / 100)
		shopCostValue = shopCostValue + v['price']
		totalCartValue = totalCartValue + v['price'] + c
	end
	return shopCostValue, totalCartValue
end