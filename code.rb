transactions = [50_000, -2_000, -25_000, 4_000, -12_000, 5_000, -800, -900, 43_000, -30_000, 15_000, 62_000, -50_000, 42_000]

# Write Ruby code to find out the answers to the following questions. Be sure to make sure that your output and format matches what is given on the assignment page:

# * What is the value of the first transaction?
puts "The first transaction is: #{transactions[0]}"

# * What is the value of the second transaction?
puts "The second transaction is: #{transactions[1]}"

# * What is the value of the fourth transaction?
puts "The fourth transaction is: #{transactions[3]}"

# * What is the value of the last transaction?
puts "The last transaction is: #{transactions[-1]}"

# * What is the value of the second from last transaction?
puts "The second from the last transaction is: #{transactions[-2]}"

# * What is the value of the 5th from last transaction?
puts "The fifth from the last transaction is: #{transactions[-5]}"

# * What is the value of the transaction with index 5?
puts "The transaction with the index of 5 is: #{transactions[5]}"

# * How many transactions are there in total?
puts "The total number of transactions is: #{transactions.size}"

# * How many positive transactions are there in total?
puts "The total number of positive transactions is: #{transactions.select{|word| word > 0}.size}"

# * How many negative transactions are there in total?
puts "The total number of negative transactions is: #{transactions.select{|word| word < 0}.size}"

# * What is the largest withdrawal?
puts "The largest withdrawal is: #{transactions.min}"

# * What is the largest deposit?
puts "The largest deposit is: #{transactions.max}"

# * What is the smallest withdrawal?
puts "The smallest withdrawal is: #{transactions.select{|word| word < 0}.max}"

# * What is the smallest deposit?
puts "The smallest deposit is: #{transactions.select{|word| word > 0}.min}"

# * What is the total value of all the transactions?
puts "The total value of all the transactions is: #{transactions.reduce(:+)}"

# * If Dr. Dre's initial balance was $239,900 in this account, what is the value of his balance after his all of the transactions in our transactions array have been run?
puts "Dr. Dre's balance is: #{239900 + transactions.reduce(:+)}"

best_records = {
 "Tupac"=>"All Eyez on Me",
 "Eminem"=>"The Marshall Mathers LP",
 "Wu-Tang Clan"=>"Enter the Wu-Tang (36 Chambers)",
 "Led Zeppelin"=>"Physical Graffiti",
 "Metallica"=>"The Black Album",
 "Pink Floyd"=>"The Dark Side of the Moon",
 "Pearl Jam"=>"Ten",
 "Nirvana"=>"Nevermind"
 }

# Write Ruby code to find out the answers to the following questions:

# * How many records are in `best_records`?
puts "Total records: #{best_records.values.size}"

# * Who are all the artists listed?
puts "All of the artists: #{best_records.keys.join(', ')}"

# * What are all the album names in the hash?
puts "All of the albums: #{best_records.values.join(', ')}"

# * Delete the `Eminem` key-value pair from the list and print an updated list of just the artists.

puts "List of artists with Eminem deleted: #{best_records.reject!{|k,v| k == 'Eminem'}.keys.join(', ')}"

# * Add your favorite musician and their best album to the list and print an updated list of all the artists and albums:
best_records['Britney Spears'] = 'Oops, i did it again!'
puts "My favorite musician added: #{best_records.invert['Oops, i did it again!']}"


# * True or False: `Nirvana` is included in `best_records`
puts "True or False: `Nirvana` is included: #{best_records.include?('Nirvana')}"


# * Change `Nirvana`'s album to another and then print the updated list of Artists and Albums.
best_records['Nirvana'] = 'Glory'
puts "Nirvana's album updated: #{best_records['Nirvana']}"

# * True or False: `Soundgarden` is included in `best_records`?
puts "True or False: `Soundgarden` is included: #{best_records.include?('Soundgarden')}"

# * If `Soundgarden` is not in `best_records` then add a key-value pair for the band and then print the updated list of Artists and Albums.
if !best_records.include?('Soundgarden')
  best_records['Soundgarden'] = 'Best'
end
puts "Soundgarden added if it's not already there: #{best_records}"

# * Which key-value pairs have a key that has a length less than or equal to 6 characters?
arr = best_records.select{|k,v| k.size <= 6}
puts "key-value pairs have a key that has a length less than or equal to 6 characters: #{arr}"
# * Which key-value pairs have a value that is greater than 10 characters?
arr = best_records.select{|k,v| k.size > 10}
puts "key-value pairs have a key that has a length greater than 10 characters: #{arr}"
