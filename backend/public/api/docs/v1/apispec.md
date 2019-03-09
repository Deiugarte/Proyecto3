# Ticoplaces

This are the docs for the ticoplaces API, all the resources and how to use it.

# Group Authentication


## Authentication [/auth]
### Resource for Authenticating and creating an User

### Sign In [POST /auth]
Registration for new user

+ Request creates a person for that user
**POST**&nbsp;&nbsp;`/api/v1/auth`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            registration%5Bemail%5D=billgates%40email.com&registration%5Bpassword%5D=password&registration%5Bpassword_confirmation%5D=password&registration%5Bperson_attributes%5D%5Bbirth_date%5D=12-12-2000&registration%5Bperson_attributes%5D%5Bfirst_name%5D=Bill&registration%5Bperson_attributes%5D%5Blast_name%5D=Gates&registration%5Bperson_attributes%5D%5Bphone_number%5D=1234567890&registration%5Busername%5D=billgates

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "status": "success",
              "data": {
                "id": 69,
                "provider": "email",
                "uid": "billgates@email.com",
                "allow_password_change": false,
                "username": "billgates",
                "image": null,
                "email": "billgates@email.com",
                "created_at": "2019-03-09T05:14:50.000Z",
                "updated_at": "2019-03-09T05:14:50.000Z"
              }
            }

+ Request returns status code ok
**POST**&nbsp;&nbsp;`/api/v1/auth`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            registration%5Bemail%5D=billgates%40email.com&registration%5Bpassword%5D=password&registration%5Bpassword_confirmation%5D=password&registration%5Bperson_attributes%5D%5Bbirth_date%5D=12-12-2000&registration%5Bperson_attributes%5D%5Bfirst_name%5D=Bill&registration%5Bperson_attributes%5D%5Blast_name%5D=Gates&registration%5Bperson_attributes%5D%5Bphone_number%5D=1234567890&registration%5Busername%5D=billgates

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "status": "success",
              "data": {
                "id": 70,
                "provider": "email",
                "uid": "billgates@email.com",
                "allow_password_change": false,
                "username": "billgates",
                "image": null,
                "email": "billgates@email.com",
                "created_at": "2019-03-09T05:14:50.000Z",
                "updated_at": "2019-03-09T05:14:50.000Z"
              }
            }

+ Request creates an empty person for that user
**POST**&nbsp;&nbsp;`/api/v1/auth`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            registration%5Bemail%5D=billgates%40email.com&registration%5Bpassword%5D=password&registration%5Bpassword_confirmation%5D=password&registration%5Busername%5D=billgates

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "status": "success",
              "data": {
                "id": 71,
                "provider": "email",
                "uid": "billgates@email.com",
                "allow_password_change": false,
                "username": "billgates",
                "image": null,
                "email": "billgates@email.com",
                "created_at": "2019-03-09T05:14:50.000Z",
                "updated_at": "2019-03-09T05:14:50.000Z"
              }
            }

+ Request returns status code ok
**POST**&nbsp;&nbsp;`/api/v1/auth`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            registration%5Bemail%5D=billgates%40email.com&registration%5Bpassword%5D=password&registration%5Bpassword_confirmation%5D=password&registration%5Busername%5D=billgates

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "status": "success",
              "data": {
                "id": 72,
                "provider": "email",
                "uid": "billgates@email.com",
                "allow_password_change": false,
                "username": "billgates",
                "image": null,
                "email": "billgates@email.com",
                "created_at": "2019-03-09T05:14:50.000Z",
                "updated_at": "2019-03-09T05:14:51.000Z"
              }
            }

### Update User Info [PUT /auth]
Update info for existing user

+ Request also updates his personal information
**PUT**&nbsp;&nbsp;`/api/v1/auth`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            registration%5Bperson_attributes%5D%5Bfirst_name%5D=my_new_first_name&registration%5Buser_id%5D=73

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "status": "success",
              "data": {
                "id": 73,
                "email": "hobert@mayermckenzie.com",
                "provider": "email",
                "username": "isaiah.windler",
                "uid": "hobert@mayermckenzie.com",
                "allow_password_change": false,
                "image": null,
                "created_at": "2019-03-09T05:14:51.000Z",
                "updated_at": "2019-03-09T05:14:51.000Z"
              }
            }

# Group Cantons


## Cantons [/cantons]
### Resource for Canton

### Get cantons [GET /api/v1/cantons]


+ Request returns a success response
**GET**&nbsp;&nbsp;`/api/v1/cantons`

    + Headers



