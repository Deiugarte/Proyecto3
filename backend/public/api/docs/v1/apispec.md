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
                "id": 26,
                "provider": "email",
                "uid": "billgates@email.com",
                "allow_password_change": false,
                "username": "billgates",
                "image": null,
                "email": "billgates@email.com",
                "created_at": "2019-04-07T16:30:46.000Z",
                "updated_at": "2019-04-07T16:30:46.000Z"
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
                "id": 27,
                "provider": "email",
                "uid": "billgates@email.com",
                "allow_password_change": false,
                "username": "billgates",
                "image": null,
                "email": "billgates@email.com",
                "created_at": "2019-04-07T16:30:46.000Z",
                "updated_at": "2019-04-07T16:30:46.000Z"
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
                "id": 28,
                "provider": "email",
                "uid": "billgates@email.com",
                "allow_password_change": false,
                "username": "billgates",
                "image": null,
                "email": "billgates@email.com",
                "created_at": "2019-04-07T16:30:46.000Z",
                "updated_at": "2019-04-07T16:30:46.000Z"
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
                "id": 29,
                "provider": "email",
                "uid": "billgates@email.com",
                "allow_password_change": false,
                "username": "billgates",
                "image": null,
                "email": "billgates@email.com",
                "created_at": "2019-04-07T16:30:46.000Z",
                "updated_at": "2019-04-07T16:30:46.000Z"
              }
            }

### Update User Info [PUT /auth]
Update info for existing user

+ Request also updates his personal information
**PUT**&nbsp;&nbsp;`/api/v1/auth`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            registration%5Bperson_attributes%5D%5Bfirst_name%5D=my_new_first_name&registration%5Buser_id%5D=30

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "status": "success",
              "data": {
                "id": 30,
                "email": "major@cruickshank.biz",
                "provider": "email",
                "username": "jimmy.ohara",
                "uid": "major@cruickshank.biz",
                "allow_password_change": false,
                "image": null,
                "created_at": "2019-04-07T16:30:46.000Z",
                "updated_at": "2019-04-07T16:30:46.000Z"
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



### Get a canton [GET /api/v1/cantons/{id}]

+ Parameters
    + id: `1` (number, required)

+ Request returns a success response
**GET**&nbsp;&nbsp;`/api/v1/cantons/1`

    + Headers



+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 1,
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

            canton%5Bdescription%5D=description+1&canton%5Bname%5D=Canton+1&canton%5Bprovince_id%5D=2

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 2,
              "name": "Canton 1",
              "description": "description 1",
              "province": "San José",
              "featured_places": [
            
              ]
            }

### Update a canton [PUT /api/v1/cantons/{id}]

+ Parameters
    + id: `5` (number, required)

+ Request updates the requested canton
**PUT**&nbsp;&nbsp;`/api/v1/cantons/5`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            canton%5Bdescription%5D=description+2&canton%5Bname%5D=Canton+2

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 5,
              "name": "Canton 2",
              "description": "description 2",
              "province": "San José",
              "featured_places": [
            
              ]
            }

### Delete a canton [DELETE /api/v1/cantons/{id}]

+ Parameters
    + id: `8` (number, required)

+ Request destroys the requested canton
**DELETE**&nbsp;&nbsp;`/api/v1/cantons/8`

    + Headers

            Content-Type: application/x-www-form-urlencoded

+ Response 204

    + Body

            {"id":8,"name":"Local 1","description":"description 1","province":"San José","featured_places":[]}

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



### Get a category [GET /api/v1/categories/{id}]

+ Parameters
    + id: `1` (number, required)

+ Request returns a success response
**GET**&nbsp;&nbsp;`/api/v1/categories/1`

    + Headers



+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 1,
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
              "id": 2,
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
              "id": 3,
              "name": "Category 1",
              "subcategories": [
            
              ],
              "places": [
            
              ]
            }

### Update a category [PUT /api/v1/categories/{id}]

