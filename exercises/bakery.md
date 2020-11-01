# Level: Average

## Deliverables

You are building an app for a national bakery chain

- your models are `Bakery`, `Dessert`, `Ingredient`, along with any join tables you may need.
  - a `Bakery` has many `Dessert`s
  - a `Dessert` belongs to a `Bakery`
  - a `Dessert` has many `Ingredient`s
  - an `Ingredient` can be used in many `Dessert`s
    - every `Ingredient` has a calorie count

**Draw out your schema *first*.** Write out the relationships using `has_many`, `belongs_to` and `has_many_through`.

Create the necessary methods to connect these classes.  **You should do all the easier methods first (often the ones that are about a single class, as opposed to a method using two or more classes).  Going top to bottom is probably not your best strategy!**

#### Bakery

- #ingredients #DONE
  - should return an array of ingredient objects for the bakery's desserts
- #desserts #DONE
  - should return an array of dessert objects the bakery makes
- #average_calories #DONE
  - should return a float totaling the average number of calories for the desserts sold at this bakery
- .all #DONE
  - should return an array of all bakeries
- #shopping_list #DONE BUT NEEDS FORMATTING
  - should return a string of names for ingredients for the bakery

#### Desserts

- #ingredients #DONE
  - should return an array of `Ingredient` objects for the dessert
- #bakery #DONE, in reader macro
  - should return the `Bakery` object for the dessert
- #calories #DONE
  - should return a float totaling all the calories for all the ingredients included in that dessert
- .all #DONE
  - should return an array of all dessert objects

#### Ingredients

- #dessert #DONE
  - should return an array of all dessert objects that use this ingredient
- #bakeries #DONE
  - should return the bakery objects for the bakeries that use that ingredient
- .all #DONE
  - should return an array of all ingredients
- .find_all_by_name(ingredient) #DONE
  - should take a string argument and return an array of all ingredients that
    include that string in their name
    - .find_all_by_name('chocolate') might return ['chocolate sprinkles',
      'chocolate mousse', 'chocolate']
    - make sure you aren't just looking for exact matches (like 'chocolate' ==
      'chocolate')