+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            [
              {
                "id": 1,
                "name": "Feliciatown",
                "description": "Reprehenderit iusto aut. Perferendis placeat odit. Maxime voluptas quas.",
                "province": "Heredia",
                "featured_places": [
                  {
                    "id": 4,
                    "name": "Thirsty Shakes",
                    "telephone": "862-369-1004",
                    "email": "percy@goldner.info",
                    "latitude": "89.697007",
                    "longitude": "-83.927877",
                    "created_at": "2019-03-04T03:00:17.000Z",
                    "updated_at": "2019-03-04T03:00:17.000Z",
                    "province_id": 3,
                    "canton_id": 1,
                    "district_id": 2
                  },
                  {
                    "id": 6,
                    "name": "UFC Eats",
                    "telephone": "(296) 829-4588 x36866",
                    "email": "tracey@weimann.io",
                    "latitude": "23.701345",
                    "longitude": "7.352123",
                    "created_at": "2019-03-04T03:00:17.000Z",
                    "updated_at": "2019-03-04T03:00:17.000Z",
                    "province_id": 3,
                    "canton_id": 1,
                    "district_id": 2
                  },
                  {
                    "id": 9,
                    "name": "Red Gastropub",
                    "telephone": "(121) 060-3813 x6715",
                    "email": "franciscokub@cartwrightflatley.co",
                    "latitude": "-30.527933",
                    "longitude": "-154.284208",
                    "created_at": "2019-03-04T03:00:17.000Z",
                    "updated_at": "2019-03-04T03:00:17.000Z",
                    "province_id": 3,
                    "canton_id": 1,
                    "district_id": 2
                  }
                ]
              },
              {
                "id": 2,
                "name": "Lake Antwanton",
                "description": "Ipsum qui autem. Corporis quos eum. Perspiciatis illum necessitatibus.",
                "province": "Heredia",
                "featured_places": [
                  {
                    "id": 1,
                    "name": "Sugar King",
                    "telephone": "545-980-6815 x498",
                    "email": "rae@jacobsonframi.io",
                    "latitude": "-6.837223",
                    "longitude": "46.560364",
                    "created_at": "2019-03-04T03:00:17.000Z",
                    "updated_at": "2019-03-04T03:00:17.000Z",
                    "province_id": 3,
                    "canton_id": 2,
                    "district_id": 5
                  },
                  {
                    "id": 5,
                    "name": "Hungry Steakhouse",
                    "telephone": "621.531.6434 x65114",
                    "email": "emely@goodwinlittel.org",
                    "latitude": "-31.295967",
                    "longitude": "96.979947",
                    "created_at": "2019-03-04T03:00:17.000Z",
                    "updated_at": "2019-03-04T03:00:17.000Z",
                    "province_id": 3,
                    "canton_id": 2,
                    "district_id": 5
                  }
                ]
              },
              {
                "id": 3,
                "name": "West Jesica",
                "description": "In et esse. Dolorum itaque vel. Omnis nostrum earum.",
                "province": "Cartago",
                "featured_places": [
            
                ]
              },
              {
                "id": 4,
                "name": "Port Brock",
                "description": "Ex voluptas in. Voluptatibus id esse. Velit delectus dolorem.",
                "province": "Limón",
                "featured_places": [
            
                ]
              },
              {
                "id": 5,
                "name": "West Raylene",
                "description": "Nisi deleniti occaecati. Quasi nisi reiciendis. Magni ullam magnam.",
                "province": "Guanacaste",
                "featured_places": [
                  {
                    "id": 2,
                    "name": "Orange Bakery",
                    "telephone": "(994) 334-1029 x9266",
                    "email": "melonypollich@schuster.net",
                    "latitude": "-32.023791",
                    "longitude": "145.849755",
                    "created_at": "2019-03-04T03:00:17.000Z",
                    "updated_at": "2019-03-04T03:00:17.000Z",
                    "province_id": 4,
                    "canton_id": 5,
                    "district_id": 4
                  },
                  {
                    "id": 3,
                    "name": "Blue Eats",
                    "telephone": "615-552-3468 x2643",
                    "email": "tyler@howell.net",
                    "latitude": "-34.225136",
                    "longitude": "-127.236493",
                    "created_at": "2019-03-04T03:00:17.000Z",
                    "updated_at": "2019-03-04T03:00:17.000Z",
                    "province_id": 4,
                    "canton_id": 5,
                    "district_id": 4
                  },
                  {
                    "id": 7,
                    "name": "Sugar Juice Bar",
                    "telephone": "(636) 918-1765 x451",
                    "email": "gita@romaguera.org",
                    "latitude": "-87.517659",
                    "longitude": "3.708248",
                    "created_at": "2019-03-04T03:00:17.000Z",
                    "updated_at": "2019-03-04T03:00:17.000Z",
                    "province_id": 4,
                    "canton_id": 5,
                    "district_id": 4
                  },
                  {
                    "id": 8,
                    "name": "363 Sushi",
                    "telephone": "(420) 040-6288 x66638",
                    "email": "darryltorp@kuphal.info",
                    "latitude": "12.368489",
                    "longitude": "66.939148",
                    "created_at": "2019-03-04T03:00:17.000Z",
                    "updated_at": "2019-03-04T03:00:17.000Z",
                    "province_id": 4,
                    "canton_id": 5,
                    "district_id": 4
                  },
                  {
                    "id": 10,
                    "name": "Sweet King",
                    "telephone": "(211) 492-3437",
                    "email": "efren@schimmelhettinger.org",
                    "latitude": "-86.768653",
                    "longitude": "-144.110571",
                    "created_at": "2019-03-04T03:00:17.000Z",
                    "updated_at": "2019-03-04T03:00:17.000Z",
                    "province_id": 4,
                    "canton_id": 5,
                    "district_id": 4
                  }
                ]
              }
            ]

### Get a canton [GET /api/v1/cantons/{id}]

+ Parameters
    + id: `741` (number, required)

+ Request returns a success response
**GET**&nbsp;&nbsp;`/api/v1/cantons/741`

    + Headers