+ Parameters
    + id: `4` (number, required)

+ Request updates the requested category
**PUT**&nbsp;&nbsp;`/api/v1/categories/4`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            category%5Bname%5D=Category+2

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 4,
              "name": "Category 2",
              "subcategories": [
            
              ],
              "places": [
            
              ]
            }

### Delete a category [DELETE /api/v1/categories/{id}]

+ Parameters
    + id: `7` (number, required)

+ Request destroys the requested category
**DELETE**&nbsp;&nbsp;`/api/v1/categories/7`

    + Headers

            Content-Type: application/x-www-form-urlencoded

+ Response 204

    + Body

            {"id":7,"name":"Category 1","subcategories":[],"places":[]}

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



### Get a district [GET /api/v1/districts/{id}]

+ Parameters
    + id: `1` (number, required)

+ Request returns a success response
**GET**&nbsp;&nbsp;`/api/v1/districts/1`

    + Headers



+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 1,
              "name": "District 1",
              "description": "description 1",
              "canton": "Alitafort",
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

            district%5Bcanton_id%5D=10&district%5Bdescription%5D=description+1&district%5Bname%5D=District+1

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 2,
              "name": "District 1",
              "description": "description 1",
              "canton": "Port Adan",
              "province": "San José",
              "featured_places": [
            
              ]
            }

+ Request returns status code created
**POST**&nbsp;&nbsp;`/api/v1/districts`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            district%5Bcanton_id%5D=11&district%5Bdescription%5D=description+1&district%5Bname%5D=District+1

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 3,
              "name": "District 1",
              "description": "description 1",
              "canton": "Nolaland",
              "province": "San José",
              "featured_places": [
            
              ]
            }

+ Request validate @district
**POST**&nbsp;&nbsp;`/api/v1/districts`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            district%5Bcanton_id%5D=12&district%5Bdescription%5D=description+1&district%5Bname%5D=District+1

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 4,
              "name": "District 1",
              "description": "description 1",
              "canton": "Ivanhaven",
              "province": "San José",
              "featured_places": [
            
              ]
            }

### Update a district [PUT /api/v1/districts/{id}]

+ Parameters
    + id: `5` (number, required)

+ Request updates the requested district
**PUT**&nbsp;&nbsp;`/api/v1/districts/5`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            district%5Bdescription%5D=description+2&district%5Bname%5D=District+2

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 5,
              "name": "District 2",
              "description": "description 2",
              "canton": "Micheltown",
              "province": "San José",
              "featured_places": [
            
              ]
            }

+ Request renders a JSON response with the district
**PUT**&nbsp;&nbsp;`/api/v1/districts/6`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            district%5Bcanton%5D=14&district%5Bdescription%5D=description+1&district%5Bname%5D=District+1

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 6,
              "name": "District 1",
              "description": "description 1",
              "canton": "Predovictown",
              "province": "San José",
              "featured_places": [
            
              ]
            }

### Delete a district [DELETE /api/v1/districts/{id}]

+ Parameters
    + id: `8` (number, required)

+ Request destroys the requested district
**DELETE**&nbsp;&nbsp;`/api/v1/districts/8`

    + Headers

            Content-Type: application/x-www-form-urlencoded

+ Response 204

    + Body

            {"id":8,"name":"District 1","description":"description 1","canton":"Marishastad","province":"San José","featured_places":[]}

# Group Logs


## Logs [/logs]
### Resource for Log

### Get logs [GET /api/v1/logs]


+ Request returns a success response
**GET**&nbsp;&nbsp;`/api/v1/logs`

    + Headers



+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body



### Get a log [GET /api/v1/logs/{id}]

+ Parameters
    + id: `1` (number, required)

+ Request returns a success response
**GET**&nbsp;&nbsp;`/api/v1/logs/1`

    + Headers



