# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

User.create!([
  {
    name: "Kirsten", 
    email: "kirsten@gmail.com", 
    password: "password"
  },

  {
    name: "Test", 
    email: "test@gmail.com", 
    password: "password"
  },

  {
    name: "User", 
    email: "user@gmail.com", 
    password: "password"
  }
])

Category.create!([
  {
    name: "Inside the Home"
  },
  {
    name: "Outside the Home"
  }
])

Video.create!([
  {
    name: "Install a Pet-Friendly Storm Door",
    category: "Inside the Home",
    description: "Give your pet the freedom to come and go whenever it wishes by installing this energy-efficient kit",
    author: "This Old House",
    video_url: ":https://www.thisoldhouse.com/58f42f0a-3cb0-4b46-91bd-8ede1580c676",
    tools: "Drill/driver, caulk gun, drill bits: 1/8-inch, 3/8-inch, 3/32-inch",
    shopping_list: "Storm Door with Dog Door, Caulking"
  },

  {
    name: "Repair Tile Grout",
    category: "Inside the Home",
    description: "Repairing tile grout is an easy, inexpensive do-it-yourself project that can give your kitchen or bathroom tile a fresh, new look.",
    author: "Lowes",
    video_url: "https://youtu.be/SfEWz941Wi4?t=8",
    tools: "Grout Float, Grout Saw, Squeegee",
    shopping_list: "Grout, Sealant, Painter's Tape, Rags and Dry Towel"
  },
  {
    name: "Install a Critter-Proof Garden Fence",
    category: "Outside the Home",
    description: "Use pressure-treated lumber to build a sturdy post-and-rail enclosure that prevents animals from swiping your veggies",
    author: "This Old House",
    video_url: "https://www.thisoldhouse.com/how-to/install-critter-proof-garden-fence",
    tools: "Drill/driver, caulk gun, handsaw and tape measure",
    shopping_list: "Garden stakes, spray paint, drainage stone, posts, rails and gate"
  },

    {
    name: "How to Use a Gas Grill",
    category: "Outside the Home",
    description: "Learn with our grilling guide on how to barbecue for summer!",
    author: "This Old House",
    video_url: "https://www.thisoldhouse.com/how-to/install-critter-proof-garden-fence",
    tools: "Drill/driver, caulk gun, handsaw and tape measure",
    shopping_list: "Garden stakes, spray paint, drainage stone, posts, rails and gate"
  },
  
  {
    name: "How to Fix a Leaky Faucet",
    category: "Inside the Home",
    description: "Get rid of that annoying leaky faucet and save on water as we show you an inexpensive fix.",
    author: "Home Depot",
    video_url: "https://youtu.be/SYPFon69vKs",
    tools: "Slotted Screwdrivers, adjustable wrenches, hex keys, phillips-head screwdrivers",
    shopping_list: "Faucer repair kit"
  },
  {
    name: "Build an Outdoor Planter Bench",
    category: "Outside the Home",
    description: "Sit among your favorite flowers on this novel bench you can build in a weekend.",
    author: "Lowes",
    video_url: "https://youtu.be/TmHCJnRKEGs?t=1",
    tools: "Miter saw, fine-tooth blade, drill, bits, and countersink",
    shopping_list: "Planters, exterior latex primer, and exterior satin brush enamel"
  },

  {
    name: "Clean, Seal or Stain a Deck",
    category: "Outside the Home",
    description: "Sunshine and rain take their toll on your deck. Learn how to test the wood, clean your deck and apply stain or sealer.",
    author: "This Old House",
    video_url: "https://youtu.be/Endync6z3XM?t=5",
    tools: "Broom, Garden Hose, Putty Knife and Paint Brush",
    shopping_list: "Deck Cleaner, Stain and Sealer and 80-Grit Sandpaper"
  },
  {
    name: "How to Prep a Room for Paint",
    category: "Inside the Home",
    description: "How and what you need to paint cleanly and skillfully.",
    author: "Benjamin Moore",
    video_url: "https://youtu.be/y9ZoeIKON7Q?t=6",
    tools: "5-in-1 Tool, buckets , drop clothes, Ddrywall repair kit",
    shopping_list: "Primer, spackling products, trisodium phosphate (TSP)"
  },

  ])

Favorite.create!([
  {user_id: 1, video_id: 1},
  {user_id: 4, video_id: 3},
  {user_id: 4, video_id: 4},
  {user_id: 5, video_id: 3},
  {user_id: 2, video_id: 3},
  {user_id: 1, video_id: 4},
  {user_id: 5, video_id: 4}
])