+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 741,
              "name": "Local 1",
              "description": "description 1",
              "province": "San José",
              "featured_places": [
            
              ]
            }

### Create a canton [POST /api/v1/cantons]


+ Request creates a canton
**POST**&nbsp;&nbsp;`/api/v1/cantons`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            canton%5Bdescription%5D=description+1&canton%5Bname%5D=Canton+1&canton%5Bprovince_id%5D=1045

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 742,
              "name": "Canton 1",
              "description": "description 1",
              "province": "San José",
              "featured_places": [
            
              ]
            }

### Update a canton [PUT /api/v1/cantons/{id}]

+ Parameters
    + id: `745` (number, required)

+ Request updates the requested canton
**PUT**&nbsp;&nbsp;`/api/v1/cantons/745`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            canton%5Bdescription%5D=description+2&canton%5Bname%5D=Canton+2

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 745,
              "name": "Canton 2",
              "description": "description 2",
              "province": "San José",
              "featured_places": [
            
              ]
            }

### Delete a canton [DELETE /api/v1/cantons/{id}]

+ Parameters
    + id: `748` (number, required)

+ Request destroys the requested canton
**DELETE**&nbsp;&nbsp;`/api/v1/cantons/748`

    + Headers

            Content-Type: application/x-www-form-urlencoded

+ Response 204

# Group Categories


## Categories [/categories]
### Resource for Category

### Get categories [GET /api/v1/categories]


+ Request returns a success response
**GET**&nbsp;&nbsp;`/api/v1/categories`

    + Headers