+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 1,
              "description": null,
              "latitude": "-65.698851",
              "longitude": "-29.219738",
              "user": {
                "id": 1,
                "provider": "email",
                "uid": "shawana@nolan.info",
                "allow_password_change": false,
                "username": "kenny",
                "image": null,
                "email": "shawana@nolan.info",
                "created_at": "2019-04-07T16:30:19.000Z",
                "updated_at": "2019-04-07T16:30:19.000Z"
              },
              "place": {
                "id": 1,
                "name": "Sugar Pizza",
                "telephone": "(727) 596-3929",
                "email": "shannanpadberg@waelchifarrell.biz",
                "latitude": "44.852158",
                "longitude": "-61.773817",
                "address": "Green Island",
                "province": "San José",
                "canton": "Sengerberg",
                "district": "East Nicolasview"
              }
            }

### Create a log [POST /api/v1/logs]


+ Request creates a new Log
**POST**&nbsp;&nbsp;`/api/v1/logs`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            log%5Blatitude%5D=58.10760006908433&log%5Blongitude%5D=-33.99309005255867&log%5Bplace%5D=2&log%5Buser%5D=3

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 2,
              "description": null,
              "latitude": "58.1076",
              "longitude": "-33.99309",
              "user": {
                "id": 2,
                "provider": "email",
                "uid": "latonia@keebler.biz",
                "allow_password_change": false,
                "username": "liliana_welch",
                "image": null,
                "email": "latonia@keebler.biz",
                "created_at": "2019-04-07T16:30:20.000Z",
                "updated_at": "2019-04-07T16:30:20.000Z"
              },
              "place": null
            }

+ Request renders a JSON response with the new log
**POST**&nbsp;&nbsp;`/api/v1/logs`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            log%5Blatitude%5D=68.14383036134595&log%5Blongitude%5D=17.030613161295406&log%5Bplace%5D=3&log%5Buser%5D=5

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 3,
              "description": null,
              "latitude": "68.14383",
              "longitude": "17.030613",
              "user": {
                "id": 4,
                "provider": "email",
                "uid": "sabra@osinskilynch.org",
                "allow_password_change": false,
                "username": "eleonore_kuphal",
                "image": null,
                "email": "sabra@osinskilynch.org",
                "created_at": "2019-04-07T16:30:20.000Z",
                "updated_at": "2019-04-07T16:30:21.000Z"
              },
              "place": null
            }

+ Request renders a JSON response with errors for the new log
**POST**&nbsp;&nbsp;`/api/v1/logs`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            log%5Blatitude%5D=

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "latitude": [
                "can't be blank"
              ],
              "longitude": [
                "can't be blank"
              ]
            }

+ Request returns a 401
**POST**&nbsp;&nbsp;`/api/v1/logs`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            log%5Blatitude%5D=-12.188232913162068&log%5Blongitude%5D=92.53152242646564&log%5Bplace%5D=4&log%5Buser%5D=7

+ Response 401

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "errors": [
                "You need to sign in or sign up before continuing."
              ]
            }

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



### Get a place [GET /api/v1/places/{id}]

+ Parameters
    + id: `5` (number, required)

+ Request returns a success response
**GET**&nbsp;&nbsp;`/api/v1/places/5`

    + Headers



+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 5,
              "name": "Green Spoon",
              "telephone": "508.985.2101 x4714",
              "email": "mohammadrolfson@vonrueden.name",
              "latitude": "36.607233",
              "longitude": "-131.779205",
              "address": null,
              "province": "San José",
              "canton": "North Yuki",
              "district": "North Gene",
              "categories": [
            
              ]
            }

### Get nearby places 16km radius [GET /api/v1/places/{id}/nearby]

+ Parameters
    + id: `7` (number, required)

+ Request returns a success response
**GET**&nbsp;&nbsp;`/api/v1/places/7/nearby`

    + Headers



