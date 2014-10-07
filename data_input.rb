#create a file that you can input a large data set into

#convert file to an array
f = File.new("data.csv", "r")
bestbuy_stocks = f.readlines
f.close

sum = 0
count = 0
bestbuy_stocks.each do |bestbuy_stock|
	sum = sum + bestbuy_stock.split(",")[1].to_f
	count = count + 1
end
mean = sum / count
puts "the mean of your number is:"
puts mean.to_s
# add each point of data together to find the mean
distance_from_mean = []
bestbuy_stocks.each do |bestbuy_stock|
	difference = bestbuy_stock - mean
	absDifference = difference.abs
	distance_from_mean.push absDifference
end



#
openCol = []
bestbuy_stocks.each do |line|
	dummy = line.split(",")[1].to_f
	openCol.push(dummy)
end
square = []
bestbuy_stocks.each do |bestbuy_stock|
	sum = sum + (bestbuy_stocks - mean)**2
end

square_root = []
bestbuy_stocks do |bestbuy_stock|
	sum = sum**0.5
end