+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            [
              {
                "id": 1,
                "name": "Desserts",
                "subcategories": [
                  {
                    "id": 7,
                    "name": "Realistic fiction",
                    "created_at": "2019-03-04T03:00:17.000Z",
                    "updated_at": "2019-03-04T03:00:17.000Z",
                    "ancestry": "1"
                  },
                  {
                    "id": 14,
                    "name": "Fable",
                    "created_at": "2019-03-04T03:00:17.000Z",
                    "updated_at": "2019-03-04T03:00:17.000Z",
                    "ancestry": "1"
                  },
                  {
                    "id": 19,
                    "name": "Mystery",
                    "created_at": "2019-03-04T03:00:17.000Z",
                    "updated_at": "2019-03-04T03:00:17.000Z",
                    "ancestry": "1"
                  },
                  {
                    "id": 22,
                    "name": "Humor",
                    "created_at": "2019-03-04T03:00:17.000Z",
                    "updated_at": "2019-03-04T03:00:17.000Z",
                    "ancestry": "1"
                  }
                ],
                "places": [
            
                ]
              },
              {
                "id": 2,
                "name": "Burgers",
                "subcategories": [
                  {
                    "id": 20,
                    "name": "Mystery",
                    "created_at": "2019-03-04T03:00:17.000Z",
                    "updated_at": "2019-03-04T03:00:17.000Z",
                    "ancestry": "2"
                  },
                  {
                    "id": 23,
                    "name": "Science fiction",
                    "created_at": "2019-03-04T03:00:17.000Z",
                    "updated_at": "2019-03-04T03:00:17.000Z",
                    "ancestry": "2"
                  }
                ],
                "places": [
            
                ]
              },
              {
                "id": 3,
                "name": "Ice Cream",
                "subcategories": [
                  {
                    "id": 9,
                    "name": "Humor",
                    "created_at": "2019-03-04T03:00:17.000Z",
                    "updated_at": "2019-03-04T03:00:17.000Z",
                    "ancestry": "3"
                  },
                  {
                    "id": 13,
                    "name": "Mythopoeia",
                    "created_at": "2019-03-04T03:00:17.000Z",
                    "updated_at": "2019-03-04T03:00:17.000Z",
                    "ancestry": "3"
                  }
                ],
                "places": [
            
                ]
              },
              {
                "id": 4,
                "name": "Brazilian",
                "subcategories": [
                  {
                    "id": 8,
                    "name": "Narrative nonfiction",
                    "created_at": "2019-03-04T03:00:17.000Z",
                    "updated_at": "2019-03-04T03:00:17.000Z",
                    "ancestry": "4"
                  },
                  {
                    "id": 11,
                    "name": "Humor",
                    "created_at": "2019-03-04T03:00:17.000Z",
                    "updated_at": "2019-03-04T03:00:17.000Z",
                    "ancestry": "4"
                  },
                  {
                    "id": 12,
                    "name": "Textbook",
                    "created_at": "2019-03-04T03:00:17.000Z",
                    "updated_at": "2019-03-04T03:00:17.000Z",
                    "ancestry": "4"
                  }
                ],
                "places": [
                  {
                    "id": 5,
                    "name": "Hungry Steakhouse",
                    "telephone": "621.531.6434 x65114",
                    "email": "emely@goodwinlittel.org",
                    "latitude": "-31.295967",
                    "longitude": "96.979947",
                    "province": "Heredia",
                    "canton": "Lake Antwanton",
                    "district": "West Gailfort"
                  }
                ]
              },
              {
                "id": 5,
                "name": "European",
                "subcategories": [
                  {
                    "id": 6,
                    "name": "Biography/Autobiography",
                    "created_at": "2019-03-04T03:00:17.000Z",
                    "updated_at": "2019-03-04T03:00:17.000Z",
                    "ancestry": "5"
                  },
                  {
                    "id": 10,
                    "name": "Suspense/Thriller",
                    "created_at": "2019-03-04T03:00:17.000Z",
                    "updated_at": "2019-03-04T03:00:17.000Z",
                    "ancestry": "5"
                  },
                  {
                    "id": 15,
                    "name": "Metafiction",
                    "created_at": "2019-03-04T03:00:17.000Z",
                    "updated_at": "2019-03-04T03:00:17.000Z",
                    "ancestry": "5"
                  },
                  {
                    "id": 16,
                    "name": "Science fiction",
                    "created_at": "2019-03-04T03:00:17.000Z",
                    "updated_at": "2019-03-04T03:00:17.000Z",
                    "ancestry": "5"
                  },
                  {
                    "id": 17,
                    "name": "Legend",
                    "created_at": "2019-03-04T03:00:17.000Z",
                    "updated_at": "2019-03-04T03:00:17.000Z",
                    "ancestry": "5"
                  },
                  {
                    "id": 18,
                    "name": "Humor",
                    "created_at": "2019-03-04T03:00:17.000Z",
                    "updated_at": "2019-03-04T03:00:17.000Z",
                    "ancestry": "5"
                  },
                  {
                    "id": 21,
                    "name": "Short story",
                    "created_at": "2019-03-04T03:00:17.000Z",
                    "updated_at": "2019-03-04T03:00:17.000Z",
                    "ancestry": "5"
                  },
                  {
                    "id": 24,
                    "name": "Metafiction",
                    "created_at": "2019-03-04T03:00:17.000Z",
                    "updated_at": "2019-03-04T03:00:17.000Z",
                    "ancestry": "5"
                  },
                  {
                    "id": 25,
                    "name": "Realistic fiction",
                    "created_at": "2019-03-04T03:00:17.000Z",
                    "updated_at": "2019-03-04T03:00:17.000Z",
                    "ancestry": "5"
                  }
                ],
                "places": [
            
                ]
              },
              {
                "id": 6,
                "name": "Biography/Autobiography",
                "subcategories": [
            
                ],
                "places": [
            
                ]
              },
              {
                "id": 7,
                "name": "Realistic fiction",
                "subcategories": [
            
                ],
                "places": [
                  {
                    "id": 5,
                    "name": "Hungry Steakhouse",
                    "telephone": "621.531.6434 x65114",
                    "email": "emely@goodwinlittel.org",
                    "latitude": "-31.295967",
                    "longitude": "96.979947",
                    "province": "Heredia",
                    "canton": "Lake Antwanton",
                    "district": "West Gailfort"
                  },
                  {
                    "id": 4,
                    "name": "Thirsty Shakes",
                    "telephone": "862-369-1004",
                    "email": "percy@goldner.info",
                    "latitude": "89.697007",
                    "longitude": "-83.927877",
                    "province": "Heredia",
                    "canton": "Feliciatown",
                    "district": "Larsonport"
                  }
                ]
              },
              {
                "id": 8,
                "name": "Narrative nonfiction",
                "subcategories": [
            
                ],
                "places": [
            
                ]
              },
              {
                "id": 9,
                "name": "Humor",
                "subcategories": [
            
                ],
                "places": [
                  {
                    "id": 7,
                    "name": "Sugar Juice Bar",
                    "telephone": "(636) 918-1765 x451",
                    "email": "gita@romaguera.org",
                    "latitude": "-87.517659",
                    "longitude": "3.708248",
                    "province": "Guanacaste",
                    "canton": "West Raylene",
                    "district": "Hirthechester"
                  }
                ]
              },
              {
                "id": 10,
                "name": "Suspense/Thriller",
                "subcategories": [
            
                ],
                "places": [
                  {
                    "id": 10,
                    "name": "Sweet King",
                    "telephone": "(211) 492-3437",
                    "email": "efren@schimmelhettinger.org",
                    "latitude": "-86.768653",
                    "longitude": "-144.110571",
                    "province": "Guanacaste",
                    "canton": "West Raylene",
                    "district": "Hirthechester"
                  }
                ]
              },
              {
                "id": 11,
                "name": "Humor",
                "subcategories": [
            
                ],
                "places": [
            
                ]
              },
              {
                "id": 12,
                "name": "Textbook",
                "subcategories": [
            
                ],
                "places": [
            
                ]
              },
              {
                "id": 13,
                "name": "Mythopoeia",
                "subcategories": [
            
                ],
                "places": [
            
                ]
              },
              {
                "id": 14,
                "name": "Fable",
                "subcategories": [
            
                ],
                "places": [
            
                ]
              },
              {
                "id": 15,
                "name": "Metafiction",
                "subcategories": [
            
                ],
                "places": [
            
                ]
              },
              {
                "id": 16,
                "name": "Science fiction",
                "subcategories": [
            
                ],
                "places": [
            
                ]
              },
              {
                "id": 17,
                "name": "Legend",
                "subcategories": [
            
                ],
                "places": [
            
                ]
              },
              {
                "id": 18,
                "name": "Humor",
                "subcategories": [
            
                ],
                "places": [
            
                ]
              },
              {
                "id": 19,
                "name": "Mystery",
                "subcategories": [
            
                ],
                "places": [
            
                ]
              },
              {
                "id": 20,
                "name": "Mystery",
                "subcategories": [
            
                ],
                "places": [
            
                ]
              },
              {
                "id": 21,
                "name": "Short story",
                "subcategories": [
            
                ],
                "places": [
            
                ]
              },
              {
                "id": 22,
                "name": "Humor",
                "subcategories": [
            
                ],
                "places": [
            
                ]
              },
              {
                "id": 23,
                "name": "Science fiction",
                "subcategories": [
            
                ],
                "places": [
            
                ]
              },
              {
                "id": 24,
                "name": "Metafiction",
                "subcategories": [
            
                ],
                "places": [
            
                ]
              },
              {
                "id": 25,
                "name": "Realistic fiction",
                "subcategories": [
            
                ],
                "places": [
            
                ]
              }
            ]