+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            [
              {
                "id": 6,
                "name": "La Princesa Marina",
                "telephone": "689-500-7226",
                "email": "antione@denesik.biz",
                "latitude": "9.93446",
                "longitude": "-84.110361",
                "address": "La Princesa Marina, Avenida 4, Rancho Luna, Mata Redonda, Cantón San José, Provincia San José, 10108, Costa Rica",
                "province": "San José",
                "canton": "West Vicenta",
                "district": "Emikofurt",
                "categories": [
            
                ]
              }
            ]

### Create a place [POST /api/v1/places]


+ Request creates a place
**POST**&nbsp;&nbsp;`/api/v1/places`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            place%5Bcanton_id%5D=23&place%5Bdistrict_id%5D=15&place%5Bemail%5D=local1%40example.com&place%5Blatitude%5D=50.20781993297189&place%5Blongitude%5D=176.44528777184325&place%5Bname%5D=Local+1&place%5Bprovince_id%5D=23&place%5Btelephone%5D=435-604-5688

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 8,
              "name": "Local 1",
              "telephone": "435-604-5688",
              "email": "local1@example.com",
              "latitude": "50.20782",
              "longitude": "176.445288",
              "address": null,
              "province": "San José",
              "canton": "Lake Vickeymouth",
              "district": "Considineshire",
              "categories": [
            
              ]
            }

+ Request returns status code created
**POST**&nbsp;&nbsp;`/api/v1/places`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            place%5Bcanton_id%5D=24&place%5Bdistrict_id%5D=16&place%5Bemail%5D=local1%40example.com&place%5Blatitude%5D=-37.226732903879&place%5Blongitude%5D=135.1299059236061&place%5Bname%5D=Local+1&place%5Bprovince_id%5D=24&place%5Btelephone%5D=435-604-5688

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 9,
              "name": "Local 1",
              "telephone": "435-604-5688",
              "email": "local1@example.com",
              "latitude": "-37.226733",
              "longitude": "135.129906",
              "address": null,
              "province": "San José",
              "canton": "West Jame",
              "district": "Perlachester",
              "categories": [
            
              ]
            }

+ Request validate place
**POST**&nbsp;&nbsp;`/api/v1/places`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            place%5Bcanton_id%5D=25&place%5Bdistrict_id%5D=17&place%5Bemail%5D=local1%40example.com&place%5Blatitude%5D=87.29670165434155&place%5Blongitude%5D=-86.35051747929452&place%5Bname%5D=Local+1&place%5Bprovince_id%5D=25&place%5Btelephone%5D=435-604-5688

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 10,
              "name": "Local 1",
              "telephone": "435-604-5688",
              "email": "local1@example.com",
              "latitude": "87.296702",
              "longitude": "-86.350517",
              "address": null,
              "province": "San José",
              "canton": "North Evelinfurt",
              "district": "West Marionfurt",
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
    + id: `11` (number, required)

+ Request updates the requested place
**PUT**&nbsp;&nbsp;`/api/v1/places/11`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            place%5Bemail%5D=local2%40example.com&place%5Blatitude%5D=-5.410121091215146&place%5Blongitude%5D=-75.0665928315228&place%5Bname%5D=Local+2&place%5Btelephone%5D=436-604-5688

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 11,
              "name": "Local 2",
              "telephone": "436-604-5688",
              "email": "local2@example.com",
              "latitude": "-5.410121",
              "longitude": "-75.066593",
              "address": "Parinari, Loreto, Peru",
              "province": "San José",
              "canton": "Noblehaven",
              "district": "Beerhaven",
              "categories": [
            
              ]
            }

+ Request renders a JSON response with errors for the place
**PUT**&nbsp;&nbsp;`/api/v1/places/13`

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
    + id: `14` (number, required)

+ Request destroys the requested place
**DELETE**&nbsp;&nbsp;`/api/v1/places/14`

    + Headers

            Content-Type: application/x-www-form-urlencoded

+ Response 204

# Group Reviews


