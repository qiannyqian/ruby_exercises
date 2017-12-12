def shuffle(array)
  counter = array.length - 1

  while counter > 0
    # item selected from the unshuffled part of array
    random_index = rand(counter)

    # swap the items at those locations
    array[counter], array[random_index] = array[random_index], array[counter]

    # de-increment counter
    counter -= 1
  end

  p array
end

array = (1..10).to_a

shuffle(array)