### Get a category [GET /api/v1/categories/{id}]

+ Parameters
    + id: `75` (number, required)

+ Request returns a success response
**GET**&nbsp;&nbsp;`/api/v1/categories/75`

    + Headers



+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 75,
              "name": "Category 1",
              "subcategories": [
            
              ],
              "places": [
            
              ]
            }

### Create a category [POST /api/v1/categories]


+ Request creates a new Category
**POST**&nbsp;&nbsp;`/api/v1/categories`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            category%5Bname%5D=Category+1

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 76,
              "name": "Category 1",
              "subcategories": [
            
              ],
              "places": [
            
              ]
            }

+ Request renders a JSON response with the new category
**POST**&nbsp;&nbsp;`/api/v1/categories`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            category%5Bname%5D=Category+1

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 77,
              "name": "Category 1",
              "subcategories": [
            
              ],
              "places": [
            
              ]
            }

### Update a category [PUT /api/v1/categories/{id}]

+ Parameters
    + id: `78` (number, required)

+ Request updates the requested category
**PUT**&nbsp;&nbsp;`/api/v1/categories/78`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            category%5Bname%5D=Category+2

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 78,
              "name": "Category 2",
              "subcategories": [
            
              ],
              "places": [
            
              ]
            }

### Delete a category [DELETE /api/v1/categories/{id}]

+ Parameters
    + id: `81` (number, required)

+ Request destroys the requested category
**DELETE**&nbsp;&nbsp;`/api/v1/categories/81`

    + Headers

            Content-Type: application/x-www-form-urlencoded

+ Response 204

# Group Districts


## Districts [/districts]
### Resource for District

### Get districts [GET /api/v1/districts]


+ Request returns a success response
**GET**&nbsp;&nbsp;`/api/v1/districts`

    + Headers



