def inventory(arr) 
	return arr
end

def shopping(arr, item)
	return arr << item
end



store = []

store << "candy" << "gum" << "chips" << "soda" << "ice"

store.delete_at(2)

store.insert(2, "burrito")

store.delete("candy")

store.include?("gum")
"it is #{store.include?("gum")} that this store includes gum"

rival_store = ["cigarettes", "beer", "wine"]

# p rival_store + store
# p inventory(["candy", "gum", "chips"])
p shopping(["candy", "gum", "chips"], "wine")