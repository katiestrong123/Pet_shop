# QUESTION 1
def pet_shop_name(pet_shop)
    return pet_shop[:name]
end 

# QUESTION 2
def total_cash(pet_shop)
    pet_shop[:admin][:total_cash]
end 

# # QUESTION 3/4
def add_or_remove_cash(pet_shop, amount)
    pet_shop[:admin][:total_cash] += amount
end 

# # QUESTION 5
def pets_sold(pet_shop)
    pet_shop[:admin][:pets_sold]
end 

# # QUESTION 6
def increase_pets_sold(pet_shop, sales)
    pet_shop[:admin][:pets_sold] += sales
end 

# QUESTION 7 
def stock_count(pet_shop)
    pet_shop[:pets].length
end

# QUESTION 8/9

def pets_by_breed(pet_shop, breed)
    pets_by_breed = []
    for pet in pet_shop[:pets] do
        if pet[:breed] == breed
            pets_by_breed << pet
        end 
    end 
return pets_by_breed
end

# QUESTION 10/11
def find_pet_by_name(pet_shop, name)
    for pet in pet_shop[:pets]
        if pet[:name] == name 
            return pet 
        end 
    end 
    return nil
end 

# QUESTION 12

def remove_pet_by_name(pet_shop, pet_name)
    for pet in pet_shop[:pets]
        pet_shop[:pets].delete_if{|pet| pet[:name] == pet_name}
    end
end 

# QUESTION 13

def add_pet_to_stock(pet_shop, new_pet) 
    pet_shop[:pets] << new_pet
end

  # QUESTION 14 

  def customer_cash(customers)
    customers[:cash]
    end 

#   # QUESTION 15

  def remove_customer_cash(customers, amount)
    customers[:cash] -= amount
  end 

#   QUESTION 16

def customer_pet_count(customers)
    customers[:pets].length  
end

# QUESTION 17

def add_pet_to_customer(customers, new_pet)
    customers[:pets] << new_pet
end

# # OPTIONAL 1-3

def customer_can_afford_pet(customer, new_pet)
    if new_pet[:price] <= customer[:cash]
        return true
    else 
        return false
    end 
end 

# # OPTIONAL 4

    # def sell_pet_to_customer(customer, pet_shop, name)
    #     customer[:pets].push(name)
    #     pet_shop[:admin][:pets_sold].to_i + 1
    #     customer[:cash] - name[:price]
    #  end 
     
# def sell_pet_to_customer(customer, pet_shop, name)        
#     for pet in customer[:pets]
#         if pet[:name] == name 
#             customer[:pets].push(name)
#         end 
#         for pet in pet_shop   
#             pet_shop[:admin][:pets_sold] + 1
#             price = name[:price]
#             customer[:cash] - price
#         end 
#         for cash in pet_shop[:admin]
#             total_cash += name[:price]
#             pet_shop[:admin][:total_cash] = total_cash
#         end 
#     end 
# end 


