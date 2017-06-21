### Get all the platforms a single distributor services
### Get all the games a single distributor provides
### Do the opposite for platform

# Beforehand

## Describe
  - Architecture (think where is the join pseudo table)
  - Where 'single source of truth exists'

# After
  - Complete all classes (each should be able to fetch their relevant data from other classes WITHOUT keeping the data locally (within the instance))


-----------

  ### Get all the platforms a single distributor services
### Get all the games a single distributor provides
### Do the opposite for platform

# Beforehand

## Describe
  - Architecture (think where is the join pseudo table)
  - Where 'single source of truth exists'

# After
  - Complete all classes (each should be able to fetch their relevant data from other classes WITHOUT keeping the data locally (within the instance))


# Bonus
  - On all instances of the three classes, we should be able to call a method that prints out the:
      1. Class name to which the instance belongs
      2. All variables that belong to that instance that *we* defined (i.e. not any 'built-in' variables that are inherent in all instances within Ruby)
      3. All of the matching values for those variables (what they point to)

      #find, map, select. each.