+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            [
              {
                "id": 1,
                "name": "Kimfort",
                "description": "Ducimus fugit voluptas. Quia praesentium non. Sint quaerat at.",
                "canton": "Feliciatown",
                "province": "Heredia",
                "featured_places": [
            
                ]
              },
              {
                "id": 2,
                "name": "Larsonport",
                "description": "Alias natus reprehenderit. Assumenda quibusdam adipisci. Consequatur facilis possimus.",
                "canton": "Feliciatown",
                "province": "Heredia",
                "featured_places": [
                  {
                    "id": 4,
                    "name": "Thirsty Shakes",
                    "telephone": "862-369-1004",
                    "email": "percy@goldner.info",
                    "latitude": "89.697007",
                    "longitude": "-83.927877",
                    "created_at": "2019-03-04T03:00:17.000Z",
                    "updated_at": "2019-03-04T03:00:17.000Z",
                    "province_id": 3,
                    "canton_id": 1,
                    "district_id": 2
                  },
                  {
                    "id": 6,
                    "name": "UFC Eats",
                    "telephone": "(296) 829-4588 x36866",
                    "email": "tracey@weimann.io",
                    "latitude": "23.701345",
                    "longitude": "7.352123",
                    "created_at": "2019-03-04T03:00:17.000Z",
                    "updated_at": "2019-03-04T03:00:17.000Z",
                    "province_id": 3,
                    "canton_id": 1,
                    "district_id": 2
                  },
                  {
                    "id": 9,
                    "name": "Red Gastropub",
                    "telephone": "(121) 060-3813 x6715",
                    "email": "franciscokub@cartwrightflatley.co",
                    "latitude": "-30.527933",
                    "longitude": "-154.284208",
                    "created_at": "2019-03-04T03:00:17.000Z",
                    "updated_at": "2019-03-04T03:00:17.000Z",
                    "province_id": 3,
                    "canton_id": 1,
                    "district_id": 2
                  }
                ]
              },
              {
                "id": 3,
                "name": "New Almeta",
                "description": "Necessitatibus id repudiandae. Odit qui error. Est et dolorem.",
                "canton": "Lake Antwanton",
                "province": "Heredia",
                "featured_places": [
            
                ]
              },
              {
                "id": 4,
                "name": "Hirthechester",
                "description": "Fugiat ex aliquam. Molestias nisi est. Et est aliquid.",
                "canton": "West Raylene",
                "province": "Guanacaste",
                "featured_places": [
                  {
                    "id": 2,
                    "name": "Orange Bakery",
                    "telephone": "(994) 334-1029 x9266",
                    "email": "melonypollich@schuster.net",
                    "latitude": "-32.023791",
                    "longitude": "145.849755",
                    "created_at": "2019-03-04T03:00:17.000Z",
                    "updated_at": "2019-03-04T03:00:17.000Z",
                    "province_id": 4,
                    "canton_id": 5,
                    "district_id": 4
                  },
                  {
                    "id": 3,
                    "name": "Blue Eats",
                    "telephone": "615-552-3468 x2643",
                    "email": "tyler@howell.net",
                    "latitude": "-34.225136",
                    "longitude": "-127.236493",
                    "created_at": "2019-03-04T03:00:17.000Z",
                    "updated_at": "2019-03-04T03:00:17.000Z",
                    "province_id": 4,
                    "canton_id": 5,
                    "district_id": 4
                  },
                  {
                    "id": 7,
                    "name": "Sugar Juice Bar",
                    "telephone": "(636) 918-1765 x451",
                    "email": "gita@romaguera.org",
                    "latitude": "-87.517659",
                    "longitude": "3.708248",
                    "created_at": "2019-03-04T03:00:17.000Z",
                    "updated_at": "2019-03-04T03:00:17.000Z",
                    "province_id": 4,
                    "canton_id": 5,
                    "district_id": 4
                  },
                  {
                    "id": 8,
                    "name": "363 Sushi",
                    "telephone": "(420) 040-6288 x66638",
                    "email": "darryltorp@kuphal.info",
                    "latitude": "12.368489",
                    "longitude": "66.939148",
                    "created_at": "2019-03-04T03:00:17.000Z",
                    "updated_at": "2019-03-04T03:00:17.000Z",
                    "province_id": 4,
                    "canton_id": 5,
                    "district_id": 4
                  },
                  {
                    "id": 10,
                    "name": "Sweet King",
                    "telephone": "(211) 492-3437",
                    "email": "efren@schimmelhettinger.org",
                    "latitude": "-86.768653",
                    "longitude": "-144.110571",
                    "created_at": "2019-03-04T03:00:17.000Z",
                    "updated_at": "2019-03-04T03:00:17.000Z",
                    "province_id": 4,
                    "canton_id": 5,
                    "district_id": 4
                  }
                ]
              },
              {
                "id": 5,
                "name": "West Gailfort",
                "description": "Est fugiat consequatur. Libero error eaque. Hic numquam eius.",
                "canton": "Lake Antwanton",
                "province": "Heredia",
                "featured_places": [
                  {
                    "id": 1,
                    "name": "Sugar King",
                    "telephone": "545-980-6815 x498",
                    "email": "rae@jacobsonframi.io",
                    "latitude": "-6.837223",
                    "longitude": "46.560364",
                    "created_at": "2019-03-04T03:00:17.000Z",
                    "updated_at": "2019-03-04T03:00:17.000Z",
                    "province_id": 3,
                    "canton_id": 2,
                    "district_id": 5
                  },
                  {
                    "id": 5,
                    "name": "Hungry Steakhouse",
                    "telephone": "621.531.6434 x65114",
                    "email": "emely@goodwinlittel.org",
                    "latitude": "-31.295967",
                    "longitude": "96.979947",
                    "created_at": "2019-03-04T03:00:17.000Z",
                    "updated_at": "2019-03-04T03:00:17.000Z",
                    "province_id": 3,
                    "canton_id": 2,
                    "district_id": 5
                  }
                ]
              }
            ]

### Get a district [GET /api/v1/districts/{id}]

+ Parameters
    + id: `384` (number, required)

+ Request returns a success response
**GET**&nbsp;&nbsp;`/api/v1/districts/384`

    + Headers



+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 384,
              "name": "District 1",
              "description": "description 1",
              "canton": "Rodrigomouth",
              "province": "San José",
              "featured_places": [
            
              ]
            }

### Create a district [POST /api/v1/districts]


+ Request creates a district
**POST**&nbsp;&nbsp;`/api/v1/districts`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            district%5Bcanton_id%5D=750&district%5Bdescription%5D=description+1&district%5Bname%5D=District+1

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 385,
              "name": "District 1",
              "description": "description 1",
              "canton": "Koeppbury",
              "province": "San José",
              "featured_places": [
            
              ]
            }

+ Request returns status code created
**POST**&nbsp;&nbsp;`/api/v1/districts`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            district%5Bcanton_id%5D=751&district%5Bdescription%5D=description+1&district%5Bname%5D=District+1

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 386,
              "name": "District 1",
              "description": "description 1",
              "canton": "Lavonemouth",
              "province": "San José",
              "featured_places": [
            
              ]
            }

+ Request validate @district
**POST**&nbsp;&nbsp;`/api/v1/districts`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            district%5Bcanton_id%5D=752&district%5Bdescription%5D=description+1&district%5Bname%5D=District+1

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 387,
              "name": "District 1",
              "description": "description 1",
              "canton": "Schadenport",
              "province": "San José",
              "featured_places": [
            
              ]
            }

### Update a district [PUT /api/v1/districts/{id}]

+ Parameters
    + id: `388` (number, required)

+ Request updates the requested district
**PUT**&nbsp;&nbsp;`/api/v1/districts/388`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            district%5Bdescription%5D=description+2&district%5Bname%5D=District+2

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 388,
              "name": "District 2",
              "description": "description 2",
              "canton": "West Ike",
              "province": "San José",
              "featured_places": [
            
              ]
            }

