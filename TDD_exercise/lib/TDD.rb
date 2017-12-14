def my_uniq(arr)
  result = []

  arr.each do |el|
    result << el unless result.include?(el)
  end

  result
end


def two_sum(arr)
  result = []

  (0...arr.length - 1).each do |i|
    (i+1..arr.length - 1).each do |j|
      result << [i,j] if arr[i] + arr[j] == 0
    end
  end
  result
end

def my_transpose(arr)
  transposed = []
  i = 0
  while i < arr.length
    j = 0
    col = []
    while j < arr.length
      col << arr[j][i]
      j += 1
    end
    transposed << col
    i += 1
  end
  transposed
end

def stock_picker(arr)
  best_diff = 0
  sell_day = nil
  buy_day = nil

  (0...arr.length - 1).each do |buy_idx|
    (buy_idx+1..arr.length - 1).each do |sell_idx|
      diff = arr[sell_idx] - arr[buy_idx]
        if diff > best_diff
          best_diff = diff
          sell_day = sell_idx
          buy_day = buy_idx
        end
    end
  end
  [buy_day,sell_day]
end
