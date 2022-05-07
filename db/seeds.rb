
  jeweler1 = Jeweler.create(name: "jeweler1", email: "jeweler1@bijouxville.ch")
  jeweler2 = Jeweler.create(name: "jeweler2", email: "jeweler2@bijouxville.ch")
  jeweler3 = Jeweler.create(name: "jeweler3", email: "jeweler3@bijouxville.ch")
  jeweler4 = Jeweler.create(name: "jeweler4", email: "jeweler4@bijouxville.ch")
  jeweler5 = Jeweler.create(name: "jeweler5", email: "jeweler5@bijouxville.ch")

  jewel1 = Jewel.create(name: "Lux Safire",
                        jeweler_id: 1,
                        material: "Gold",
                        type_of_stones: "Safire",
                        number_of_stones: 1)

  jewel2 = Jewel.create(name: "Lux Emerald",
                        jeweler_id: 2,
                        material: "Silver",
                        type_of_stones: "Emerald",
                        number_of_stones: 2)
  jewel3 = Jewel.create(name: "Lux Diamond",
                        jeweler_id: 3,
                        material: "Iron",
                        type_of_stones: "Diamond",
                        number_of_stones: 3)
  jewel4 = Jewel.create(name: "Lux Black Diamond",
                        jeweler_id: 4,
                        material: "Platinium",
                        type_of_stones: "Black Diamond",
                        number_of_stones: 4)
  jewel5 = Jewel.create(name: "Lux Ruby",
                        jeweler_id: 5,
                        material: "White Gold",
                        type_of_stones: "Ruby",
                        number_of_stones: 5)

  stone1 = Stone.create(name: "Safire",        jewel_id: 1, price: 9.99)
  stone2 = Stone.create(name: "Emerald",       jewel_id: 2, price: 19.99)
  stone3 = Stone.create(name: "Diamond",       jewel_id: 3, price: 29.99)
  stone4 = Stone.create(name: "Black Diamond", jewel_id: 4, price: 39.99)
  stone5 = Stone.create(name: "Ruby",          jewel_id: 5, price: 49.99)

  material1 = Material.create(name: "Gold",       jewel_id: 1, base_cost: 99.50)
  material2 = Material.create(name: "Silver",     jewel_id: 2, base_cost: 199.50)
  material3 = Material.create(name: "Iron",       jewel_id: 3, base_cost: 299.50)
  material4 = Material.create(name: "Platinium",  jewel_id: 4, base_cost: 399.50)
  material5 = Material.create(name: "White Gold", jewel_id: 5, base_cost: 499.50)
