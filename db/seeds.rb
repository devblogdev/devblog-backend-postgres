# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



user2 = User.find_or_create_by(first_name: "New York Times", last_name: "API", email: "nytimes.com", password_digest: "NYTIMES")

NEW_YORK_TIMES_POSTS = 
{
  "status": "OK",
  "copyright": "Copyright (c) 2021 The New York Times Company. All Rights Reserved.",
  "section": "World News",
  "last_updated": "2021-07-31T12:47:42-04:00",
  "num_results": 36,
  "results": [
    {
      "section": "world",
      "subsection": "asia",
      "title": "As Fears Grip Afghanistan, Hundreds of Thousands Flee",
      "abstract": "With the Taliban sweeping across much of the country, at least 30,000 Afghans are leaving each week. Many more have been displaced within Afghanistan’s borders.",
      "url": "https://www.nytimes.com/2021/07/31/world/asia/afghanistan-migration-taliban.html",
      "uri": "nyt://article/de39f31b-7dd7-5b02-a2f3-49a08e98901f",
      "byline": "By Christina Goldbaum and Fatima Faizi",
      "item_type": "Article",
      "updated_date": "2021-07-31T13:57:54-04:00",
      "created_date": "2021-07-31T05:00:19-04:00",
      "published_date": "2021-07-31T05:00:19-04:00",
      "material_type_facet": "",
      "kicker": "",
      "des_facet": [
        "Immigration and Emigration",
        "Afghanistan War (2001- )",
        "Refugees and Displaced Persons"
      ],
      "org_facet": [
        "International Organization for Migration",
        "Taliban",
        "United Nations"
      ],
      "per_facet": [
        
      ],
      "geo_facet": [
        "Afghanistan"
      ],
      "multimedia": [
        {
          "url": "https://static01.nyt.com/images/2021/07/31/world/31afghanistan-exodus4/merlin_191176125_55074437-1c68-4526-b3e4-b63c1cd96ce0-superJumbo.jpg",
          "format": "superJumbo",
          "height": 1366,
          "width": 2048,
          "type": "image",
          "subtype": "photo",
          "caption": "With the security situation in Afghanistan rapidly deteriorating, hundreds of people wait in long lines at the passport department in Kabul each morning.",
          "copyright": "Jim Huylebroek for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/31/world/31afghanistan-exodus4/31afghanistan-exodus4-thumbStandard.jpg",
          "format": "Standard Thumbnail",
          "height": 75,
          "width": 75,
          "type": "image",
          "subtype": "photo",
          "caption": "With the security situation in Afghanistan rapidly deteriorating, hundreds of people wait in long lines at the passport department in Kabul each morning.",
          "copyright": "Jim Huylebroek for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/31/world/31afghanistan-exodus4/31afghanistan-exodus4-thumbLarge.jpg",
          "format": "thumbLarge",
          "height": 150,
          "width": 150,
          "type": "image",
          "subtype": "photo",
          "caption": "With the security situation in Afghanistan rapidly deteriorating, hundreds of people wait in long lines at the passport department in Kabul each morning.",
          "copyright": "Jim Huylebroek for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/31/world/31afghanistan-exodus4/merlin_191176125_55074437-1c68-4526-b3e4-b63c1cd96ce0-mediumThreeByTwo210.jpg",
          "format": "mediumThreeByTwo210",
          "height": 140,
          "width": 210,
          "type": "image",
          "subtype": "photo",
          "caption": "With the security situation in Afghanistan rapidly deteriorating, hundreds of people wait in long lines at the passport department in Kabul each morning.",
          "copyright": "Jim Huylebroek for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/31/world/31afghanistan-exodus4/merlin_191176125_55074437-1c68-4526-b3e4-b63c1cd96ce0-articleInline.jpg",
          "format": "Normal",
          "height": 127,
          "width": 190,
          "type": "image",
          "subtype": "photo",
          "caption": "With the security situation in Afghanistan rapidly deteriorating, hundreds of people wait in long lines at the passport department in Kabul each morning.",
          "copyright": "Jim Huylebroek for The New York Times"
        }
      ],
      "short_url": "https://nyti.ms/3zR7A5t"
    },
    {
      "section": "world",
      "subsection": "asia",
      "title": "Body of Reuters Photographer Was Mutilated in Taliban Custody, Officials Say",
      "abstract": "The body of Danish Siddiqui, a Pulitzer Prize winner killed in Afghanistan, was unrecognizable when it was brought to a Kandahar hospital, one official said.",
      "url": "https://www.nytimes.com/2021/07/31/world/asia/danish-siddiqui-afghanistan-photographer.html",
      "uri": "nyt://article/b02f0cb5-76b9-5923-9fd6-96a62707fade",
      "byline": "By Mujib Mashal",
      "item_type": "Article",
      "updated_date": "2021-07-31T04:14:14-04:00",
      "created_date": "2021-07-31T04:14:14-04:00",
      "published_date": "2021-07-31T04:14:14-04:00",
      "material_type_facet": "",
      "kicker": "",
      "des_facet": [
        "Human Rights and Human Rights Violations",
        "Afghanistan War (2001- )"
      ],
      "org_facet": [
        "Taliban"
      ],
      "per_facet": [
        "Siddiqui, Danish (1980-2021)"
      ],
      "geo_facet": [
        "Kandahar (Afghanistan)"
      ],
      "multimedia": [
        {
          "url": "https://static01.nyt.com/images/2021/07/31/world/31afghanistan-journalist1/merlin_190971408_b86a4257-e96a-48fc-829a-413fdc39e6bd-superJumbo.jpg",
          "format": "superJumbo",
          "height": 1365,
          "width": 2048,
          "type": "image",
          "subtype": "photo",
          "caption": "A tribute to Danish Siddiqui in New Delhi on July 17, the day after his death.",
          "copyright": "Altaf Qadri/Associated Press"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/31/world/31afghanistan-journalist1/31afghanistan-journalist1-thumbStandard.jpg",
          "format": "Standard Thumbnail",
          "height": 75,
          "width": 75,
          "type": "image",
          "subtype": "photo",
          "caption": "A tribute to Danish Siddiqui in New Delhi on July 17, the day after his death.",
          "copyright": "Altaf Qadri/Associated Press"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/31/world/31afghanistan-journalist1/31afghanistan-journalist1-thumbLarge.jpg",
          "format": "thumbLarge",
          "height": 150,
          "width": 150,
          "type": "image",
          "subtype": "photo",
          "caption": "A tribute to Danish Siddiqui in New Delhi on July 17, the day after his death.",
          "copyright": "Altaf Qadri/Associated Press"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/31/world/31afghanistan-journalist1/merlin_190971408_b86a4257-e96a-48fc-829a-413fdc39e6bd-mediumThreeByTwo210.jpg",
          "format": "mediumThreeByTwo210",
          "height": 140,
          "width": 210,
          "type": "image",
          "subtype": "photo",
          "caption": "A tribute to Danish Siddiqui in New Delhi on July 17, the day after his death.",
          "copyright": "Altaf Qadri/Associated Press"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/31/world/31afghanistan-journalist1/merlin_190971408_b86a4257-e96a-48fc-829a-413fdc39e6bd-articleInline.jpg",
          "format": "Normal",
          "height": 127,
          "width": 190,
          "type": "image",
          "subtype": "photo",
          "caption": "A tribute to Danish Siddiqui in New Delhi on July 17, the day after his death.",
          "copyright": "Altaf Qadri/Associated Press"
        }
      ],
      "short_url": "https://nyti.ms/3j4gfux"
    },
    {
      "section": "world",
      "subsection": "africa",
      "title": "In South Africa, Poachers Now Traffic in Tiny Succulent Plants",
      "abstract": "Police search the desert trying to track down the poachers selling Conophytums to collectors worldwide, threatening to wipe out rare plants in the wild.",
      "url": "https://www.nytimes.com/2021/07/31/world/africa/south-africa-poachers-tiny-succulent-plants.html",
      "uri": "nyt://article/1fc3b5d3-3cd7-5ddb-a74f-e7b51f225470",
      "byline": "By Tommy Trenchard",
      "item_type": "Article",
      "updated_date": "2021-07-31T12:24:57-04:00",
      "created_date": "2021-07-31T05:00:19-04:00",
      "published_date": "2021-07-31T05:00:19-04:00",
      "material_type_facet": "",
      "kicker": "",
      "des_facet": [
        "Flowers and Plants",
        "Endangered and Extinct Species",
        "Wildlife Trade and Poaching"
      ],
      "org_facet": [
        "Convention on International Trade in Endangered Species"
      ],
      "per_facet": [
        
      ],
      "geo_facet": [
        "South Africa"
      ],
      "multimedia": [
        {
          "url": "https://static01.nyt.com/images/2021/07/29/world/00Plant-Poachers4/merlin_191962749_2f7af14f-4736-439e-84cb-bbcaa2932401-superJumbo.jpg",
          "format": "superJumbo",
          "height": 1365,
          "width": 2048,
          "type": "image",
          "subtype": "photo",
          "caption": "There are dozens of species of Conophytum in South Africa, many rare or endangered. This is a Conophytum ficiforme plant in bloom near Worcester, South Africa.",
          "copyright": "Tommy Trenchard for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/29/world/00Plant-Poachers4/merlin_191962749_2f7af14f-4736-439e-84cb-bbcaa2932401-thumbStandard.jpg",
          "format": "Standard Thumbnail",
          "height": 75,
          "width": 75,
          "type": "image",
          "subtype": "photo",
          "caption": "There are dozens of species of Conophytum in South Africa, many rare or endangered. This is a Conophytum ficiforme plant in bloom near Worcester, South Africa.",
          "copyright": "Tommy Trenchard for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/29/world/00Plant-Poachers4/merlin_191962749_2f7af14f-4736-439e-84cb-bbcaa2932401-thumbLarge.jpg",
          "format": "thumbLarge",
          "height": 150,
          "width": 150,
          "type": "image",
          "subtype": "photo",
          "caption": "There are dozens of species of Conophytum in South Africa, many rare or endangered. This is a Conophytum ficiforme plant in bloom near Worcester, South Africa.",
          "copyright": "Tommy Trenchard for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/29/world/00Plant-Poachers4/merlin_191962749_2f7af14f-4736-439e-84cb-bbcaa2932401-mediumThreeByTwo210.jpg",
          "format": "mediumThreeByTwo210",
          "height": 140,
          "width": 210,
          "type": "image",
          "subtype": "photo",
          "caption": "There are dozens of species of Conophytum in South Africa, many rare or endangered. This is a Conophytum ficiforme plant in bloom near Worcester, South Africa.",
          "copyright": "Tommy Trenchard for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/29/world/00Plant-Poachers4/merlin_191962749_2f7af14f-4736-439e-84cb-bbcaa2932401-articleInline.jpg",
          "format": "Normal",
          "height": 127,
          "width": 190,
          "type": "image",
          "subtype": "photo",
          "caption": "There are dozens of species of Conophytum in South Africa, many rare or endangered. This is a Conophytum ficiforme plant in bloom near Worcester, South Africa.",
          "copyright": "Tommy Trenchard for The New York Times"
        }
      ],
      "short_url": "https://nyti.ms/3yjpixW"
    },
    {
      "section": "world",
      "subsection": "europe",
      "title": "The Long Kiss Goodbye: Will Covid End the French Bise Forever?",
      "abstract": "Social distancing made the cheek kiss a much rarer greeting, and polling suggests it may stay that way. Some say good riddance, but others miss the warmth of times past.",
      "url": "https://www.nytimes.com/2021/07/31/world/europe/covid-france-bise.html",
      "uri": "nyt://article/3c5738d2-bdb5-5f90-9f4d-6d97cc8731b7",
      "byline": "By Gaëlle Fournier",
      "item_type": "Article",
      "updated_date": "2021-07-31T13:21:45-04:00",
      "created_date": "2021-07-31T09:26:47-04:00",
      "published_date": "2021-07-31T09:26:47-04:00",
      "material_type_facet": "",
      "kicker": "",
      "des_facet": [
        "Greeting Gestures",
        "Coronavirus (2019-nCoV)",
        "Kissing",
        "Politics and Government",
        "Epidemics"
      ],
      "org_facet": [
        
      ],
      "per_facet": [
        "Macron, Emmanuel (1977- )"
      ],
      "geo_facet": [
        "France",
        "Europe"
      ],
      "multimedia": [
        {
          "url": "https://static01.nyt.com/images/2021/07/29/world/29France-BISE-01/29France-BISE-01-superJumbo.jpg",
          "format": "superJumbo",
          "height": 1365,
          "width": 2048,
          "type": "image",
          "subtype": "photo",
          "caption": "In 2010, Prime Minister David Cameron of Britain and his wife, Samantha Cameron, greeted President Nicolas Sarkozy of France and his wife, Carla Bruni-Sarkozy, with a bise in London.",
          "copyright": "Carl Court/Agence France-Presse — Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/29/world/29France-BISE-01/29France-BISE-01-thumbStandard.jpg",
          "format": "Standard Thumbnail",
          "height": 75,
          "width": 75,
          "type": "image",
          "subtype": "photo",
          "caption": "In 2010, Prime Minister David Cameron of Britain and his wife, Samantha Cameron, greeted President Nicolas Sarkozy of France and his wife, Carla Bruni-Sarkozy, with a bise in London.",
          "copyright": "Carl Court/Agence France-Presse — Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/29/world/29France-BISE-01/29France-BISE-01-thumbLarge.jpg",
          "format": "thumbLarge",
          "height": 150,
          "width": 150,
          "type": "image",
          "subtype": "photo",
          "caption": "In 2010, Prime Minister David Cameron of Britain and his wife, Samantha Cameron, greeted President Nicolas Sarkozy of France and his wife, Carla Bruni-Sarkozy, with a bise in London.",
          "copyright": "Carl Court/Agence France-Presse — Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/29/world/29France-BISE-01/29France-BISE-01-mediumThreeByTwo210.jpg",
          "format": "mediumThreeByTwo210",
          "height": 140,
          "width": 210,
          "type": "image",
          "subtype": "photo",
          "caption": "In 2010, Prime Minister David Cameron of Britain and his wife, Samantha Cameron, greeted President Nicolas Sarkozy of France and his wife, Carla Bruni-Sarkozy, with a bise in London.",
          "copyright": "Carl Court/Agence France-Presse — Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/29/world/29France-BISE-01/29France-BISE-01-articleInline.jpg",
          "format": "Normal",
          "height": 127,
          "width": 190,
          "type": "image",
          "subtype": "photo",
          "caption": "In 2010, Prime Minister David Cameron of Britain and his wife, Samantha Cameron, greeted President Nicolas Sarkozy of France and his wife, Carla Bruni-Sarkozy, with a bise in London.",
          "copyright": "Carl Court/Agence France-Presse — Getty Images"
        }
      ],
      "short_url": "https://nyti.ms/3jdQ4lk"
    },
    {
      "section": "world",
      "subsection": "asia",
      "title": "Police in China Detain Canadian Pop Star on Suspicion of Rape",
      "abstract": "Kris Wu, a 30-year-old celebrity, is the most prominent figure in China to be held over #MeToo allegations.",
      "url": "https://www.nytimes.com/2021/07/31/world/asia/kris-wu-detain-china-suspicion-rape.html",
      "uri": "nyt://article/202a85dd-c2ed-5178-8dc8-c1098beeb13a",
      "byline": "By Amy Qin and Elsie Chen",
      "item_type": "Article",
      "updated_date": "2021-07-31T12:42:29-04:00",
      "created_date": "2021-07-31T12:42:29-04:00",
      "published_date": "2021-07-31T12:42:29-04:00",
      "material_type_facet": "",
      "kicker": "",
      "des_facet": [
        "#MeToo Movement",
        "Sexual Harassment",
        "K-Pop",
        "Pop and Rock Music",
        "Women's Rights",
        "Workplace Environment"
      ],
      "org_facet": [
        "Bulgari SpA",
        "Louis Vuitton"
      ],
      "per_facet": [
        "Wu, Kris (1990- )",
        "Lu Pin"
      ],
      "geo_facet": [
        "Beijing (China)",
        "Canada"
      ],
      "multimedia": [
        {
          "url": "https://static01.nyt.com/images/2021/07/31/world/31china-metoo/31china-metoo-superJumbo.jpg",
          "format": "superJumbo",
          "height": 1366,
          "width": 2048,
          "type": "image",
          "subtype": "photo",
          "caption": "Kris Wu performing at a music awards show in Toronto in 2018.",
          "copyright": "Christopher Katsarov/The Canadian Press, via Associated Press"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/31/world/31china-metoo/31china-metoo-thumbStandard.jpg",
          "format": "Standard Thumbnail",
          "height": 75,
          "width": 75,
          "type": "image",
          "subtype": "photo",
          "caption": "Kris Wu performing at a music awards show in Toronto in 2018.",
          "copyright": "Christopher Katsarov/The Canadian Press, via Associated Press"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/31/world/31china-metoo/31china-metoo-thumbLarge.jpg",
          "format": "thumbLarge",
          "height": 150,
          "width": 150,
          "type": "image",
          "subtype": "photo",
          "caption": "Kris Wu performing at a music awards show in Toronto in 2018.",
          "copyright": "Christopher Katsarov/The Canadian Press, via Associated Press"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/31/world/31china-metoo/merlin_142856676_d291ddf5-de4e-4e96-8446-dc960fd67886-mediumThreeByTwo210.jpg",
          "format": "mediumThreeByTwo210",
          "height": 140,
          "width": 210,
          "type": "image",
          "subtype": "photo",
          "caption": "Kris Wu performing at a music awards show in Toronto in 2018.",
          "copyright": "Christopher Katsarov/The Canadian Press, via Associated Press"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/31/world/31china-metoo/31china-metoo-articleInline.jpg",
          "format": "Normal",
          "height": 127,
          "width": 190,
          "type": "image",
          "subtype": "photo",
          "caption": "Kris Wu performing at a music awards show in Toronto in 2018.",
          "copyright": "Christopher Katsarov/The Canadian Press, via Associated Press"
        }
      ],
      "short_url": "https://nyti.ms/3yigLeH"
    },
    {
      "section": "world",
      "subsection": "asia",
      "title": "‘It Feels Like We’re Just Waiting to Die’: Hong Kong Targets Student Unions",
      "abstract": "The authorities are clamping down on universities, which they consider hotbeds for unrest. The groups say they are fighting for survival.",
      "url": "https://www.nytimes.com/2021/07/31/world/asia/hong-kong-students.html",
      "uri": "nyt://article/9284a8a4-fe7d-5604-89e5-92fe453d1aa0",
      "byline": "By Vivian Wang",
      "item_type": "Article",
      "updated_date": "2021-07-31T03:27:07-04:00",
      "created_date": "2021-07-31T00:01:10-04:00",
      "published_date": "2021-07-31T00:01:10-04:00",
      "material_type_facet": "",
      "kicker": "",
      "des_facet": [
        "Colleges and Universities",
        "Demonstrations, Protests and Riots",
        "Hong Kong Protests (2019)",
        "Politics and Government"
      ],
      "org_facet": [
        
      ],
      "per_facet": [
        
      ],
      "geo_facet": [
        "Hong Kong",
        "China"
      ],
      "multimedia": [
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/00hongkong-students1/merlin_190923174_0e1f8371-54f3-4cd2-893a-8ef52e999e0c-superJumbo.jpg",
          "format": "superJumbo",
          "height": 1365,
          "width": 2048,
          "type": "image",
          "subtype": "photo",
          "caption": "Police carrying material out of the student union office at the University of Hong Kong on July 16. ",
          "copyright": "Isaac Lawrence/Agence France-Presse — Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/00hongkong-students1/00hongkong-students1-thumbStandard.jpg",
          "format": "Standard Thumbnail",
          "height": 75,
          "width": 75,
          "type": "image",
          "subtype": "photo",
          "caption": "Police carrying material out of the student union office at the University of Hong Kong on July 16. ",
          "copyright": "Isaac Lawrence/Agence France-Presse — Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/00hongkong-students1/00hongkong-students1-thumbLarge.jpg",
          "format": "thumbLarge",
          "height": 150,
          "width": 150,
          "type": "image",
          "subtype": "photo",
          "caption": "Police carrying material out of the student union office at the University of Hong Kong on July 16. ",
          "copyright": "Isaac Lawrence/Agence France-Presse — Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/00hongkong-students1/merlin_190923174_0e1f8371-54f3-4cd2-893a-8ef52e999e0c-mediumThreeByTwo210.jpg",
          "format": "mediumThreeByTwo210",
          "height": 140,
          "width": 210,
          "type": "image",
          "subtype": "photo",
          "caption": "Police carrying material out of the student union office at the University of Hong Kong on July 16. ",
          "copyright": "Isaac Lawrence/Agence France-Presse — Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/00hongkong-students1/merlin_190923174_0e1f8371-54f3-4cd2-893a-8ef52e999e0c-articleInline.jpg",
          "format": "Normal",
          "height": 127,
          "width": 190,
          "type": "image",
          "subtype": "photo",
          "caption": "Police carrying material out of the student union office at the University of Hong Kong on July 16. ",
          "copyright": "Isaac Lawrence/Agence France-Presse — Getty Images"
        }
      ],
      "short_url": "https://nyti.ms/3lf2NXf"
    },
    {
      "section": "world",
      "subsection": "asia",
      "title": "Key Afghan City in Danger of Falling to the Taliban",
      "abstract": "Government reinforcements arrived Saturday in Lashkar Gar, the capital of Helmand Province, but people were fleeing their homes and a hospital in the city had been bombed.",
      "url": "https://www.nytimes.com/2021/07/31/world/asia/afghanistan-taliban-lashkar-gah.html",
      "uri": "nyt://article/99e794eb-200a-5231-9792-6cf0ebcfd9d2",
      "byline": "By Thomas Gibbons-Neff and Taimoor Shah",
      "item_type": "Article",
      "updated_date": "2021-07-31T12:54:03-04:00",
      "created_date": "2021-07-31T10:28:57-04:00",
      "published_date": "2021-07-31T10:28:57-04:00",
      "material_type_facet": "",
      "kicker": "",
      "des_facet": [
        "Civilian Casualties",
        "Terrorism",
        "Afghanistan War (2001- )"
      ],
      "org_facet": [
        "Afghan National Security Forces",
        "Taliban"
      ],
      "per_facet": [
        
      ],
      "geo_facet": [
        "Afghanistan",
        "Helmand Province (Afghanistan)",
        "Herat (Afghanistan)",
        "Kabul (Afghanistan)"
      ],
      "multimedia": [
        {
          "url": "https://static01.nyt.com/images/2021/07/31/world/31afghanistan-helmand-01/merlin_187595676_f8092e1f-c098-4ba7-9f2b-94fb1a3238cc-superJumbo.jpg",
          "format": "superJumbo",
          "height": 1366,
          "width": 2048,
          "type": "image",
          "subtype": "photo",
          "caption": "Lashkar Gah, the besieged capital of Helmand Province, in May this year.",
          "copyright": "Jim Huylebroek for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/31/world/31afghanistan-helmand-01/31afghanistan-helmand-01-thumbStandard.jpg",
          "format": "Standard Thumbnail",
          "height": 75,
          "width": 75,
          "type": "image",
          "subtype": "photo",
          "caption": "Lashkar Gah, the besieged capital of Helmand Province, in May this year.",
          "copyright": "Jim Huylebroek for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/31/world/31afghanistan-helmand-01/31afghanistan-helmand-01-thumbLarge.jpg",
          "format": "thumbLarge",
          "height": 150,
          "width": 150,
          "type": "image",
          "subtype": "photo",
          "caption": "Lashkar Gah, the besieged capital of Helmand Province, in May this year.",
          "copyright": "Jim Huylebroek for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/31/world/31afghanistan-helmand-01/merlin_187595676_f8092e1f-c098-4ba7-9f2b-94fb1a3238cc-mediumThreeByTwo210.jpg",
          "format": "mediumThreeByTwo210",
          "height": 140,
          "width": 210,
          "type": "image",
          "subtype": "photo",
          "caption": "Lashkar Gah, the besieged capital of Helmand Province, in May this year.",
          "copyright": "Jim Huylebroek for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/31/world/31afghanistan-helmand-01/merlin_187595676_f8092e1f-c098-4ba7-9f2b-94fb1a3238cc-articleInline.jpg",
          "format": "Normal",
          "height": 127,
          "width": 190,
          "type": "image",
          "subtype": "photo",
          "caption": "Lashkar Gah, the besieged capital of Helmand Province, in May this year.",
          "copyright": "Jim Huylebroek for The New York Times"
        }
      ],
      "short_url": "https://nyti.ms/3ylCZws"
    },
    {
      "section": "world",
      "subsection": "americas",
      "title": "‘They Thought I Was Dead’: Haitian President’s Widow Recounts Assassination",
      "abstract": "Struck by gunfire, Martine Moïse lay bleeding as the assassins who killed her husband ransacked her room. Now, she says, the F.B.I. must find the mastermind behind the attack.",
      "url": "https://www.nytimes.com/2021/07/30/world/americas/haiti-assassination-martine-moise-interview.html",
      "uri": "nyt://article/93f8f03e-167b-5bd8-a4f6-1278724c2675",
      "byline": "By Frances Robles",
      "item_type": "Article",
      "updated_date": "2021-07-31T00:56:22-04:00",
      "created_date": "2021-07-30T05:06:14-04:00",
      "published_date": "2021-07-30T05:06:14-04:00",
      "material_type_facet": "",
      "kicker": "",
      "des_facet": [
        "Assassinations and Attempted Assassinations",
        "Politics and Government"
      ],
      "org_facet": [
        
      ],
      "per_facet": [
        "Moise, Jovenel (1968- )",
        "Moise, Martine"
      ],
      "geo_facet": [
        "Haiti",
        "Port-au-Prince (Haiti)"
      ],
      "multimedia": [
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30Haiti-1/merlin_191984400_1557981f-9e85-4896-8451-8510ac015274-superJumbo.jpg",
          "format": "superJumbo",
          "height": 2048,
          "width": 1366,
          "type": "image",
          "subtype": "photo",
          "caption": "Martine Moïse, first lady of Haiti, in Florida on Thursday. Her husband’s assassins also shot her in the arm.",
          "copyright": "Maria Alejandra Cardona for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30Haiti-1/30Haiti-1-thumbStandard.jpg",
          "format": "Standard Thumbnail",
          "height": 75,
          "width": 75,
          "type": "image",
          "subtype": "photo",
          "caption": "Martine Moïse, first lady of Haiti, in Florida on Thursday. Her husband’s assassins also shot her in the arm.",
          "copyright": "Maria Alejandra Cardona for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30Haiti-1/30Haiti-1-thumbLarge.jpg",
          "format": "thumbLarge",
          "height": 150,
          "width": 150,
          "type": "image",
          "subtype": "photo",
          "caption": "Martine Moïse, first lady of Haiti, in Florida on Thursday. Her husband’s assassins also shot her in the arm.",
          "copyright": "Maria Alejandra Cardona for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30Haiti-1/30Haiti-1-mediumThreeByTwo210.jpg",
          "format": "mediumThreeByTwo210",
          "height": 140,
          "width": 210,
          "type": "image",
          "subtype": "photo",
          "caption": "Martine Moïse, first lady of Haiti, in Florida on Thursday. Her husband’s assassins also shot her in the arm.",
          "copyright": "Maria Alejandra Cardona for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30Haiti-1/merlin_191984400_1557981f-9e85-4896-8451-8510ac015274-articleInline.jpg",
          "format": "Normal",
          "height": 285,
          "width": 190,
          "type": "image",
          "subtype": "photo",
          "caption": "Martine Moïse, first lady of Haiti, in Florida on Thursday. Her husband’s assassins also shot her in the arm.",
          "copyright": "Maria Alejandra Cardona for The New York Times"
        }
      ],
      "short_url": "https://nyti.ms/3f9wbKY"
    },
    {
      "section": "world",
      "subsection": "middleeast",
      "title": "Murder Trial in Sweden Could Shine Unsavory Light on Iran’s New President",
      "abstract": "Nearly 3,000 miles from Tehran where mass executions were carried out in 1988, a murder trial in Sweden could produce new revelations that complicate life for Iran’s president-elect.",
      "url": "https://www.nytimes.com/2021/07/30/world/middleeast/iran-sweden-trial-raisi.html",
      "uri": "nyt://article/98c5ea47-ff76-510c-bcde-be0ca411e1a4",
      "byline": "By Farnaz Fassihi",
      "item_type": "Article",
      "updated_date": "2021-07-30T22:59:42-04:00",
      "created_date": "2021-07-30T16:59:09-04:00",
      "published_date": "2021-07-30T16:59:09-04:00",
      "material_type_facet": "",
      "kicker": "",
      "des_facet": [
        "Human Rights and Human Rights Violations"
      ],
      "org_facet": [
        "Mujahedeen Khalq"
      ],
      "per_facet": [
        "Raisi, Ebrahim"
      ],
      "geo_facet": [
        "Iran",
        "Sweden"
      ],
      "multimedia": [
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30iran-sweden5/merlin_189697677_ea94bd51-a335-4c6c-bec3-903afee83a55-superJumbo.jpg",
          "format": "superJumbo",
          "height": 1381,
          "width": 2048,
          "type": "image",
          "subtype": "photo",
          "caption": "Iran’s president-elect, Ebrahim Raisi, helped decide which prisoners lived or died during mass executions in 1988. A trial in Sweden may shed more light on his role.",
          "copyright": "West Asia News Agency"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30iran-sweden5/30iran-sweden5-thumbStandard.jpg",
          "format": "Standard Thumbnail",
          "height": 75,
          "width": 75,
          "type": "image",
          "subtype": "photo",
          "caption": "Iran’s president-elect, Ebrahim Raisi, helped decide which prisoners lived or died during mass executions in 1988. A trial in Sweden may shed more light on his role.",
          "copyright": "West Asia News Agency"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30iran-sweden5/30iran-sweden5-thumbLarge.jpg",
          "format": "thumbLarge",
          "height": 150,
          "width": 150,
          "type": "image",
          "subtype": "photo",
          "caption": "Iran’s president-elect, Ebrahim Raisi, helped decide which prisoners lived or died during mass executions in 1988. A trial in Sweden may shed more light on his role.",
          "copyright": "West Asia News Agency"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30iran-sweden5/30iran-sweden5-mediumThreeByTwo210.jpg",
          "format": "mediumThreeByTwo210",
          "height": 140,
          "width": 210,
          "type": "image",
          "subtype": "photo",
          "caption": "Iran’s president-elect, Ebrahim Raisi, helped decide which prisoners lived or died during mass executions in 1988. A trial in Sweden may shed more light on his role.",
          "copyright": "West Asia News Agency"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30iran-sweden5/merlin_189697677_ea94bd51-a335-4c6c-bec3-903afee83a55-articleInline.jpg",
          "format": "Normal",
          "height": 128,
          "width": 190,
          "type": "image",
          "subtype": "photo",
          "caption": "Iran’s president-elect, Ebrahim Raisi, helped decide which prisoners lived or died during mass executions in 1988. A trial in Sweden may shed more light on his role.",
          "copyright": "West Asia News Agency"
        }
      ],
      "short_url": "https://nyti.ms/2UYYViI"
    },
    {
      "section": "world",
      "subsection": "canada",
      "title": "The Indigenous Archaeologist Tracking Down the Missing Residential Children",
      "abstract": "Kisha Supernant has brought radar technology to the search for burial sites in Canada while she works to reshape her profession’s relationship with Indigenous communities.",
      "url": "https://www.nytimes.com/2021/07/30/world/canada/indigenous-archaeologist-graves-school-children.html",
      "uri": "nyt://article/b7f5c59a-c323-54fd-b980-a06c2f4ec668",
      "byline": "By Ian Austen",
      "item_type": "Article",
      "updated_date": "2021-07-31T11:26:11-04:00",
      "created_date": "2021-07-30T05:00:23-04:00",
      "published_date": "2021-07-30T05:00:23-04:00",
      "material_type_facet": "",
      "kicker": "The Saturday Profile",
      "des_facet": [
        "Indigenous People",
        "Archaeology and Anthropology",
        "Radar"
      ],
      "org_facet": [
        
      ],
      "per_facet": [
        
      ],
      "geo_facet": [
        "Canada",
        "British Columbia (Canada)"
      ],
      "multimedia": [
        {
          "url": "https://static01.nyt.com/images/2021/07/26/world/00canada-supernant2/00canada-supernant2-superJumbo.jpg",
          "format": "superJumbo",
          "height": 1365,
          "width": 2048,
          "type": "image",
          "subtype": "photo",
          "caption": "Professor Supernant’s beaded pin was created by a Métis artist.",
          "copyright": "Amber Bracken for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/26/world/00canada-supernant2/00canada-supernant2-thumbStandard.jpg",
          "format": "Standard Thumbnail",
          "height": 75,
          "width": 75,
          "type": "image",
          "subtype": "photo",
          "caption": "Professor Supernant’s beaded pin was created by a Métis artist.",
          "copyright": "Amber Bracken for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/26/world/00canada-supernant2/00canada-supernant2-thumbLarge.jpg",
          "format": "thumbLarge",
          "height": 150,
          "width": 150,
          "type": "image",
          "subtype": "photo",
          "caption": "Professor Supernant’s beaded pin was created by a Métis artist.",
          "copyright": "Amber Bracken for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/26/world/00canada-supernant2/00canada-supernant2-mediumThreeByTwo210.jpg",
          "format": "mediumThreeByTwo210",
          "height": 140,
          "width": 210,
          "type": "image",
          "subtype": "photo",
          "caption": "Professor Supernant’s beaded pin was created by a Métis artist.",
          "copyright": "Amber Bracken for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/26/world/00canada-supernant2/00canada-supernant2-articleInline.jpg",
          "format": "Normal",
          "height": 127,
          "width": 190,
          "type": "image",
          "subtype": "photo",
          "caption": "Professor Supernant’s beaded pin was created by a Métis artist.",
          "copyright": "Amber Bracken for The New York Times"
        }
      ],
      "short_url": "https://nyti.ms/3zOixok"
    },
    {
      "section": "world",
      "subsection": "asia",
      "title": "Hong Kong Protester Is Sentenced to 9 Years in First Security Law Case",
      "abstract": "Tong Ying-kit, 24, who drove a motorcycle into police officers while carrying a protest flag, was convicted of terrorism and inciting secession.",
      "url": "https://www.nytimes.com/2021/07/30/world/asia/hong-kong-protester-security-law.html",
      "uri": "nyt://article/a682b84f-04dc-5a71-a190-b40a974919ad",
      "byline": "By Austin Ramzy",
      "item_type": "Article",
      "updated_date": "2021-07-30T23:01:17-04:00",
      "created_date": "2021-07-30T03:13:15-04:00",
      "published_date": "2021-07-30T03:13:15-04:00",
      "material_type_facet": "",
      "kicker": "",
      "des_facet": [
        "Hong Kong Protests (2019)"
      ],
      "org_facet": [
        
      ],
      "per_facet": [
        
      ],
      "geo_facet": [
        "Hong Kong",
        "China"
      ],
      "multimedia": [
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30hongkong-trial1/30hongkong-trial1-superJumbo.jpg",
          "format": "superJumbo",
          "height": 1364,
          "width": 2048,
          "type": "image",
          "subtype": "photo",
          "caption": "A van took Tong Ying-kit to a Hong Kong courthouse on Friday for his sentencing.",
          "copyright": "Miguel Candela/EPA, via Shutterstock"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30hongkong-trial1/30hongkong-trial1-thumbStandard.jpg",
          "format": "Standard Thumbnail",
          "height": 75,
          "width": 75,
          "type": "image",
          "subtype": "photo",
          "caption": "A van took Tong Ying-kit to a Hong Kong courthouse on Friday for his sentencing.",
          "copyright": "Miguel Candela/EPA, via Shutterstock"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30hongkong-trial1/30hongkong-trial1-thumbLarge.jpg",
          "format": "thumbLarge",
          "height": 150,
          "width": 150,
          "type": "image",
          "subtype": "photo",
          "caption": "A van took Tong Ying-kit to a Hong Kong courthouse on Friday for his sentencing.",
          "copyright": "Miguel Candela/EPA, via Shutterstock"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30hongkong-trial1/30hongkong-trial1-mediumThreeByTwo210.jpg",
          "format": "mediumThreeByTwo210",
          "height": 140,
          "width": 210,
          "type": "image",
          "subtype": "photo",
          "caption": "A van took Tong Ying-kit to a Hong Kong courthouse on Friday for his sentencing.",
          "copyright": "Miguel Candela/EPA, via Shutterstock"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30hongkong-trial1/30hongkong-trial1-articleInline.jpg",
          "format": "Normal",
          "height": 127,
          "width": 190,
          "type": "image",
          "subtype": "photo",
          "caption": "A van took Tong Ying-kit to a Hong Kong courthouse on Friday for his sentencing.",
          "copyright": "Miguel Candela/EPA, via Shutterstock"
        }
      ],
      "short_url": "https://nyti.ms/376iGXS"
    },
    {
      "section": "world",
      "subsection": "europe",
      "title": "Spanish Court Targets Chilean Bank Tied to Pinochet",
      "abstract": "Spurred by victims of Gen. Augusto Pinochet’s regime, the court  has reopened an investigation into whether Banco de Chile helped the former Chilean dictator launder money.",
      "url": "https://www.nytimes.com/2021/07/30/world/europe/pinochet-banco-de-chile.html",
      "uri": "nyt://article/253c6f8e-426d-501c-8aad-443627c64ebb",
      "byline": "By Raphael Minder",
      "item_type": "Article",
      "updated_date": "2021-07-30T23:02:23-04:00",
      "created_date": "2021-07-30T12:29:08-04:00",
      "published_date": "2021-07-30T12:29:08-04:00",
      "material_type_facet": "",
      "kicker": "",
      "des_facet": [
        "Money Laundering",
        "Politics and Government",
        "Suits and Litigation (Civil)"
      ],
      "org_facet": [
        "Banco de Chile",
        "National Court (Spain)"
      ],
      "per_facet": [
        "Pinochet Ugarte, Augusto"
      ],
      "geo_facet": [
        "Chile",
        "Spain"
      ],
      "multimedia": [
        {
          "url": "https://static01.nyt.com/images/2021/06/22/world/22pinochet-01/merlin_159478617_a4ac89e0-87ce-42fc-bf62-9ef1ed30cfcc-superJumbo.jpg",
          "format": "superJumbo",
          "height": 1560,
          "width": 2048,
          "type": "image",
          "subtype": "photo",
          "caption": "Gen. Augusto Pinochet in Santiago, Chile, in 1997. He died in 2006.",
          "copyright": "Cris Bouroncle/Agence France-Presse — Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/06/22/world/22pinochet-01/22pinochet-01-thumbStandard.jpg",
          "format": "Standard Thumbnail",
          "height": 75,
          "width": 75,
          "type": "image",
          "subtype": "photo",
          "caption": "Gen. Augusto Pinochet in Santiago, Chile, in 1997. He died in 2006.",
          "copyright": "Cris Bouroncle/Agence France-Presse — Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/06/22/world/22pinochet-01/22pinochet-01-thumbLarge.jpg",
          "format": "thumbLarge",
          "height": 150,
          "width": 150,
          "type": "image",
          "subtype": "photo",
          "caption": "Gen. Augusto Pinochet in Santiago, Chile, in 1997. He died in 2006.",
          "copyright": "Cris Bouroncle/Agence France-Presse — Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/06/22/world/22pinochet-01/22pinochet-01-mediumThreeByTwo210.jpg",
          "format": "mediumThreeByTwo210",
          "height": 140,
          "width": 210,
          "type": "image",
          "subtype": "photo",
          "caption": "Gen. Augusto Pinochet in Santiago, Chile, in 1997. He died in 2006.",
          "copyright": "Cris Bouroncle/Agence France-Presse — Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/06/22/world/22pinochet-01/merlin_159478617_a4ac89e0-87ce-42fc-bf62-9ef1ed30cfcc-articleInline.jpg",
          "format": "Normal",
          "height": 145,
          "width": 190,
          "type": "image",
          "subtype": "photo",
          "caption": "Gen. Augusto Pinochet in Santiago, Chile, in 1997. He died in 2006.",
          "copyright": "Cris Bouroncle/Agence France-Presse — Getty Images"
        }
      ],
      "short_url": "https://nyti.ms/3ffBgBj"
    },
    {
      "section": "world",
      "subsection": "middleeast",
      "title": "Israeli Officials Say Iran Is Behind Deadly Attack on Oil Tanker",
      "abstract": "Drones carried out the attack on a tanker managed by an Israeli-led firm, killing two people, officials said — apparently the latest in a series of maritime clashes between Iran and Israel.",
      "url": "https://www.nytimes.com/2021/07/30/world/middleeast/tanker-attack-oman.html",
      "uri": "nyt://article/d07166cf-b392-5c79-b4ca-a2d52828add7",
      "byline": "By Patrick Kingsley and Ronen Bergman",
      "item_type": "Article",
      "updated_date": "2021-07-30T23:00:27-04:00",
      "created_date": "2021-07-30T09:58:44-04:00",
      "published_date": "2021-07-30T09:58:44-04:00",
      "material_type_facet": "",
      "kicker": "",
      "des_facet": [
        "Defense and Military Forces",
        "Politics and Government",
        "Ships and Shipping",
        "Piracy at Sea",
        "War and Armed Conflicts",
        "Drones (Pilotless Planes)"
      ],
      "org_facet": [
        
      ],
      "per_facet": [
        
      ],
      "geo_facet": [
        "Israel",
        "Iran",
        "Oman",
        "Middle East"
      ],
      "multimedia": [
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30Israel-ship/merlin_192073275_eb7f04bd-5116-43a6-9091-86e3252855bf-superJumbo.jpg",
          "format": "superJumbo",
          "height": 1278,
          "width": 2048,
          "type": "image",
          "subtype": "photo",
          "caption": "The tanker Mercer Street in 2016 off the coast of South Africa. It was attacked Thursday night near Oman.",
          "copyright": "Johan Victor/Johan Victor, via Associated Press"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30Israel-ship/30Israel-ship-thumbStandard.jpg",
          "format": "Standard Thumbnail",
          "height": 75,
          "width": 75,
          "type": "image",
          "subtype": "photo",
          "caption": "The tanker Mercer Street in 2016 off the coast of South Africa. It was attacked Thursday night near Oman.",
          "copyright": "Johan Victor/Johan Victor, via Associated Press"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30Israel-ship/30Israel-ship-thumbLarge.jpg",
          "format": "thumbLarge",
          "height": 150,
          "width": 150,
          "type": "image",
          "subtype": "photo",
          "caption": "The tanker Mercer Street in 2016 off the coast of South Africa. It was attacked Thursday night near Oman.",
          "copyright": "Johan Victor/Johan Victor, via Associated Press"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30Israel-ship/30Israel-ship-mediumThreeByTwo210.jpg",
          "format": "mediumThreeByTwo210",
          "height": 140,
          "width": 210,
          "type": "image",
          "subtype": "photo",
          "caption": "The tanker Mercer Street in 2016 off the coast of South Africa. It was attacked Thursday night near Oman.",
          "copyright": "Johan Victor/Johan Victor, via Associated Press"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30Israel-ship/merlin_192073275_eb7f04bd-5116-43a6-9091-86e3252855bf-articleInline.jpg",
          "format": "Normal",
          "height": 119,
          "width": 190,
          "type": "image",
          "subtype": "photo",
          "caption": "The tanker Mercer Street in 2016 off the coast of South Africa. It was attacked Thursday night near Oman.",
          "copyright": "Johan Victor/Johan Victor, via Associated Press"
        }
      ],
      "short_url": "https://nyti.ms/2V4aPYs"
    },
    {
      "section": "world",
      "subsection": "europe",
      "title": "Greece Accuses Aid Groups of Helping Smugglers of Migrants",
      "abstract": "Greek police claim some groups have worked with smugglers and provided migrants with details about Coast Guard activities. The groups deny the charges.",
      "url": "https://www.nytimes.com/2021/07/30/world/europe/greece-migrants-aid-groups.html",
      "uri": "nyt://article/8be3a6bf-32c6-5d87-a498-d09d5b4a76fb",
      "byline": "By Niki Kitsantonis",
      "item_type": "Article",
      "updated_date": "2021-07-30T23:03:40-04:00",
      "created_date": "2021-07-30T12:07:05-04:00",
      "published_date": "2021-07-30T12:07:05-04:00",
      "material_type_facet": "",
      "kicker": "",
      "des_facet": [
        "Middle East and Africa Migrant Crisis",
        "Politics and Government",
        "Smuggling",
        "Immigration and Emigration",
        "Humanitarian Aid"
      ],
      "org_facet": [
        
      ],
      "per_facet": [
        
      ],
      "geo_facet": [
        "Aegean Sea",
        "Greece"
      ],
      "multimedia": [
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30greece-espionage-01/merlin_136346322_f1452954-a8a5-4cb1-ac66-f8d5fcd31943-superJumbo.jpg",
          "format": "superJumbo",
          "height": 1365,
          "width": 2048,
          "type": "image",
          "subtype": "photo",
          "caption": "Discarded life vests, inner tubes and rubber rafts, used by refugees to cross into Greece from Turkey, on the Greek island of Lesbos in 2015.",
          "copyright": "Mauricio Lima for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30greece-espionage-01/merlin_136346322_f1452954-a8a5-4cb1-ac66-f8d5fcd31943-thumbStandard.jpg",
          "format": "Standard Thumbnail",
          "height": 75,
          "width": 75,
          "type": "image",
          "subtype": "photo",
          "caption": "Discarded life vests, inner tubes and rubber rafts, used by refugees to cross into Greece from Turkey, on the Greek island of Lesbos in 2015.",
          "copyright": "Mauricio Lima for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30greece-espionage-01/merlin_136346322_f1452954-a8a5-4cb1-ac66-f8d5fcd31943-thumbLarge.jpg",
          "format": "thumbLarge",
          "height": 150,
          "width": 150,
          "type": "image",
          "subtype": "photo",
          "caption": "Discarded life vests, inner tubes and rubber rafts, used by refugees to cross into Greece from Turkey, on the Greek island of Lesbos in 2015.",
          "copyright": "Mauricio Lima for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30greece-espionage-01/merlin_136346322_f1452954-a8a5-4cb1-ac66-f8d5fcd31943-mediumThreeByTwo210.jpg",
          "format": "mediumThreeByTwo210",
          "height": 140,
          "width": 210,
          "type": "image",
          "subtype": "photo",
          "caption": "Discarded life vests, inner tubes and rubber rafts, used by refugees to cross into Greece from Turkey, on the Greek island of Lesbos in 2015.",
          "copyright": "Mauricio Lima for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30greece-espionage-01/merlin_136346322_f1452954-a8a5-4cb1-ac66-f8d5fcd31943-articleInline.jpg",
          "format": "Normal",
          "height": 127,
          "width": 190,
          "type": "image",
          "subtype": "photo",
          "caption": "Discarded life vests, inner tubes and rubber rafts, used by refugees to cross into Greece from Turkey, on the Greek island of Lesbos in 2015.",
          "copyright": "Mauricio Lima for The New York Times"
        }
      ],
      "short_url": "https://nyti.ms/37gKMzz"
    },
    {
      "section": "us",
      "subsection": "politics",
      "title": "Biden Promised to Restore the Iran Nuclear Deal. Now It Risks Derailment.",
      "abstract": "Both sides have much to lose if a delicate negotiation over limiting Iran’s activities in return for a lifting of sanctions falls short.",
      "url": "https://www.nytimes.com/2021/07/31/us/politics/biden-iran-nuclear-deal.html",
      "uri": "nyt://article/b44e04b9-b8b6-51fc-8fd9-da44a1d7d2b8",
      "byline": "By David E. Sanger, Lara Jakes and Farnaz Fassihi",
      "item_type": "Article",
      "updated_date": "2021-07-31T11:45:46-04:00",
      "created_date": "2021-07-31T11:45:46-04:00",
      "published_date": "2021-07-31T11:45:46-04:00",
      "material_type_facet": "",
      "kicker": "",
      "des_facet": [
        "United States International Relations",
        "Arms Control and Limitation and Disarmament",
        "Nuclear Weapons"
      ],
      "org_facet": [
        "International Atomic Energy Agency"
      ],
      "per_facet": [
        "Biden, Joseph R Jr",
        "Blinken, Antony J",
        "Khamenei, Ali",
        "Zarif, Mohammad Javad",
        "Trump, Donald J"
      ],
      "geo_facet": [
        "Iran",
        "United States"
      ],
      "multimedia": [
        {
          "url": "https://static01.nyt.com/images/2021/07/30/us/politics/00dc-nukes1/merlin_192100665_525b34d4-7d12-45ff-9288-067ee0df013a-superJumbo.jpg",
          "format": "superJumbo",
          "height": 1365,
          "width": 2048,
          "type": "image",
          "subtype": "photo",
          "caption": "The Biden administration’s approach to a nuclear deal has become complicated with the election of a new conservative leader in Iran.",
          "copyright": "Sarahbeth Maney/The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/us/politics/00dc-nukes1/00dc-nukes1-thumbStandard.jpg",
          "format": "Standard Thumbnail",
          "height": 75,
          "width": 75,
          "type": "image",
          "subtype": "photo",
          "caption": "The Biden administration’s approach to a nuclear deal has become complicated with the election of a new conservative leader in Iran.",
          "copyright": "Sarahbeth Maney/The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/us/politics/00dc-nukes1/00dc-nukes1-thumbLarge.jpg",
          "format": "thumbLarge",
          "height": 150,
          "width": 150,
          "type": "image",
          "subtype": "photo",
          "caption": "The Biden administration’s approach to a nuclear deal has become complicated with the election of a new conservative leader in Iran.",
          "copyright": "Sarahbeth Maney/The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/us/politics/00dc-nukes1/merlin_192100665_525b34d4-7d12-45ff-9288-067ee0df013a-mediumThreeByTwo210.jpg",
          "format": "mediumThreeByTwo210",
          "height": 140,
          "width": 210,
          "type": "image",
          "subtype": "photo",
          "caption": "The Biden administration’s approach to a nuclear deal has become complicated with the election of a new conservative leader in Iran.",
          "copyright": "Sarahbeth Maney/The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/us/politics/00dc-nukes1/merlin_192100665_525b34d4-7d12-45ff-9288-067ee0df013a-articleInline.jpg",
          "format": "Normal",
          "height": 127,
          "width": 190,
          "type": "image",
          "subtype": "photo",
          "caption": "The Biden administration’s approach to a nuclear deal has become complicated with the election of a new conservative leader in Iran.",
          "copyright": "Sarahbeth Maney/The New York Times"
        }
      ],
      "short_url": "https://nyti.ms/3jebqPw"
    },
    {
      "section": "us",
      "subsection": "",
      "title": "Stranded Killer Whale Survives With Help of Good Samaritans",
      "abstract": "Rescuers and wildlife officials kept it cool and wet while waiting for a rising tide. The orca returned to sea about six hours after it was spotted on the rugged shores of an Alaskan island.",
      "url": "https://www.nytimes.com/2021/07/31/us/alaska-stranded-orca-whale.html",
      "uri": "nyt://article/33c615a3-6ea8-51cc-af27-be8407e90108",
      "byline": "By Alyssa Lukpat and Jacey Fortin",
      "item_type": "Article",
      "updated_date": "2021-07-31T13:03:17-04:00",
      "created_date": "2021-07-31T10:34:17-04:00",
      "published_date": "2021-07-31T10:34:17-04:00",
      "material_type_facet": "",
      "kicker": "",
      "des_facet": [
        "Whales and Whaling"
      ],
      "org_facet": [
        
      ],
      "per_facet": [
        
      ],
      "geo_facet": [
        "Prince of Wales Island (Alaska)",
        "Alaska"
      ],
      "multimedia": [
        {
          "url": "https://static01.nyt.com/images/2021/07/30/multimedia/30xp-Orca/30xp-Orca-superJumbo.jpg",
          "format": "superJumbo",
          "height": 800,
          "width": 1200,
          "type": "image",
          "subtype": "photo",
          "caption": "An orca stranded on the rocky shore near Prince of Wales Island in Alaska. The tide eventually came in and it swam away.",
          "copyright": "Captain Chance Strickland and Crew of M/V Steadfast, via NOAA Fisheries."
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/multimedia/30xp-Orca/30xp-Orca-thumbStandard.jpg",
          "format": "Standard Thumbnail",
          "height": 75,
          "width": 75,
          "type": "image",
          "subtype": "photo",
          "caption": "An orca stranded on the rocky shore near Prince of Wales Island in Alaska. The tide eventually came in and it swam away.",
          "copyright": "Captain Chance Strickland and Crew of M/V Steadfast, via NOAA Fisheries."
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/multimedia/30xp-Orca/30xp-Orca-thumbLarge.jpg",
          "format": "thumbLarge",
          "height": 150,
          "width": 150,
          "type": "image",
          "subtype": "photo",
          "caption": "An orca stranded on the rocky shore near Prince of Wales Island in Alaska. The tide eventually came in and it swam away.",
          "copyright": "Captain Chance Strickland and Crew of M/V Steadfast, via NOAA Fisheries."
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/multimedia/30xp-Orca/30xp-Orca-mediumThreeByTwo210.jpg",
          "format": "mediumThreeByTwo210",
          "height": 140,
          "width": 210,
          "type": "image",
          "subtype": "photo",
          "caption": "An orca stranded on the rocky shore near Prince of Wales Island in Alaska. The tide eventually came in and it swam away.",
          "copyright": "Captain Chance Strickland and Crew of M/V Steadfast, via NOAA Fisheries."
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/multimedia/30xp-Orca/30xp-Orca-articleInline.jpg",
          "format": "Normal",
          "height": 127,
          "width": 190,
          "type": "image",
          "subtype": "photo",
          "caption": "An orca stranded on the rocky shore near Prince of Wales Island in Alaska. The tide eventually came in and it swam away.",
          "copyright": "Captain Chance Strickland and Crew of M/V Steadfast, via NOAA Fisheries."
        }
      ],
      "short_url": "https://nyti.ms/3xdxqi7"
    },
    {
      "section": "world",
      "subsection": "",
      "title": "‘The war has changed.’ In just days, the U.S. shifts tactics against the virus.",
      "abstract": "Delta-driven surges are prompting new measures from the federal government, states and cities, companies and the military, as well as defiant rejections.",
      "url": "https://www.nytimes.com/2021/07/31/world/coronavirus-mandate-mask-vaccine.html",
      "uri": "nyt://article/b53237e2-fac6-59d3-9135-c7403a610b91",
      "byline": "By Lauren McCarthy",
      "item_type": "Article",
      "updated_date": "2021-07-31T13:24:02-04:00",
      "created_date": "2021-07-31T09:37:33-04:00",
      "published_date": "2021-07-31T09:37:33-04:00",
      "material_type_facet": "",
      "kicker": "",
      "des_facet": [
        "Masks",
        "Coronavirus (2019-nCoV)",
        "Government Employees",
        "Vaccination and Immunization"
      ],
      "org_facet": [
        
      ],
      "per_facet": [
        "Biden, Joseph R Jr"
      ],
      "geo_facet": [
        
      ],
      "multimedia": [
        {
          "url": "https://static01.nyt.com/images/2021/07/31/lens/31virus-briefing-delta-fallout/merlin_191723658_82538cf5-cf53-4dde-9c09-3ecf0bd6c1b1-superJumbo.jpg",
          "format": "superJumbo",
          "height": 1365,
          "width": 2048,
          "type": "image",
          "subtype": "photo",
          "caption": "A commuter wearing a face mask arriving in downtown Chicago on Tuesday.",
          "copyright": "Scott Olson/Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/31/lens/31virus-briefing-delta-fallout/31virus-briefing-delta-fallout-thumbStandard.jpg",
          "format": "Standard Thumbnail",
          "height": 75,
          "width": 75,
          "type": "image",
          "subtype": "photo",
          "caption": "A commuter wearing a face mask arriving in downtown Chicago on Tuesday.",
          "copyright": "Scott Olson/Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/31/lens/31virus-briefing-delta-fallout/31virus-briefing-delta-fallout-thumbLarge.jpg",
          "format": "thumbLarge",
          "height": 150,
          "width": 150,
          "type": "image",
          "subtype": "photo",
          "caption": "A commuter wearing a face mask arriving in downtown Chicago on Tuesday.",
          "copyright": "Scott Olson/Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/31/lens/31virus-briefing-delta-fallout/merlin_191723658_82538cf5-cf53-4dde-9c09-3ecf0bd6c1b1-mediumThreeByTwo210.jpg",
          "format": "mediumThreeByTwo210",
          "height": 140,
          "width": 210,
          "type": "image",
          "subtype": "photo",
          "caption": "A commuter wearing a face mask arriving in downtown Chicago on Tuesday.",
          "copyright": "Scott Olson/Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/31/lens/31virus-briefing-delta-fallout/merlin_191723658_82538cf5-cf53-4dde-9c09-3ecf0bd6c1b1-articleInline.jpg",
          "format": "Normal",
          "height": 127,
          "width": 190,
          "type": "image",
          "subtype": "photo",
          "caption": "A commuter wearing a face mask arriving in downtown Chicago on Tuesday.",
          "copyright": "Scott Olson/Getty Images"
        }
      ],
      "short_url": "https://nyti.ms/2UZA8Ln"
    },
    {
      "section": "us",
      "subsection": "",
      "title": "Mourning Families Seek Solace From the ‘Grief Purgatory’ of Covid-19",
      "abstract": "The pandemic has left hundreds of thousands of Americans alone in bereavement, unable to plan proper funerals for their loved ones. Now, they’re planning larger celebrations of life.",
      "url": "https://www.nytimes.com/2021/07/31/us/coronavirus-grief-funerals.html",
      "uri": "nyt://article/83f37f86-80e3-5667-ba62-3f24d5d50c6c",
      "byline": "By Eduardo Medina",
      "item_type": "Article",
      "updated_date": "2021-07-31T10:09:15-04:00",
      "created_date": "2021-07-31T09:00:07-04:00",
      "published_date": "2021-07-31T09:00:07-04:00",
      "material_type_facet": "",
      "kicker": "",
      "des_facet": [
        "Coronavirus (2019-nCoV)",
        "Funerals and Memorials",
        "Quarantine (Life and Culture)",
        "Grief (Emotion)",
        "Death and Dying",
        "Anxiety and Stress"
      ],
      "org_facet": [
        
      ],
      "per_facet": [
        
      ],
      "geo_facet": [
        "United States"
      ],
      "multimedia": [
        {
          "url": "https://static01.nyt.com/images/2021/07/23/multimedia/00XP-virus-01/merlin_191247783_6e7037a5-a4fb-4ccf-870a-c5dc04116ed3-superJumbo.jpg",
          "format": "superJumbo",
          "height": 1365,
          "width": 2048,
          "type": "image",
          "subtype": "photo",
          "caption": "Jessica Zimmerman-Selvidge holding a drawing of her father, Ralph Zimmerman, who died at the height of the pandemic.",
          "copyright": "Joseph Rushmore for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/23/multimedia/00XP-virus-01/00XP-virus-01-thumbStandard.jpg",
          "format": "Standard Thumbnail",
          "height": 75,
          "width": 75,
          "type": "image",
          "subtype": "photo",
          "caption": "Jessica Zimmerman-Selvidge holding a drawing of her father, Ralph Zimmerman, who died at the height of the pandemic.",
          "copyright": "Joseph Rushmore for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/23/multimedia/00XP-virus-01/00XP-virus-01-thumbLarge.jpg",
          "format": "thumbLarge",
          "height": 150,
          "width": 150,
          "type": "image",
          "subtype": "photo",
          "caption": "Jessica Zimmerman-Selvidge holding a drawing of her father, Ralph Zimmerman, who died at the height of the pandemic.",
          "copyright": "Joseph Rushmore for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/23/multimedia/00XP-virus-01/merlin_191247783_6e7037a5-a4fb-4ccf-870a-c5dc04116ed3-mediumThreeByTwo210.jpg",
          "format": "mediumThreeByTwo210",
          "height": 140,
          "width": 210,
          "type": "image",
          "subtype": "photo",
          "caption": "Jessica Zimmerman-Selvidge holding a drawing of her father, Ralph Zimmerman, who died at the height of the pandemic.",
          "copyright": "Joseph Rushmore for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/23/multimedia/00XP-virus-01/merlin_191247783_6e7037a5-a4fb-4ccf-870a-c5dc04116ed3-articleInline.jpg",
          "format": "Normal",
          "height": 127,
          "width": 190,
          "type": "image",
          "subtype": "photo",
          "caption": "Jessica Zimmerman-Selvidge holding a drawing of her father, Ralph Zimmerman, who died at the height of the pandemic.",
          "copyright": "Joseph Rushmore for The New York Times"
        }
      ],
      "short_url": "https://nyti.ms/3ygx7EK"
    },
    {
      "section": "sports",
      "subsection": "baseball",
      "title": "After 670 Days, the Blue Jays Finally Returned to Canada",
      "abstract": "With a pandemic-forced sojourn to Buffalo and Florida now complete, Toronto’s exciting young team got a chance to experience its actual home crowd.",
      "url": "https://www.nytimes.com/2021/07/31/sports/baseball/toronto-blue-jays-canada.html",
      "uri": "nyt://article/c5b219cb-b413-5b0e-a7a0-d567cfa0ee76",
      "byline": "By Alex Wong",
      "item_type": "Article",
      "updated_date": "2021-07-31T06:51:19-04:00",
      "created_date": "2021-07-31T06:51:19-04:00",
      "published_date": "2021-07-31T06:51:19-04:00",
      "material_type_facet": "",
      "kicker": "",
      "des_facet": [
        "Baseball",
        "Stadiums and Arenas"
      ],
      "org_facet": [
        "Toronto Blue Jays"
      ],
      "per_facet": [
        "Guerrero, Vladimir Jr (1999- )",
        "Springer, George (1989- )",
        "Bichette, Bo (1998- )",
        "Shapiro, Mark (1967- )"
      ],
      "geo_facet": [
        "Canada"
      ],
      "multimedia": [
        {
          "url": "https://static01.nyt.com/images/2021/07/31/sports/31mlb-bluejays-1/merlin_192111810_5bc6e15e-24e5-48c3-b6ac-5ef6f26378e7-superJumbo.jpg",
          "format": "superJumbo",
          "height": 1307,
          "width": 2048,
          "type": "image",
          "subtype": "photo",
          "caption": "A crowd of 13,446 attended the Toronto Blue Jays’ win over the Kansas City Royals on Friday. It was the first regular season game in Toronto since 2019.",
          "copyright": "Vaughn Ridley/Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/31/sports/31mlb-bluejays-1/31mlb-bluejays-1-thumbStandard.jpg",
          "format": "Standard Thumbnail",
          "height": 75,
          "width": 75,
          "type": "image",
          "subtype": "photo",
          "caption": "A crowd of 13,446 attended the Toronto Blue Jays’ win over the Kansas City Royals on Friday. It was the first regular season game in Toronto since 2019.",
          "copyright": "Vaughn Ridley/Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/31/sports/31mlb-bluejays-1/31mlb-bluejays-1-thumbLarge.jpg",
          "format": "thumbLarge",
          "height": 150,
          "width": 150,
          "type": "image",
          "subtype": "photo",
          "caption": "A crowd of 13,446 attended the Toronto Blue Jays’ win over the Kansas City Royals on Friday. It was the first regular season game in Toronto since 2019.",
          "copyright": "Vaughn Ridley/Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/31/sports/31mlb-bluejays-1/31mlb-bluejays-1-mediumThreeByTwo210.jpg",
          "format": "mediumThreeByTwo210",
          "height": 140,
          "width": 210,
          "type": "image",
          "subtype": "photo",
          "caption": "A crowd of 13,446 attended the Toronto Blue Jays’ win over the Kansas City Royals on Friday. It was the first regular season game in Toronto since 2019.",
          "copyright": "Vaughn Ridley/Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/31/sports/31mlb-bluejays-1/merlin_192111810_5bc6e15e-24e5-48c3-b6ac-5ef6f26378e7-articleInline.jpg",
          "format": "Normal",
          "height": 121,
          "width": 190,
          "type": "image",
          "subtype": "photo",
          "caption": "A crowd of 13,446 attended the Toronto Blue Jays’ win over the Kansas City Royals on Friday. It was the first regular season game in Toronto since 2019.",
          "copyright": "Vaughn Ridley/Getty Images"
        }
      ],
      "short_url": "https://nyti.ms/2TJ0dxq"
    },
    {
      "section": "world",
      "subsection": "canada",
      "title": "Three Members of the Olympic Refugee Team Will Soon Call Canada Home",
      "abstract": "The athletes will join another 150 refugee students selected who were accepted to one of 80 participating institutions this fall.",
      "url": "https://www.nytimes.com/2021/07/30/world/canada/canada-olympics-refugees.html",
      "uri": "nyt://article/dcad5870-aa87-5515-93dd-b52cc6bc1ebc",
      "byline": "By Vjosa Isai",
      "item_type": "Article",
      "updated_date": "2021-07-30T18:15:26-04:00",
      "created_date": "2021-07-30T17:43:48-04:00",
      "published_date": "2021-07-30T17:43:48-04:00",
      "material_type_facet": "",
      "kicker": "Canada Letter",
      "des_facet": [
        "Olympic Games (2020)",
        "Refugees and Displaced Persons"
      ],
      "org_facet": [
        "International Olympic Committee"
      ],
      "per_facet": [
        "Bandura, Albert (1925-2021)"
      ],
      "geo_facet": [
        "Canada"
      ],
      "multimedia": [
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30CANADA-LETTER-LOKORO/30CANADA-LETTER-LOKORO-superJumbo.jpg",
          "format": "superJumbo",
          "height": 1366,
          "width": 2048,
          "type": "image",
          "subtype": "photo",
          "caption": "Paulo Amotun Lokoro, right, and Yiech Pur Biel, both middle-distance runners from South Sudan, in Rio de Janeiro in 2016. ",
          "copyright": "James Hill for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30CANADA-LETTER-LOKORO/30CANADA-LETTER-LOKORO-thumbStandard.jpg",
          "format": "Standard Thumbnail",
          "height": 75,
          "width": 75,
          "type": "image",
          "subtype": "photo",
          "caption": "Paulo Amotun Lokoro, right, and Yiech Pur Biel, both middle-distance runners from South Sudan, in Rio de Janeiro in 2016. ",
          "copyright": "James Hill for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30CANADA-LETTER-LOKORO/30CANADA-LETTER-LOKORO-thumbLarge.jpg",
          "format": "thumbLarge",
          "height": 150,
          "width": 150,
          "type": "image",
          "subtype": "photo",
          "caption": "Paulo Amotun Lokoro, right, and Yiech Pur Biel, both middle-distance runners from South Sudan, in Rio de Janeiro in 2016. ",
          "copyright": "James Hill for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30CANADA-LETTER-LOKORO/30CANADA-LETTER-LOKORO-mediumThreeByTwo210.jpg",
          "format": "mediumThreeByTwo210",
          "height": 140,
          "width": 210,
          "type": "image",
          "subtype": "photo",
          "caption": "Paulo Amotun Lokoro, right, and Yiech Pur Biel, both middle-distance runners from South Sudan, in Rio de Janeiro in 2016. ",
          "copyright": "James Hill for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30CANADA-LETTER-LOKORO/30CANADA-LETTER-LOKORO-articleInline.jpg",
          "format": "Normal",
          "height": 127,
          "width": 190,
          "type": "image",
          "subtype": "photo",
          "caption": "Paulo Amotun Lokoro, right, and Yiech Pur Biel, both middle-distance runners from South Sudan, in Rio de Janeiro in 2016. ",
          "copyright": "James Hill for The New York Times"
        }
      ],
      "short_url": "https://nyti.ms/2ViAjkA"
    },
    {
      "section": "world",
      "subsection": "",
      "title": "Virus cases are rising around the world, and deaths in Africa are surging.",
      "abstract": "“We can prevent this disease, we can test for it, and we can treat it,” Dr. Tedros Adhanom Ghebreyesus said.",
      "url": "https://www.nytimes.com/2021/07/30/world/africa-who-coronavirus-deaths.html",
      "uri": "nyt://article/c7dcda63-366c-5173-9b3e-8107c737ed38",
      "byline": "By Daniel E. Slotnik",
      "item_type": "Article",
      "updated_date": "2021-07-31T09:37:30-04:00",
      "created_date": "2021-07-30T16:36:43-04:00",
      "published_date": "2021-07-30T16:36:43-04:00",
      "material_type_facet": "",
      "kicker": "",
      "des_facet": [
        "Viruses",
        "Coronavirus (2019-nCoV)"
      ],
      "org_facet": [
        "World Health Organization"
      ],
      "per_facet": [
        "Tedros Adhanom Ghebreyesus"
      ],
      "geo_facet": [
        
      ],
      "multimedia": [
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30virus-briefing-who-africa/merlin_191853954_14f08eed-feba-474f-9a37-552e9efbc2d4-superJumbo.jpg",
          "format": "superJumbo",
          "height": 1365,
          "width": 2048,
          "type": "image",
          "subtype": "photo",
          "caption": "People waiting to receive coronavirus vaccines at Léopold Sédar Senghor stadium in Dakar, Senegal, on Wednesday.",
          "copyright": "Leo Correa/Associated Press"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30virus-briefing-who-africa/30virus-briefing-who-africa-thumbStandard.jpg",
          "format": "Standard Thumbnail",
          "height": 75,
          "width": 75,
          "type": "image",
          "subtype": "photo",
          "caption": "People waiting to receive coronavirus vaccines at Léopold Sédar Senghor stadium in Dakar, Senegal, on Wednesday.",
          "copyright": "Leo Correa/Associated Press"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30virus-briefing-who-africa/30virus-briefing-who-africa-thumbLarge.jpg",
          "format": "thumbLarge",
          "height": 150,
          "width": 150,
          "type": "image",
          "subtype": "photo",
          "caption": "People waiting to receive coronavirus vaccines at Léopold Sédar Senghor stadium in Dakar, Senegal, on Wednesday.",
          "copyright": "Leo Correa/Associated Press"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30virus-briefing-who-africa/30virus-briefing-who-africa-mediumThreeByTwo210.jpg",
          "format": "mediumThreeByTwo210",
          "height": 140,
          "width": 210,
          "type": "image",
          "subtype": "photo",
          "caption": "People waiting to receive coronavirus vaccines at Léopold Sédar Senghor stadium in Dakar, Senegal, on Wednesday.",
          "copyright": "Leo Correa/Associated Press"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30virus-briefing-who-africa/30virus-briefing-who-africa-articleInline.jpg",
          "format": "Normal",
          "height": 127,
          "width": 190,
          "type": "image",
          "subtype": "photo",
          "caption": "People waiting to receive coronavirus vaccines at Léopold Sédar Senghor stadium in Dakar, Senegal, on Wednesday.",
          "copyright": "Leo Correa/Associated Press"
        }
      ],
      "short_url": "https://nyti.ms/37cJTs6"
    },
    {
      "section": "travel",
      "subsection": "",
      "title": "The New Reality of a European Trip: ‘Things Are Going to Change’",
      "abstract": "Curfews, vaccine requirements, conflicting advice. As variants like Delta spread, rules and restrictions are popping up across the continent and staying informed can feel like a job.",
      "url": "https://www.nytimes.com/2021/07/30/travel/europe-delta-covid-restrictions.html",
      "uri": "nyt://article/47d26767-2f5e-57c6-b2da-d6050a9812ea",
      "byline": "By Ceylan Yeginsu",
      "item_type": "Article",
      "updated_date": "2021-07-30T16:56:22-04:00",
      "created_date": "2021-07-30T16:32:31-04:00",
      "published_date": "2021-07-30T16:32:31-04:00",
      "material_type_facet": "",
      "kicker": "",
      "des_facet": [
        "Travel and Vacations",
        "Quarantine (Life and Culture)",
        "Coronavirus (2019-nCoV)",
        "Quarantines",
        "Vaccination and Immunization",
        "Curfews"
      ],
      "org_facet": [
        "European Union"
      ],
      "per_facet": [
        
      ],
      "geo_facet": [
        "Europe"
      ],
      "multimedia": [
        {
          "url": "https://static01.nyt.com/images/2021/07/30/travel/30europe-confusion1/merlin_191933013_d2b0b59c-24a5-49da-a3aa-20983eaac1ee-superJumbo.jpg",
          "format": "superJumbo",
          "height": 1365,
          "width": 2048,
          "type": "image",
          "subtype": "photo",
          "caption": "At Berlin Brandenburg Airport, passengers stand next to signs for a Covid-19 testing center. ",
          "copyright": "Stefanie Loos/Agence France-Presse — Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/travel/30europe-confusion1/30europe-confusion1-thumbStandard.jpg",
          "format": "Standard Thumbnail",
          "height": 75,
          "width": 75,
          "type": "image",
          "subtype": "photo",
          "caption": "At Berlin Brandenburg Airport, passengers stand next to signs for a Covid-19 testing center. ",
          "copyright": "Stefanie Loos/Agence France-Presse — Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/travel/30europe-confusion1/30europe-confusion1-thumbLarge.jpg",
          "format": "thumbLarge",
          "height": 150,
          "width": 150,
          "type": "image",
          "subtype": "photo",
          "caption": "At Berlin Brandenburg Airport, passengers stand next to signs for a Covid-19 testing center. ",
          "copyright": "Stefanie Loos/Agence France-Presse — Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/travel/30europe-confusion1/merlin_191933013_d2b0b59c-24a5-49da-a3aa-20983eaac1ee-mediumThreeByTwo210.jpg",
          "format": "mediumThreeByTwo210",
          "height": 140,
          "width": 210,
          "type": "image",
          "subtype": "photo",
          "caption": "At Berlin Brandenburg Airport, passengers stand next to signs for a Covid-19 testing center. ",
          "copyright": "Stefanie Loos/Agence France-Presse — Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/travel/30europe-confusion1/merlin_191933013_d2b0b59c-24a5-49da-a3aa-20983eaac1ee-articleInline.jpg",
          "format": "Normal",
          "height": 127,
          "width": 190,
          "type": "image",
          "subtype": "photo",
          "caption": "At Berlin Brandenburg Airport, passengers stand next to signs for a Covid-19 testing center. ",
          "copyright": "Stefanie Loos/Agence France-Presse — Getty Images"
        }
      ],
      "short_url": "https://nyti.ms/3xdW3eS"
    },
    {
      "section": "world",
      "subsection": "",
      "title": "Here’s who is hospitalized for Covid in New York City.",
      "abstract": "",
      "url": "https://www.nytimes.com/2021/07/30/world/heres-who-is-hospitalized-for-covid-in-new-york-city.html",
      "uri": "nyt://article/253f13c9-e782-551e-b77c-e60107dd99ca",
      "byline": "By Sharon Otterman",
      "item_type": "Article",
      "updated_date": "2021-07-30T17:17:55-04:00",
      "created_date": "2021-07-30T13:11:29-04:00",
      "published_date": "2021-07-30T13:11:29-04:00",
      "material_type_facet": "",
      "kicker": "",
      "des_facet": [
        
      ],
      "org_facet": [
        
      ],
      "per_facet": [
        
      ],
      "geo_facet": [
        
      ],
      "multimedia": [
        {
          "url": "https://static01.nyt.com/images/2021/07/30/lens/30virus-briefing-nyhospitalizations1/merlin_190813632_610c8f56-57db-48e4-8721-1e9cd312be10-superJumbo.jpg",
          "format": "superJumbo",
          "height": 1365,
          "width": 2048,
          "type": "image",
          "subtype": "photo",
          "caption": "Two sisters from the Order of the Missionaries of Charity walking in Brooklyn, N.Y., where cases are rising. ",
          "copyright": "Spencer Platt/Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/lens/30virus-briefing-nyhospitalizations1/30virus-briefing-nyhospitalizations1-thumbStandard.jpg",
          "format": "Standard Thumbnail",
          "height": 75,
          "width": 75,
          "type": "image",
          "subtype": "photo",
          "caption": "Two sisters from the Order of the Missionaries of Charity walking in Brooklyn, N.Y., where cases are rising. ",
          "copyright": "Spencer Platt/Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/lens/30virus-briefing-nyhospitalizations1/30virus-briefing-nyhospitalizations1-thumbLarge.jpg",
          "format": "thumbLarge",
          "height": 150,
          "width": 150,
          "type": "image",
          "subtype": "photo",
          "caption": "Two sisters from the Order of the Missionaries of Charity walking in Brooklyn, N.Y., where cases are rising. ",
          "copyright": "Spencer Platt/Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/lens/30virus-briefing-nyhospitalizations1/merlin_190813632_610c8f56-57db-48e4-8721-1e9cd312be10-mediumThreeByTwo210.jpg",
          "format": "mediumThreeByTwo210",
          "height": 140,
          "width": 210,
          "type": "image",
          "subtype": "photo",
          "caption": "Two sisters from the Order of the Missionaries of Charity walking in Brooklyn, N.Y., where cases are rising. ",
          "copyright": "Spencer Platt/Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/lens/30virus-briefing-nyhospitalizations1/merlin_190813632_610c8f56-57db-48e4-8721-1e9cd312be10-articleInline.jpg",
          "format": "Normal",
          "height": 127,
          "width": 190,
          "type": "image",
          "subtype": "photo",
          "caption": "Two sisters from the Order of the Missionaries of Charity walking in Brooklyn, N.Y., where cases are rising. ",
          "copyright": "Spencer Platt/Getty Images"
        }
      ],
      "short_url": "https://nyti.ms/2V6TrST"
    },
    {
      "section": "health",
      "subsection": "",
      "title": "Vaccinated People May Spread the Virus, Though Rarely, C.D.C. Reports",
      "abstract": "The agency cited an outbreak in Provincetown, Mass., in which most of the infected were immunized. An internal C.D.C. document paints an even more harrowing picture.",
      "url": "https://www.nytimes.com/2021/07/30/health/cdc-vaccinated-delta.html",
      "uri": "nyt://article/0b7eeb01-a1d8-5043-b680-97159acb49bb",
      "byline": "By Apoorva Mandavilli",
      "item_type": "Article",
      "updated_date": "2021-07-31T13:12:38-04:00",
      "created_date": "2021-07-30T13:06:10-04:00",
      "published_date": "2021-07-30T13:06:10-04:00",
      "material_type_facet": "",
      "kicker": "",
      "des_facet": [
        "your-feed-science",
        "Coronavirus Risks and Safety Concerns",
        "Disease Rates",
        "Vaccination and Immunization",
        "Coronavirus (2019-nCoV)"
      ],
      "org_facet": [
        "Centers for Disease Control and Prevention"
      ],
      "per_facet": [
        
      ],
      "geo_facet": [
        "Provincetown (Mass)",
        "United States"
      ],
      "multimedia": [
        {
          "url": "https://static01.nyt.com/images/2021/07/30/science/30virus-delta2/30virus-delta2-superJumbo.jpg",
          "format": "superJumbo",
          "height": 1366,
          "width": 2048,
          "type": "image",
          "subtype": "photo",
          "caption": "A dose of the Pfizer-BioNTech vaccine being administered at a three-day clinic in Wilmington, Calif., on Thursday.",
          "copyright": "Mario Tama/Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/science/30virus-delta2/30virus-delta2-thumbStandard.jpg",
          "format": "Standard Thumbnail",
          "height": 75,
          "width": 75,
          "type": "image",
          "subtype": "photo",
          "caption": "A dose of the Pfizer-BioNTech vaccine being administered at a three-day clinic in Wilmington, Calif., on Thursday.",
          "copyright": "Mario Tama/Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/science/30virus-delta2/30virus-delta2-thumbLarge.jpg",
          "format": "thumbLarge",
          "height": 150,
          "width": 150,
          "type": "image",
          "subtype": "photo",
          "caption": "A dose of the Pfizer-BioNTech vaccine being administered at a three-day clinic in Wilmington, Calif., on Thursday.",
          "copyright": "Mario Tama/Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/science/30virus-delta2/30virus-delta2-mediumThreeByTwo210.jpg",
          "format": "mediumThreeByTwo210",
          "height": 140,
          "width": 210,
          "type": "image",
          "subtype": "photo",
          "caption": "A dose of the Pfizer-BioNTech vaccine being administered at a three-day clinic in Wilmington, Calif., on Thursday.",
          "copyright": "Mario Tama/Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/science/30virus-delta2/30virus-delta2-articleInline.jpg",
          "format": "Normal",
          "height": 127,
          "width": 190,
          "type": "image",
          "subtype": "photo",
          "caption": "A dose of the Pfizer-BioNTech vaccine being administered at a three-day clinic in Wilmington, Calif., on Thursday.",
          "copyright": "Mario Tama/Getty Images"
        }
      ],
      "short_url": "https://nyti.ms/3idQWqM"
    },
    {
      "section": "world",
      "subsection": "",
      "title": "U.S. restaurants scramble to reimpose rules.",
      "abstract": "",
      "url": "https://www.nytimes.com/2021/07/30/world/us-restaurants-scramble-to-reimpose-rules.html",
      "uri": "nyt://article/cad2c136-1830-573b-be53-904894250ff1",
      "byline": "By Christina Morales",
      "item_type": "Article",
      "updated_date": "2021-07-30T17:17:45-04:00",
      "created_date": "2021-07-30T11:36:48-04:00",
      "published_date": "2021-07-30T11:36:48-04:00",
      "material_type_facet": "",
      "kicker": "",
      "des_facet": [
        
      ],
      "org_facet": [
        
      ],
      "per_facet": [
        
      ],
      "geo_facet": [
        
      ],
      "multimedia": [
        {
          "url": "https://static01.nyt.com/images/2021/07/29/lens/29virus-briefing-restaurants-rules1/merlin_185407377_0255b96c-c9c2-49a2-b2dd-92936dc043e0-superJumbo.jpg",
          "format": "superJumbo",
          "height": 1365,
          "width": 2048,
          "type": "image",
          "subtype": "photo",
          "caption": "Yu Wu serving dim sum at Pacific Palace restaurant on Eighth Avenue, a commercial strip in Sunset Park, Brooklyn, N.Y., in March.",
          "copyright": "Victor J. Blue for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/29/lens/29virus-briefing-restaurants-rules1/29virus-briefing-restaurants-rules1-thumbStandard.jpg",
          "format": "Standard Thumbnail",
          "height": 75,
          "width": 75,
          "type": "image",
          "subtype": "photo",
          "caption": "Yu Wu serving dim sum at Pacific Palace restaurant on Eighth Avenue, a commercial strip in Sunset Park, Brooklyn, N.Y., in March.",
          "copyright": "Victor J. Blue for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/29/lens/29virus-briefing-restaurants-rules1/29virus-briefing-restaurants-rules1-thumbLarge.jpg",
          "format": "thumbLarge",
          "height": 150,
          "width": 150,
          "type": "image",
          "subtype": "photo",
          "caption": "Yu Wu serving dim sum at Pacific Palace restaurant on Eighth Avenue, a commercial strip in Sunset Park, Brooklyn, N.Y., in March.",
          "copyright": "Victor J. Blue for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/29/lens/29virus-briefing-restaurants-rules1/merlin_185407377_0255b96c-c9c2-49a2-b2dd-92936dc043e0-mediumThreeByTwo210.jpg",
          "format": "mediumThreeByTwo210",
          "height": 140,
          "width": 210,
          "type": "image",
          "subtype": "photo",
          "caption": "Yu Wu serving dim sum at Pacific Palace restaurant on Eighth Avenue, a commercial strip in Sunset Park, Brooklyn, N.Y., in March.",
          "copyright": "Victor J. Blue for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/29/lens/29virus-briefing-restaurants-rules1/merlin_185407377_0255b96c-c9c2-49a2-b2dd-92936dc043e0-articleInline.jpg",
          "format": "Normal",
          "height": 127,
          "width": 190,
          "type": "image",
          "subtype": "photo",
          "caption": "Yu Wu serving dim sum at Pacific Palace restaurant on Eighth Avenue, a commercial strip in Sunset Park, Brooklyn, N.Y., in March.",
          "copyright": "Victor J. Blue for The New York Times"
        }
      ],
      "short_url": "https://nyti.ms/3fe5ZPi"
    },
    {
      "section": "world",
      "subsection": "middleeast",
      "title": "Turkey Is Next as Wildfires Afflict Mediterranean Countries",
      "abstract": "The Turkish authorities said they were investigating the causes of fires that killed at least four people and threatened popular tourist destinations.",
      "url": "https://www.nytimes.com/2021/07/30/world/middleeast/turkey-fires-mediterranean-lebanon.html",
      "uri": "nyt://article/90145be7-691d-5232-8c7f-8828105312d2",
      "byline": "By Elian Peltier and Asmaa al-Omar",
      "item_type": "Article",
      "updated_date": "2021-07-30T23:01:36-04:00",
      "created_date": "2021-07-30T10:06:48-04:00",
      "published_date": "2021-07-30T10:06:48-04:00",
      "material_type_facet": "",
      "kicker": "",
      "des_facet": [
        "Fires and Firefighters",
        "Wildfires"
      ],
      "org_facet": [
        
      ],
      "per_facet": [
        
      ],
      "geo_facet": [
        "Antalya (Turkey)",
        "Lebanon",
        "Turkey"
      ],
      "multimedia": [
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30turkey-fires-03/merlin_192071427_567970cb-62e1-45a0-8f74-01c60a1cb12c-superJumbo.jpg",
          "format": "superJumbo",
          "height": 1365,
          "width": 2048,
          "type": "image",
          "subtype": "photo",
          "caption": "A firefighter extinguishing a forest fire near the town of Manavgat, Turkey, where the fires first broke out this week.",
          "copyright": "Kaan Soyturk/Reuters"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30turkey-fires-03/30turkey-fires-03-thumbStandard.jpg",
          "format": "Standard Thumbnail",
          "height": 75,
          "width": 75,
          "type": "image",
          "subtype": "photo",
          "caption": "A firefighter extinguishing a forest fire near the town of Manavgat, Turkey, where the fires first broke out this week.",
          "copyright": "Kaan Soyturk/Reuters"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30turkey-fires-03/30turkey-fires-03-thumbLarge.jpg",
          "format": "thumbLarge",
          "height": 150,
          "width": 150,
          "type": "image",
          "subtype": "photo",
          "caption": "A firefighter extinguishing a forest fire near the town of Manavgat, Turkey, where the fires first broke out this week.",
          "copyright": "Kaan Soyturk/Reuters"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30turkey-fires-03/merlin_192071427_567970cb-62e1-45a0-8f74-01c60a1cb12c-mediumThreeByTwo210.jpg",
          "format": "mediumThreeByTwo210",
          "height": 140,
          "width": 210,
          "type": "image",
          "subtype": "photo",
          "caption": "A firefighter extinguishing a forest fire near the town of Manavgat, Turkey, where the fires first broke out this week.",
          "copyright": "Kaan Soyturk/Reuters"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30turkey-fires-03/merlin_192071427_567970cb-62e1-45a0-8f74-01c60a1cb12c-articleInline.jpg",
          "format": "Normal",
          "height": 127,
          "width": 190,
          "type": "image",
          "subtype": "photo",
          "caption": "A firefighter extinguishing a forest fire near the town of Manavgat, Turkey, where the fires first broke out this week.",
          "copyright": "Kaan Soyturk/Reuters"
        }
      ],
      "short_url": "https://nyti.ms/3BYmWXB"
    },
    {
      "section": "world",
      "subsection": "europe",
      "title": "Remains of Esther Dingley, Missing British Hiker, Are Found",
      "abstract": "For months, the authorities and Ms. Dingley’s partner combed the Pyrenees mountains. A DNA test confirmed the identity of remains found near her last known location, a group aiding the search said.",
      "url": "https://www.nytimes.com/2021/07/30/world/europe/esther-dingley-missing-british-hiker.html",
      "uri": "nyt://article/c61b3961-c1ed-5e8e-a921-ca59b81435e3",
      "byline": "By Derrick Bryson Taylor",
      "item_type": "Article",
      "updated_date": "2021-07-31T11:25:51-04:00",
      "created_date": "2021-07-30T09:02:14-04:00",
      "published_date": "2021-07-30T09:02:14-04:00",
      "material_type_facet": "",
      "kicker": "",
      "des_facet": [
        "Missing Persons",
        "Hikes and Hiking"
      ],
      "org_facet": [
        
      ],
      "per_facet": [
        "Dingley, Esther"
      ],
      "geo_facet": [
        "Pyrenees Mountains",
        "Europe",
        "France"
      ],
      "multimedia": [
        {
          "url": "https://static01.nyt.com/images/2021/07/30/us/30xp-hiker/30xp-hiker-superJumbo.jpg",
          "format": "superJumbo",
          "height": 1233,
          "width": 2048,
          "type": "image",
          "subtype": "photo",
          "caption": "Remains of the British hiker Esther Dingley, who went missing in the Pyrenees in November 2020, were found, according to a group aiding the search.",
          "copyright": "LBT Global/Family"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/us/30xp-hiker/30xp-hiker-thumbStandard.jpg",
          "format": "Standard Thumbnail",
          "height": 75,
          "width": 75,
          "type": "image",
          "subtype": "photo",
          "caption": "Remains of the British hiker Esther Dingley, who went missing in the Pyrenees in November 2020, were found, according to a group aiding the search.",
          "copyright": "LBT Global/Family"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/us/30xp-hiker/30xp-hiker-thumbLarge.jpg",
          "format": "thumbLarge",
          "height": 150,
          "width": 150,
          "type": "image",
          "subtype": "photo",
          "caption": "Remains of the British hiker Esther Dingley, who went missing in the Pyrenees in November 2020, were found, according to a group aiding the search.",
          "copyright": "LBT Global/Family"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/us/30xp-hiker/30xp-hiker-mediumThreeByTwo210.jpg",
          "format": "mediumThreeByTwo210",
          "height": 140,
          "width": 210,
          "type": "image",
          "subtype": "photo",
          "caption": "Remains of the British hiker Esther Dingley, who went missing in the Pyrenees in November 2020, were found, according to a group aiding the search.",
          "copyright": "LBT Global/Family"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/us/30xp-hiker/30xp-hiker-articleInline.jpg",
          "format": "Normal",
          "height": 114,
          "width": 190,
          "type": "image",
          "subtype": "photo",
          "caption": "Remains of the British hiker Esther Dingley, who went missing in the Pyrenees in November 2020, were found, according to a group aiding the search.",
          "copyright": "LBT Global/Family"
        }
      ],
      "short_url": "https://nyti.ms/3ley0dg"
    },
    {
      "section": "world",
      "subsection": "",
      "title": "Los Angeles schools order weekly virus tests for everyone, vaccinated or not.",
      "abstract": "The shift by the second-largest U.S. district comes weeks before in-person classes are scheduled to resume.",
      "url": "https://www.nytimes.com/2021/07/30/world/los-angeles-schools-covid.html",
      "uri": "nyt://article/c66bb66c-3c7b-5f2f-a98d-151fc9b3840c",
      "byline": "By Lauren McCarthy",
      "item_type": "Article",
      "updated_date": "2021-07-30T17:18:54-04:00",
      "created_date": "2021-07-30T06:48:39-04:00",
      "published_date": "2021-07-30T06:48:39-04:00",
      "material_type_facet": "",
      "kicker": "",
      "des_facet": [
        "Education (K-12)",
        "Coronavirus (2019-nCoV)"
      ],
      "org_facet": [
        
      ],
      "per_facet": [
        
      ],
      "geo_facet": [
        "Los Angeles (Calif)"
      ],
      "multimedia": [
        {
          "url": "https://static01.nyt.com/images/2021/07/29/lens/29virus-briefing-la-school-testing1/merlin_190771764_cbdc0fb8-21e7-4a08-8570-78917a88212c-superJumbo.jpg",
          "format": "superJumbo",
          "height": 1365,
          "width": 2048,
          "type": "image",
          "subtype": "photo",
          "caption": "Kindergarten students in Los Angeles on the day in-person learning resumed in April.",
          "copyright": "Jae C. Hong/Associated Press"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/29/lens/29virus-briefing-la-school-testing1/29virus-briefing-la-school-testing1-thumbStandard.jpg",
          "format": "Standard Thumbnail",
          "height": 75,
          "width": 75,
          "type": "image",
          "subtype": "photo",
          "caption": "Kindergarten students in Los Angeles on the day in-person learning resumed in April.",
          "copyright": "Jae C. Hong/Associated Press"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/29/lens/29virus-briefing-la-school-testing1/29virus-briefing-la-school-testing1-thumbLarge.jpg",
          "format": "thumbLarge",
          "height": 150,
          "width": 150,
          "type": "image",
          "subtype": "photo",
          "caption": "Kindergarten students in Los Angeles on the day in-person learning resumed in April.",
          "copyright": "Jae C. Hong/Associated Press"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/29/lens/29virus-briefing-la-school-testing1/merlin_190771764_cbdc0fb8-21e7-4a08-8570-78917a88212c-mediumThreeByTwo210.jpg",
          "format": "mediumThreeByTwo210",
          "height": 140,
          "width": 210,
          "type": "image",
          "subtype": "photo",
          "caption": "Kindergarten students in Los Angeles on the day in-person learning resumed in April.",
          "copyright": "Jae C. Hong/Associated Press"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/29/lens/29virus-briefing-la-school-testing1/merlin_190771764_cbdc0fb8-21e7-4a08-8570-78917a88212c-articleInline.jpg",
          "format": "Normal",
          "height": 127,
          "width": 190,
          "type": "image",
          "subtype": "photo",
          "caption": "Kindergarten students in Los Angeles on the day in-person learning resumed in April.",
          "copyright": "Jae C. Hong/Associated Press"
        }
      ],
      "short_url": "https://nyti.ms/3xofd1L"
    },
    {
      "section": "briefing",
      "subsection": "",
      "title": "More Covid Mysteries",
      "abstract": "There’s much to learn about how the virus spreads.",
      "url": "https://www.nytimes.com/2021/07/30/briefing/coronavirus-delta-mysteries.html",
      "uri": "nyt://article/050f5a46-98c5-5c14-8ef7-2dc93be225dc",
      "byline": "By David Leonhardt",
      "item_type": "Article",
      "updated_date": "2021-07-30T11:56:13-04:00",
      "created_date": "2021-07-30T06:13:05-04:00",
      "published_date": "2021-07-30T06:13:05-04:00",
      "material_type_facet": "",
      "kicker": "The Morning Newsletter",
      "des_facet": [
        
      ],
      "org_facet": [
        
      ],
      "per_facet": [
        
      ],
      "geo_facet": [
        
      ],
      "multimedia": [
        {
          "url": "https://static01.nyt.com/images/2021/07/30/lens/30ambriefing-promo/30ambriefing-london-superJumbo-v2.jpg",
          "format": "superJumbo",
          "height": 1366,
          "width": 2048,
          "type": "image",
          "subtype": "photo",
          "caption": "Pedestrians in central London this week.",
          "copyright": "Tolga Akmen/Agence France-Presse — Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/lens/30ambriefing-promo/30ambriefing-london-thumbStandard-v2.jpg",
          "format": "Standard Thumbnail",
          "height": 75,
          "width": 75,
          "type": "image",
          "subtype": "photo",
          "caption": "Pedestrians in central London this week.",
          "copyright": "Tolga Akmen/Agence France-Presse — Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/lens/30ambriefing-promo/30ambriefing-london-thumbLarge-v2.jpg",
          "format": "thumbLarge",
          "height": 150,
          "width": 150,
          "type": "image",
          "subtype": "photo",
          "caption": "Pedestrians in central London this week.",
          "copyright": "Tolga Akmen/Agence France-Presse — Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/lens/30ambriefing-promo/30ambriefing-london-mediumThreeByTwo210-v2.jpg",
          "format": "mediumThreeByTwo210",
          "height": 140,
          "width": 210,
          "type": "image",
          "subtype": "photo",
          "caption": "Pedestrians in central London this week.",
          "copyright": "Tolga Akmen/Agence France-Presse — Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/lens/30ambriefing-promo/30ambriefing-london-articleInline-v2.jpg",
          "format": "Normal",
          "height": 127,
          "width": 190,
          "type": "image",
          "subtype": "photo",
          "caption": "Pedestrians in central London this week.",
          "copyright": "Tolga Akmen/Agence France-Presse — Getty Images"
        }
      ],
      "short_url": "https://nyti.ms/2UWap6B"
    },
    {
      "section": "world",
      "subsection": "",
      "title": "How Europe, after a fumbling start, overtook the U.S. in vaccinations.",
      "abstract": "",
      "url": "https://www.nytimes.com/2021/07/30/world/how-europe-after-a-fumbling-start-overtook-the-us-in-vaccinations.html",
      "uri": "nyt://article/490243cc-da03-54b2-976e-d01d48f82439",
      "byline": "By Elian Peltier and Josh Holder",
      "item_type": "Article",
      "updated_date": "2021-07-30T17:03:20-04:00",
      "created_date": "2021-07-30T05:59:08-04:00",
      "published_date": "2021-07-30T05:59:08-04:00",
      "material_type_facet": "",
      "kicker": "",
      "des_facet": [
        
      ],
      "org_facet": [
        
      ],
      "per_facet": [
        
      ],
      "geo_facet": [
        
      ],
      "multimedia": [
        {
          "url": "https://static01.nyt.com/images/2021/07/29/us/EU-US-vaccination-promo-1627593309433/EU-US-vaccination-promo-1627593309433-superJumbo.png",
          "format": "superJumbo",
          "height": 1331,
          "width": 2000,
          "type": "image",
          "subtype": "photo",
          "caption": "",
          "copyright": ""
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/29/us/EU-US-vaccination-promo-1627593309433/EU-US-vaccination-promo-1627593309433-thumbStandard.png",
          "format": "Standard Thumbnail",
          "height": 75,
          "width": 75,
          "type": "image",
          "subtype": "photo",
          "caption": "",
          "copyright": ""
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/29/us/EU-US-vaccination-promo-1627593309433/EU-US-vaccination-promo-1627593309433-thumbLarge.png",
          "format": "thumbLarge",
          "height": 150,
          "width": 150,
          "type": "image",
          "subtype": "photo",
          "caption": "",
          "copyright": ""
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/29/us/EU-US-vaccination-promo-1627593309433/EU-US-vaccination-promo-1627593309433-mediumThreeByTwo210.png",
          "format": "mediumThreeByTwo210",
          "height": 140,
          "width": 210,
          "type": "image",
          "subtype": "photo",
          "caption": "",
          "copyright": ""
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/29/us/EU-US-vaccination-promo-1627593309433/EU-US-vaccination-promo-1627593309433-articleInline.png",
          "format": "Normal",
          "height": 126,
          "width": 190,
          "type": "image",
          "subtype": "photo",
          "caption": "",
          "copyright": ""
        }
      ],
      "short_url": "https://nyti.ms/3j4MAkW"
    },
    {
      "section": "world",
      "subsection": "",
      "title": "The Delta variant is a ‘serious threat’ as contagious as chickenpox, the C.D.C. finds.",
      "abstract": "An internal agency document paints a grim picture of the fast-spreading coronavirus variant, saying it appears to cause serious illness and health officials must “acknowledge the war has changed.”",
      "url": "https://www.nytimes.com/2021/07/30/world/the-delta-variant-is-a-serious-threat-as-contagious-as-chickenpox-the-cdc-finds.html",
      "uri": "nyt://article/162e7df7-3df3-5934-9ba5-211fa852b819",
      "byline": "By Apoorva Mandavilli",
      "item_type": "Article",
      "updated_date": "2021-07-30T13:11:59-04:00",
      "created_date": "2021-07-30T05:58:47-04:00",
      "published_date": "2021-07-30T05:58:47-04:00",
      "material_type_facet": "",
      "kicker": "",
      "des_facet": [
        
      ],
      "org_facet": [
        
      ],
      "per_facet": [
        
      ],
      "geo_facet": [
        
      ],
      "multimedia": [
        {
          "url": "https://static01.nyt.com/images/2021/08/29/world/29virus-briefing-virus-delta/merlin_191853255_49c48abd-af6e-4d54-b702-fb372fc88e95-superJumbo.jpg",
          "format": "superJumbo",
          "height": 1366,
          "width": 2048,
          "type": "image",
          "subtype": "photo",
          "caption": "In Miami Beach, Fla., on Wednesday. The C.D.C.’s new masking guidelines, introduced on Tuesday, were based on information presented in a document about the Delta variant.",
          "copyright": "Scott McIntyre for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/08/29/world/29virus-briefing-virus-delta/29virus-briefing-virus-delta-thumbStandard.jpg",
          "format": "Standard Thumbnail",
          "height": 75,
          "width": 75,
          "type": "image",
          "subtype": "photo",
          "caption": "In Miami Beach, Fla., on Wednesday. The C.D.C.’s new masking guidelines, introduced on Tuesday, were based on information presented in a document about the Delta variant.",
          "copyright": "Scott McIntyre for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/08/29/world/29virus-briefing-virus-delta/29virus-briefing-virus-delta-thumbLarge.jpg",
          "format": "thumbLarge",
          "height": 150,
          "width": 150,
          "type": "image",
          "subtype": "photo",
          "caption": "In Miami Beach, Fla., on Wednesday. The C.D.C.’s new masking guidelines, introduced on Tuesday, were based on information presented in a document about the Delta variant.",
          "copyright": "Scott McIntyre for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/08/29/world/29virus-briefing-virus-delta/merlin_191853255_49c48abd-af6e-4d54-b702-fb372fc88e95-mediumThreeByTwo210.jpg",
          "format": "mediumThreeByTwo210",
          "height": 140,
          "width": 210,
          "type": "image",
          "subtype": "photo",
          "caption": "In Miami Beach, Fla., on Wednesday. The C.D.C.’s new masking guidelines, introduced on Tuesday, were based on information presented in a document about the Delta variant.",
          "copyright": "Scott McIntyre for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/08/29/world/29virus-briefing-virus-delta/merlin_191853255_49c48abd-af6e-4d54-b702-fb372fc88e95-articleInline.jpg",
          "format": "Normal",
          "height": 127,
          "width": 190,
          "type": "image",
          "subtype": "photo",
          "caption": "In Miami Beach, Fla., on Wednesday. The C.D.C.’s new masking guidelines, introduced on Tuesday, were based on information presented in a document about the Delta variant.",
          "copyright": "Scott McIntyre for The New York Times"
        }
      ],
      "short_url": "https://nyti.ms/3iaZcI0"
    },
    {
      "section": "todaysinyt",
      "subsection": "",
      "title": "Wooden Buildings Reach for the Sky",
      "abstract": "Ambitious high-rise projects in Sweden are a showcase for a reviving forest industry.",
      "url": "https://www.nytimes.com/2021/07/30/todaysinyt/wooden-buildings-reach-for-the-sky-in-vaxjo-sweden.html",
      "uri": "nyt://article/d8c93a73-dfaa-5473-850a-40db7fc40a76",
      "byline": "By Gabriel Leigh",
      "item_type": "Article",
      "updated_date": "2021-07-30T10:29:36-04:00",
      "created_date": "2021-07-30T05:09:53-04:00",
      "published_date": "2021-07-30T05:09:53-04:00",
      "material_type_facet": "",
      "kicker": "",
      "des_facet": [
        "Building (Construction)",
        "Wood and Wood Products",
        "Greenhouse Gas Emissions"
      ],
      "org_facet": [
        
      ],
      "per_facet": [
        
      ],
      "geo_facet": [
        "Stockholm (Sweden)",
        "Oslo (Norway)"
      ],
      "multimedia": [
        {
          "url": "https://static01.nyt.com/images/2021/07/31/world/31real-timber-add2-inyt/31real-timber-add2-superJumbo.jpg",
          "format": "superJumbo",
          "height": 981,
          "width": 2048,
          "type": "image",
          "subtype": "photo",
          "caption": "A rendering of the completed Stockholm complex, dubbed Cederhusen, or Cedar House.",
          "copyright": "General Architecture"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/31/world/31real-timber-add2-inyt/31real-timber-add2-thumbStandard.jpg",
          "format": "Standard Thumbnail",
          "height": 75,
          "width": 75,
          "type": "image",
          "subtype": "photo",
          "caption": "A rendering of the completed Stockholm complex, dubbed Cederhusen, or Cedar House.",
          "copyright": "General Architecture"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/31/world/31real-timber-add2-inyt/31real-timber-add2-thumbLarge.jpg",
          "format": "thumbLarge",
          "height": 150,
          "width": 150,
          "type": "image",
          "subtype": "photo",
          "caption": "A rendering of the completed Stockholm complex, dubbed Cederhusen, or Cedar House.",
          "copyright": "General Architecture"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/31/world/31real-timber-add2-inyt/31real-timber-add2-mediumThreeByTwo210.jpg",
          "format": "mediumThreeByTwo210",
          "height": 140,
          "width": 210,
          "type": "image",
          "subtype": "photo",
          "caption": "A rendering of the completed Stockholm complex, dubbed Cederhusen, or Cedar House.",
          "copyright": "General Architecture"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/31/world/31real-timber-add2-inyt/31real-timber-add2-articleInline.jpg",
          "format": "Normal",
          "height": 91,
          "width": 190,
          "type": "image",
          "subtype": "photo",
          "caption": "A rendering of the completed Stockholm complex, dubbed Cederhusen, or Cedar House.",
          "copyright": "General Architecture"
        }
      ],
      "short_url": "https://nyti.ms/3lbRq2h"
    },
    {
      "section": "world",
      "subsection": "",
      "title": "An outbreak of the Delta variant tests China’s zero-tolerance approach to the virus.",
      "abstract": "Cases have spread from the city of Nanjing to several provinces and the capital, Beijing, in the past three weeks.",
      "url": "https://www.nytimes.com/2021/07/30/world/nanjing-china-covid.html",
      "uri": "nyt://article/b8b09299-fabc-551b-bb1c-69a3cf455b98",
      "byline": "By Paul Mozur",
      "item_type": "Article",
      "updated_date": "2021-07-30T17:29:32-04:00",
      "created_date": "2021-07-30T05:05:20-04:00",
      "published_date": "2021-07-30T05:05:20-04:00",
      "material_type_facet": "",
      "kicker": "",
      "des_facet": [
        "Coronavirus (2019-nCoV)",
        "Disease Rates"
      ],
      "org_facet": [
        
      ],
      "per_facet": [
        
      ],
      "geo_facet": [
        "China",
        "Nanjing (China)"
      ],
      "multimedia": [
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30virus-briefing-china/merlin_191155251_165f0a05-b20c-45ce-8077-568d6b248383-superJumbo.jpg",
          "format": "superJumbo",
          "height": 1365,
          "width": 2048,
          "type": "image",
          "subtype": "photo",
          "caption": "Waiting for Covid-19 testing in Nanjing this month. About 200 cases have been reported in an outbreak centered on the city as of Friday.",
          "copyright": "Agence France-Presse — Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30virus-briefing-china/30virus-briefing-china-thumbStandard.jpg",
          "format": "Standard Thumbnail",
          "height": 75,
          "width": 75,
          "type": "image",
          "subtype": "photo",
          "caption": "Waiting for Covid-19 testing in Nanjing this month. About 200 cases have been reported in an outbreak centered on the city as of Friday.",
          "copyright": "Agence France-Presse — Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30virus-briefing-china/30virus-briefing-china-thumbLarge.jpg",
          "format": "thumbLarge",
          "height": 150,
          "width": 150,
          "type": "image",
          "subtype": "photo",
          "caption": "Waiting for Covid-19 testing in Nanjing this month. About 200 cases have been reported in an outbreak centered on the city as of Friday.",
          "copyright": "Agence France-Presse — Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30virus-briefing-china/merlin_191155251_165f0a05-b20c-45ce-8077-568d6b248383-mediumThreeByTwo210.jpg",
          "format": "mediumThreeByTwo210",
          "height": 140,
          "width": 210,
          "type": "image",
          "subtype": "photo",
          "caption": "Waiting for Covid-19 testing in Nanjing this month. About 200 cases have been reported in an outbreak centered on the city as of Friday.",
          "copyright": "Agence France-Presse — Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30virus-briefing-china/merlin_191155251_165f0a05-b20c-45ce-8077-568d6b248383-articleInline.jpg",
          "format": "Normal",
          "height": 127,
          "width": 190,
          "type": "image",
          "subtype": "photo",
          "caption": "Waiting for Covid-19 testing in Nanjing this month. About 200 cases have been reported in an outbreak centered on the city as of Friday.",
          "copyright": "Agence France-Presse — Getty Images"
        }
      ],
      "short_url": "https://nyti.ms/3fe3Nap"
    },
    {
      "section": "us",
      "subsection": "politics",
      "title": "Afghan Visa Applicants Arrive in U.S. After Years of Waiting",
      "abstract": "The first group of Afghan interpreters and others who helped Americans during the war will stay on an Army base in Virginia until they are resettled.",
      "url": "https://www.nytimes.com/2021/07/30/us/politics/afghan-interpreters-evacuated.html",
      "uri": "nyt://article/9437c536-8216-58b2-95c7-15d834badc16",
      "byline": "By Eric Schmitt and Jennifer Steinhauer",
      "item_type": "Article",
      "updated_date": "2021-07-30T23:02:44-04:00",
      "created_date": "2021-07-30T04:00:09-04:00",
      "published_date": "2021-07-30T04:00:09-04:00",
      "material_type_facet": "",
      "kicker": "",
      "des_facet": [
        "Visas",
        "Afghanistan War (2001- )",
        "Translation and Interpreters",
        "Refugees and Displaced Persons",
        "United States Defense and Military Forces",
        "United States International Relations",
        "United States Politics and Government",
        "Immigration and Emigration"
      ],
      "org_facet": [
        
      ],
      "per_facet": [
        "Biden, Joseph R Jr"
      ],
      "geo_facet": [
        "Kabul (Afghanistan)",
        "Afghanistan"
      ],
      "multimedia": [
        {
          "url": "https://static01.nyt.com/images/2021/07/30/us/politics/30dc-afghan-visas/merlin_189872766_e18a6a7b-4569-4a0d-b9e0-13a9f7a3de48-superJumbo.jpg",
          "format": "superJumbo",
          "height": 1365,
          "width": 2048,
          "type": "image",
          "subtype": "photo",
          "caption": "Afghan interpreters who worked with the U.S. military protesting visa delays in front of the American Embassy in Kabul last month.",
          "copyright": "Mariam Zuhaib/Associated Press"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/us/politics/30dc-afghan-visas/30dc-afghan-visas-thumbStandard.jpg",
          "format": "Standard Thumbnail",
          "height": 75,
          "width": 75,
          "type": "image",
          "subtype": "photo",
          "caption": "Afghan interpreters who worked with the U.S. military protesting visa delays in front of the American Embassy in Kabul last month.",
          "copyright": "Mariam Zuhaib/Associated Press"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/us/politics/30dc-afghan-visas/30dc-afghan-visas-thumbLarge.jpg",
          "format": "thumbLarge",
          "height": 150,
          "width": 150,
          "type": "image",
          "subtype": "photo",
          "caption": "Afghan interpreters who worked with the U.S. military protesting visa delays in front of the American Embassy in Kabul last month.",
          "copyright": "Mariam Zuhaib/Associated Press"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/us/politics/30dc-afghan-visas/merlin_189872766_e18a6a7b-4569-4a0d-b9e0-13a9f7a3de48-mediumThreeByTwo210.jpg",
          "format": "mediumThreeByTwo210",
          "height": 140,
          "width": 210,
          "type": "image",
          "subtype": "photo",
          "caption": "Afghan interpreters who worked with the U.S. military protesting visa delays in front of the American Embassy in Kabul last month.",
          "copyright": "Mariam Zuhaib/Associated Press"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/us/politics/30dc-afghan-visas/merlin_189872766_e18a6a7b-4569-4a0d-b9e0-13a9f7a3de48-articleInline.jpg",
          "format": "Normal",
          "height": 127,
          "width": 190,
          "type": "image",
          "subtype": "photo",
          "caption": "Afghan interpreters who worked with the U.S. military protesting visa delays in front of the American Embassy in Kabul last month.",
          "copyright": "Mariam Zuhaib/Associated Press"
        }
      ],
      "short_url": "https://nyti.ms/3l71cD0"
    },
    {
      "section": "world",
      "subsection": "australia",
      "title": "Don’t Let the Pandemic Tear Australia Apart",
      "abstract": "Our states sometimes seem to be at war with each other as outbreaks flare. But this virus knows no boundaries.",
      "url": "https://www.nytimes.com/2021/07/30/world/australia/dont-let-the-pandemic-tear-australia-apart.html",
      "uri": "nyt://article/5be27755-ab6a-52e3-8ec8-50c3b50915f6",
      "byline": "By Yan Zhuang",
      "item_type": "Article",
      "updated_date": "2021-07-30T02:58:48-04:00",
      "created_date": "2021-07-30T01:50:36-04:00",
      "published_date": "2021-07-30T01:50:36-04:00",
      "material_type_facet": "",
      "kicker": "letter 218",
      "des_facet": [
        "Coronavirus (2019-nCoV)"
      ],
      "org_facet": [
        
      ],
      "per_facet": [
        
      ],
      "geo_facet": [
        "Australia"
      ],
      "multimedia": [
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30australialetter218-NL/merlin_190826571_69a1a18a-b59c-4a87-a188-26006ce51ce9-superJumbo.jpg",
          "format": "superJumbo",
          "height": 1362,
          "width": 2048,
          "type": "image",
          "subtype": "photo",
          "caption": "People exercising at Bondi Beach in Sydney during its lockdown earlier this month.",
          "copyright": "AnnaMaria Antoinette D'Addario for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30australialetter218-NL/30australialetter218-NL-thumbStandard.jpg",
          "format": "Standard Thumbnail",
          "height": 75,
          "width": 75,
          "type": "image",
          "subtype": "photo",
          "caption": "People exercising at Bondi Beach in Sydney during its lockdown earlier this month.",
          "copyright": "AnnaMaria Antoinette D'Addario for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30australialetter218-NL/30australialetter218-NL-thumbLarge.jpg",
          "format": "thumbLarge",
          "height": 150,
          "width": 150,
          "type": "image",
          "subtype": "photo",
          "caption": "People exercising at Bondi Beach in Sydney during its lockdown earlier this month.",
          "copyright": "AnnaMaria Antoinette D'Addario for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30australialetter218-NL/30australialetter218-NL-mediumThreeByTwo210.jpg",
          "format": "mediumThreeByTwo210",
          "height": 140,
          "width": 210,
          "type": "image",
          "subtype": "photo",
          "caption": "People exercising at Bondi Beach in Sydney during its lockdown earlier this month.",
          "copyright": "AnnaMaria Antoinette D'Addario for The New York Times"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/30/world/30australialetter218-NL/merlin_190826571_69a1a18a-b59c-4a87-a188-26006ce51ce9-articleInline.jpg",
          "format": "Normal",
          "height": 126,
          "width": 190,
          "type": "image",
          "subtype": "photo",
          "caption": "People exercising at Bondi Beach in Sydney during its lockdown earlier this month.",
          "copyright": "AnnaMaria Antoinette D'Addario for The New York Times"
        }
      ],
      "short_url": "https://nyti.ms/3fbGaPO"
    },
    {
      "section": "briefing",
      "subsection": "",
      "title": "Your Friday Briefing",
      "abstract": "Europe’s vaccine campaigns speed ahead.",
      "url": "https://www.nytimes.com/2021/07/30/briefing/europe-vaccinations-olympics-heat-wave.html",
      "uri": "nyt://article/344bb9ba-f68b-5f98-b80b-87f8fea614a9",
      "byline": "By Melina Delkic",
      "item_type": "Article",
      "updated_date": "2021-07-30T00:28:56-04:00",
      "created_date": "2021-07-30T00:25:30-04:00",
      "published_date": "2021-07-30T00:25:30-04:00",
      "material_type_facet": "",
      "kicker": "",
      "des_facet": [
        
      ],
      "org_facet": [
        
      ],
      "per_facet": [
        
      ],
      "geo_facet": [
        
      ],
      "multimedia": [
        {
          "url": "https://static01.nyt.com/images/2021/07/27/world/30am-briefing-europe-vacc-rate/merlin_191007561_04a14009-3fab-436e-bed3-555f1b434d2a-superJumbo.jpg",
          "format": "superJumbo",
          "height": 1365,
          "width": 2048,
          "type": "image",
          "subtype": "photo",
          "caption": "A vaccination center in Perpignan, France. ",
          "copyright": "Raymond Roig/Agence France-Presse — Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/27/world/30am-briefing-europe-vacc-rate/27virus-briefing-EU-vaccinations-thumbStandard.jpg",
          "format": "Standard Thumbnail",
          "height": 75,
          "width": 75,
          "type": "image",
          "subtype": "photo",
          "caption": "A vaccination center in Perpignan, France. ",
          "copyright": "Raymond Roig/Agence France-Presse — Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/27/world/30am-briefing-europe-vacc-rate/27virus-briefing-EU-vaccinations-thumbLarge.jpg",
          "format": "thumbLarge",
          "height": 150,
          "width": 150,
          "type": "image",
          "subtype": "photo",
          "caption": "A vaccination center in Perpignan, France. ",
          "copyright": "Raymond Roig/Agence France-Presse — Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/27/world/30am-briefing-europe-vacc-rate/27virus-briefing-EU-vaccinations-mediumThreeByTwo210.jpg",
          "format": "mediumThreeByTwo210",
          "height": 140,
          "width": 210,
          "type": "image",
          "subtype": "photo",
          "caption": "A vaccination center in Perpignan, France. ",
          "copyright": "Raymond Roig/Agence France-Presse — Getty Images"
        },
        {
          "url": "https://static01.nyt.com/images/2021/07/27/world/30am-briefing-europe-vacc-rate/27virus-briefing-EU-vaccinations-articleInline.jpg",
          "format": "Normal",
          "height": 127,
          "width": 190,
          "type": "image",
          "subtype": "photo",
          "caption": "A vaccination center in Perpignan, France. ",
          "copyright": "Raymond Roig/Agence France-Presse — Getty Images"
        }
      ],
      "short_url": "https://nyti.ms/3zNaisA"
    }
  ]
}



def testingDatabase(data)
    all_posts = []
    # byebug
  data.each do |post_hash|
    all_posts << Post.build_NYTIMES_post(post_hash)
  end
  all_posts
  byebug
  puts "Complete"
end

data = NEW_YORK_TIMES_POSTS[:results]

testingDatabase(data)