+ Request renders a JSON response with the district
**PUT**&nbsp;&nbsp;`/api/v1/districts/389`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            district%5Bcanton%5D=754&district%5Bdescription%5D=description+1&district%5Bname%5D=District+1

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 389,
              "name": "District 1",
              "description": "description 1",
              "canton": "Lake Tangelachester",
              "province": "San José",
              "featured_places": [
            
              ]
            }

### Delete a district [DELETE /api/v1/districts/{id}]

+ Parameters
    + id: `391` (number, required)

+ Request destroys the requested district
**DELETE**&nbsp;&nbsp;`/api/v1/districts/391`

    + Headers

            Content-Type: application/x-www-form-urlencoded

+ Response 204

# Group Places


## Places [/places]
### Resource for Place

### Get places [GET /api/v1/places]


+ Request returns a success response
**GET**&nbsp;&nbsp;`/api/v1/places`

    + Headers



+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            [
              {
                "id": 1,
                "name": "Sugar King",
                "telephone": "545-980-6815 x498",
                "email": "rae@jacobsonframi.io",
                "latitude": "-6.837223",
                "longitude": "46.560364",
                "province": "Heredia",
                "canton": "Lake Antwanton",
                "district": "West Gailfort",
                "categories": [
            
                ]
              },
              {
                "id": 2,
                "name": "Orange Bakery",
                "telephone": "(994) 334-1029 x9266",
                "email": "melonypollich@schuster.net",
                "latitude": "-32.023791",
                "longitude": "145.849755",
                "province": "Guanacaste",
                "canton": "West Raylene",
                "district": "Hirthechester",
                "categories": [
            
                ]
              },
              {
                "id": 3,
                "name": "Blue Eats",
                "telephone": "615-552-3468 x2643",
                "email": "tyler@howell.net",
                "latitude": "-34.225136",
                "longitude": "-127.236493",
                "province": "Guanacaste",
                "canton": "West Raylene",
                "district": "Hirthechester",
                "categories": [
            
                ]
              },
              {
                "id": 4,
                "name": "Thirsty Shakes",
                "telephone": "862-369-1004",
                "email": "percy@goldner.info",
                "latitude": "89.697007",
                "longitude": "-83.927877",
                "province": "Heredia",
                "canton": "Feliciatown",
                "district": "Larsonport",
                "categories": [
                  {
                    "id": 7,
                    "name": "Realistic fiction",
                    "subcategories": [
            
                    ]
                  }
                ]
              },
              {
                "id": 5,
                "name": "Hungry Steakhouse",
                "telephone": "621.531.6434 x65114",
                "email": "emely@goodwinlittel.org",
                "latitude": "-31.295967",
                "longitude": "96.979947",
                "province": "Heredia",
                "canton": "Lake Antwanton",
                "district": "West Gailfort",
                "categories": [
                  {
                    "id": 7,
                    "name": "Realistic fiction",
                    "subcategories": [
            
                    ]
                  },
                  {
                    "id": 4,
                    "name": "Brazilian",
                    "subcategories": [
                      {
                        "id": 8,
                        "name": "Narrative nonfiction",
                        "created_at": "2019-03-04T03:00:17.000Z",
                        "updated_at": "2019-03-04T03:00:17.000Z",
                        "ancestry": "4"
                      },
                      {
                        "id": 11,
                        "name": "Humor",
                        "created_at": "2019-03-04T03:00:17.000Z",
                        "updated_at": "2019-03-04T03:00:17.000Z",
                        "ancestry": "4"
                      },
                      {
                        "id": 12,
                        "name": "Textbook",
                        "created_at": "2019-03-04T03:00:17.000Z",
                        "updated_at": "2019-03-04T03:00:17.000Z",
                        "ancestry": "4"
                      }
                    ]
                  }
                ]
              },
              {
                "id": 6,
                "name": "UFC Eats",
                "telephone": "(296) 829-4588 x36866",
                "email": "tracey@weimann.io",
                "latitude": "23.701345",
                "longitude": "7.352123",
                "province": "Heredia",
                "canton": "Feliciatown",
                "district": "Larsonport",
                "categories": [
            
                ]
              },
              {
                "id": 7,
                "name": "Sugar Juice Bar",
                "telephone": "(636) 918-1765 x451",
                "email": "gita@romaguera.org",
                "latitude": "-87.517659",
                "longitude": "3.708248",
                "province": "Guanacaste",
                "canton": "West Raylene",
                "district": "Hirthechester",
                "categories": [
                  {
                    "id": 9,
                    "name": "Humor",
                    "subcategories": [
            
                    ]
                  }
                ]
              },
              {
                "id": 8,
                "name": "363 Sushi",
                "telephone": "(420) 040-6288 x66638",
                "email": "darryltorp@kuphal.info",
                "latitude": "12.368489",
                "longitude": "66.939148",
                "province": "Guanacaste",
                "canton": "West Raylene",
                "district": "Hirthechester",
                "categories": [
            
                ]
              },
              {
                "id": 9,
                "name": "Red Gastropub",
                "telephone": "(121) 060-3813 x6715",
                "email": "franciscokub@cartwrightflatley.co",
                "latitude": "-30.527933",
                "longitude": "-154.284208",
                "province": "Heredia",
                "canton": "Feliciatown",
                "district": "Larsonport",
                "categories": [
            
                ]
              },
              {
                "id": 10,
                "name": "Sweet King",
                "telephone": "(211) 492-3437",
                "email": "efren@schimmelhettinger.org",
                "latitude": "-86.768653",
                "longitude": "-144.110571",
                "province": "Guanacaste",
                "canton": "West Raylene",
                "district": "Hirthechester",
                "categories": [
                  {
                    "id": 10,
                    "name": "Suspense/Thriller",
                    "subcategories": [
            
                    ]
                  }
                ]
              }
            ]

