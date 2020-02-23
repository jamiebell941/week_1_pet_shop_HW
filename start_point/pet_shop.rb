### find value from hash
def pet_shop_name(shop_name)
  # for name in @pet_shop
  #   @pet_shop.find "Camelot of Pets"
  # end
return @pet_shop[:name]
end
# def pet_shop_name(name)
# pet_shop.find{|name| @pet_shop[:name] == "Camelot of Pets"}
# end

### find value from hash
def total_cash(sum)
 return sum[:admin][:total_cash]
  end
###
def add_or_remove_cash(pet_shop, cash)
# cash = @pet_shop.map{|cash| @pet_shop[:admin][:total_cash]
 @pet_shop[:admin][:total_cash] += cash
  end

def pets_sold(sold)
  return @pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, sold)
  @pet_shop[:admin][:pets_sold] += sold
end

def stock_count(pet_shop)
 @pet_shop[:pets].count
end

def pets_by_breed(pet_shop, breed)
  breeds = []
  for pet in @pet_shop[:pets]
    if breed == pet[:breed]
      breeds.push(pet)
    end
  end
  return breeds
end

# def pets_by_breed(pet_shop, breed)
#     if @pet_shop[:pets][:breed] == breed
#       return breed.count
#     end
  # @pet_shop[:pets][:breed].count

def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
      return pet if name == pet[:name]
    end
      return nil
end

# def remove_pet_by_name(pet_shop, name_remove)
#    pet_remove = find_pet_by_name(pet_shop, name_remove)
#    pet_shop[:pets].delete(pet_remove)
#    return find_pet_by_name
#   end

#

# def remove_pet_by_name(pet_shop, name)
#   # @pet_shop[:name].delete(pet[:name])
#   # return nil
#  @pet_shop[:pets][:name].sort
#  for pet in pets
#   if name == pet[:name]
#     return pet[:name].shift
#   end
# return nil
# end
# end
# delete pet from pets

# if name is equal to Pet
# elseif return
# end

# def remove_pet_by_name(pet_shop, name)
#   # pets[:name].delete(name)
#   return pets[:name].delete(name)
# end

def remove_pet_by_name(pet_shop, name_remove)
   pet_remove = find_pet_by_name(pet_shop, name_remove)
   pet_shop[:pets].delete(pet_remove)
  end

def add_pet_to_stock(pet_shop,new_pet)
    return @pet_shop[:pets].push(@new_pet)
  end

  def customer_cash(customers)
    return customers[:cash]
  end
    # def customer_cash(customer)
      # return sum[:cash]
    #   customer_cash = 0
    #   for customer in customers
    #     cash += customer[:cash]
    #   end
    # end
    # def customer_cash(customers)
    #   return @customers[:cash]
    # end

    def remove_customer_cash(customer, cash_remove)
      customer[:cash] -= cash_remove
    end

    def customer_pet_count(customers)
      return customers[:pets].count
    end

def add_pet_to_customer(customer, new_pet)
  return customer[:pets].push(new_pet).count
end

def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] >= new_pet[:price]
    return true
      else customer[:cash] < new_pet[:price]
        return false
      # elsif customer[:cash] == new_pet[:price]
      #   return true
  end
end
