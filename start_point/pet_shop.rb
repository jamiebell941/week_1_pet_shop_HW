def pet_shop_name(shop_name)
  for name in @pet_shop
    @pet_shop.find "Camelot of Pets"
  end
p @pet_shop[:name]
end
# def pet_shop_name(name)
# pet_shop.find{|name| @pet_shop[:name] == "Camelot of Pets"}
# end
def total_cash(sum)
 return sum[:admin][:total_cash]
  end
