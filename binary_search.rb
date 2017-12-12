# def binary_search (a,key)  # a is the array and key is the value to be found
#     lo = 0
#     hi= a.length-1
#
#     while (lo<=hi)
#         mid = lo+((hi-lo)/2)
#
#         if a[mid] == key
#             return mid
#         elsif a[mid] < key
#             lo=mid+1
#         else
#             hi=mid-1
#         end
#
#     end
#
#     return "Value not found in array"
# end
#
# a = (1..200).to_a
#
# p binary_search(a, 56)

def binary_search(array, value)
  low = 0
  high = array.length - 1

  while ( low <= high )
    mid = low + ( (high-low)/2 )

    if array[mid] == value
      return mid
    elsif array[mid] < value
      low = mid + 1
    else
      high = mid - 1
    end
  end

  return "Value not found"
end

array = [12, 23, 34, 45, 56, 67, 68, 78, 90]

p binary_search(array, 12)