### Get a place [GET /api/v1/places/{id}]

+ Parameters
    + id: `333` (number, required)

+ Request returns a success response
**GET**&nbsp;&nbsp;`/api/v1/places/333`

    + Headers



+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 333,
              "name": "Local 1",
              "telephone": "435-604-5688",
              "email": "local1@example.com",
              "latitude": "-23.504078",
              "longitude": "137.031614",
              "province": "San José",
              "canton": "North Hal",
              "district": "New Christopher",
              "categories": [
            
              ]
            }

### Create a place [POST /api/v1/places]


+ Request creates a topic
**POST**&nbsp;&nbsp;`/api/v1/places`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            place%5Bcanton_id%5D=759&place%5Bdistrict_id%5D=393&place%5Bemail%5D=local1%40example.com&place%5Blatitude%5D=-18.991440239632368&place%5Blongitude%5D=119.58467982524184&place%5Bname%5D=Local+1&place%5Bprovince_id%5D=1063&place%5Btelephone%5D=435-604-5688

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 334,
              "name": "Local 1",
              "telephone": "435-604-5688",
              "email": "local1@example.com",
              "latitude": "-18.99144",
              "longitude": "119.58468",
              "province": "San José",
              "canton": "Lake Laquita",
              "district": "Toryville",
              "categories": [
            
              ]
            }

+ Request returns status code created
**POST**&nbsp;&nbsp;`/api/v1/places`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            place%5Bcanton_id%5D=760&place%5Bdistrict_id%5D=394&place%5Bemail%5D=local1%40example.com&place%5Blatitude%5D=29.283323601468112&place%5Blongitude%5D=-170.8960920684179&place%5Bname%5D=Local+1&place%5Bprovince_id%5D=1064&place%5Btelephone%5D=435-604-5688

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 335,
              "name": "Local 1",
              "telephone": "435-604-5688",
              "email": "local1@example.com",
              "latitude": "29.283324",
              "longitude": "-170.896092",
              "province": "San José",
              "canton": "Toneyburgh",
              "district": "Millsfurt",
              "categories": [
            
              ]
            }

+ Request validate @place
**POST**&nbsp;&nbsp;`/api/v1/places`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            place%5Bcanton_id%5D=761&place%5Bdistrict_id%5D=395&place%5Bemail%5D=local1%40example.com&place%5Blatitude%5D=87.64212502890857&place%5Blongitude%5D=-97.89267003569391&place%5Bname%5D=Local+1&place%5Bprovince_id%5D=1065&place%5Btelephone%5D=435-604-5688

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 336,
              "name": "Local 1",
              "telephone": "435-604-5688",
              "email": "local1@example.com",
              "latitude": "87.642125",
              "longitude": "-97.89267",
              "province": "San José",
              "canton": "East Stefan",
              "district": "Myrlstad",
              "categories": [
            
              ]
            }

+ Request return status code unprocessable_entity
**POST**&nbsp;&nbsp;`/api/v1/places`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            place%5Bname%5D=

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "name": [
                "can't be blank"
              ],
              "telephone": [
                "can't be blank"
              ],
              "email": [
                "can't be blank"
              ],
              "latitude": [
                "can't be blank"
              ],
              "longitude": [
                "can't be blank"
              ],
              "province": [
                "must exist"
              ],
              "canton": [
                "must exist"
              ],
              "district": [
                "must exist"
              ]
            }

### Update a place [PUT /api/v1/places/{id}]

+ Parameters
    + id: `337` (number, required)

+ Request updates the requested place
**PUT**&nbsp;&nbsp;`/api/v1/places/337`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            place%5Bemail%5D=local2%40example.com&place%5Blatitude%5D=23.650090094908634&place%5Blongitude%5D=-77.50659344229351&place%5Bname%5D=Local+2&place%5Btelephone%5D=436-604-5688

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 337,
              "name": "Local 2",
              "telephone": "436-604-5688",
              "email": "local2@example.com",
              "latitude": "23.65009",
              "longitude": "-77.506593",
              "province": "San José",
              "canton": "Lake Serenachester",
              "district": "North Vasilikiborough",
              "categories": [
            
              ]
            }

+ Request renders a JSON response with errors for the place
**PUT**&nbsp;&nbsp;`/api/v1/places/339`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            place%5Bemail%5D=&place%5Bname%5D=&place%5Btelephone%5D=

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "name": [
                "can't be blank"
              ],
              "telephone": [
                "can't be blank"
              ],
              "email": [
                "can't be blank"
              ]
            }

### Delete a place [DELETE /api/v1/places/{id}]

+ Parameters
    + id: `340` (number, required)

+ Request destroys the requested place
**DELETE**&nbsp;&nbsp;`/api/v1/places/340`

    + Headers

            Content-Type: application/x-www-form-urlencoded

+ Response 204