## Reviews [/places/1/reviews]
### Resource for Reviews

### Get reviews [GET /api/v1/places/{place_id}/reviews]

+ Parameters
    + place_id: `15` (number, required)

+ Request returns a success response
**GET**&nbsp;&nbsp;`/api/v1/places/15/reviews`

    + Headers



+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body



### Get a review [GET /api/v1/places/{place_id}/reviews/{id}]

+ Parameters
    + place_id: `17` (number, required)
    + id: `1` (number, required)

+ Request returns a success response
**GET**&nbsp;&nbsp;`/api/v1/places/17/reviews/1`

    + Headers



+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 1,
              "price": "9.99",
              "quality": "9.99",
              "service": "9.99",
              "average_score": "9.99"
            }

### Create a review [POST /api/v1/places/{place_id}/reviews]

+ Parameters
    + place_id: `18` (number, required)

+ Request creates a new Review
**POST**&nbsp;&nbsp;`/api/v1/places/18/reviews`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            review%5Baverage_score%5D=9.99&review%5Bplace_id%5D=18&review%5Bprice%5D=9.99&review%5Bquality%5D=9.99&review%5Bservice%5D=9.99&review%5Buser_id%5D=11

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 2,
              "price": "9.99",
              "quality": "9.99",
              "service": "9.99",
              "average_score": "9.99"
            }

+ Request renders a JSON response with the new review
**POST**&nbsp;&nbsp;`/api/v1/places/19/reviews`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            review%5Baverage_score%5D=9.99&review%5Bplace_id%5D=19&review%5Bprice%5D=9.99&review%5Bquality%5D=9.99&review%5Bservice%5D=9.99&review%5Buser_id%5D=13

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 3,
              "price": "9.99",
              "quality": "9.99",
              "service": "9.99",
              "average_score": "9.99"
            }

+ Request renders a JSON response with errors for the new review
**POST**&nbsp;&nbsp;`/api/v1/places/20/reviews`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            review%5Bprice%5D=

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "quality": [
                "can't be blank"
              ],
              "service": [
                "can't be blank"
              ],
              "price": [
                "can't be blank"
              ],
              "average_score": [
                "can't be blank"
              ]
            }

### Update a review [PUT /api/v1/places/{place_id}/reviews/{id}]

+ Parameters
    + place_id: `22` (number, required)
    + id: `4` (number, required)

+ Request updates the requested review
**PUT**&nbsp;&nbsp;`/api/v1/places/22/reviews/4`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            review%5Bprice%5D=2.0

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "quality": [
                "can't be blank"
              ],
              "service": [
                "can't be blank"
              ],
              "average_score": [
                "can't be blank"
              ]
            }

+ Request renders a JSON response with the review
**PUT**&nbsp;&nbsp;`/api/v1/places/24/reviews/5`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            review%5Baverage_score%5D=9.99&review%5Bplace%5D=23&review%5Bprice%5D=9.99&review%5Bquality%5D=9.99&review%5Bservice%5D=9.99&review%5Buser%5D=20

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 6,
              "price": "9.99",
              "quality": "9.99",
              "service": "9.99",
              "average_score": "9.99"
            }

+ Request renders a JSON response with errors for the review
**PUT**&nbsp;&nbsp;`/api/v1/places/26/reviews/7`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            review%5Bprice%5D=

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "quality": [
                "can't be blank"
              ],
              "service": [
                "can't be blank"
              ],
              "price": [
                "can't be blank"
              ],
              "average_score": [
                "can't be blank"
              ]
            }

### Delete a review [DELETE /api/v1/places/{place_id}/reviews/{id}]

+ Parameters
    + place_id: `28` (number, required)
    + id: `8` (number, required)

+ Request destroys the requested review
**DELETE**&nbsp;&nbsp;`/api/v1/places/28/reviews/8`

    + Headers

            Content-Type: application/x-www-form-urlencoded

+ Response 204
