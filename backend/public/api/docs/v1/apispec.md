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
                "created_at": "2019-04-07T16:44:30.000Z",
                "updated_at": "2019-04-07T16:44:30.000Z"
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
                "created_at": "2019-04-07T16:44:30.000Z",
                "updated_at": "2019-04-07T16:44:30.000Z"
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
                "created_at": "2019-04-07T16:44:30.000Z",
                "updated_at": "2019-04-07T16:44:30.000Z"
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
                "created_at": "2019-04-07T16:44:30.000Z",
                "updated_at": "2019-04-07T16:44:30.000Z"
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
                "email": "billiekemmer@stroman.io",
                "provider": "email",
                "username": "billie",
                "uid": "billiekemmer@stroman.io",
                "allow_password_change": false,
                "image": null,
                "created_at": "2019-04-07T16:44:30.000Z",
                "updated_at": "2019-04-07T16:44:30.000Z"
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
              "canton": "South Tod",
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
              "canton": "Virgenshire",
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
              "canton": "Port Nedport",
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
              "canton": "New Giamouth",
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
              "canton": "Reingerfort",
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
              "canton": "Marlinview",
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

            {"id":8,"name":"District 1","description":"description 1","canton":"East Norbert","province":"San José","featured_places":[]}

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
              "latitude": "-15.051435",
              "longitude": "0.975676",
              "user": {
                "id": 1,
                "provider": "email",
                "uid": "antoine@hagenes.org",
                "allow_password_change": false,
                "username": "tracy.reinger",
                "image": null,
                "email": "antoine@hagenes.org",
                "created_at": "2019-04-07T16:44:03.000Z",
                "updated_at": "2019-04-07T16:44:03.000Z"
              },
              "place": {
                "id": 1,
                "name": "Green Bar & Grill",
                "telephone": "375.023.8553 x13647",
                "email": "eufemia@hellercormier.org",
                "latitude": "-48.830206",
                "longitude": "-104.146547",
                "address": null,
                "province": "San José",
                "canton": "Diegohaven",
                "district": "Lake Terrellville"
              }
            }

### Create a log [POST /api/v1/logs]


+ Request creates a new Log
**POST**&nbsp;&nbsp;`/api/v1/logs`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            log%5Blatitude%5D=0.22991655161524704&log%5Blongitude%5D=-150.51870033391273&log%5Bplace%5D=2&log%5Buser%5D=3

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 2,
              "description": null,
              "latitude": "0.229917",
              "longitude": "-150.5187",
              "user": {
                "id": 2,
                "provider": "email",
                "uid": "dustin@lebsack.info",
                "allow_password_change": false,
                "username": "mauro",
                "image": null,
                "email": "dustin@lebsack.info",
                "created_at": "2019-04-07T16:44:03.000Z",
                "updated_at": "2019-04-07T16:44:03.000Z"
              },
              "place": null
            }

+ Request renders a JSON response with the new log
**POST**&nbsp;&nbsp;`/api/v1/logs`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            log%5Blatitude%5D=-17.075858327206703&log%5Blongitude%5D=-131.61270512774777&log%5Bplace%5D=3&log%5Buser%5D=5

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 3,
              "description": null,
              "latitude": "-17.075858",
              "longitude": "-131.612705",
              "user": {
                "id": 4,
                "provider": "email",
                "uid": "pasqualesatterfield@monahan.name",
                "allow_password_change": false,
                "username": "carmella",
                "image": null,
                "email": "pasqualesatterfield@monahan.name",
                "created_at": "2019-04-07T16:44:04.000Z",
                "updated_at": "2019-04-07T16:44:04.000Z"
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

            log%5Blatitude%5D=-69.83376199928013&log%5Blongitude%5D=-32.03938149286785&log%5Bplace%5D=4&log%5Buser%5D=7

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
              "name": "Blue Kitchen",
              "telephone": "673-891-5391",
              "email": "nathaniel@vandervort.info",
              "latitude": "-25.978549",
              "longitude": "130.294171",
              "address": "Northern Territory, Australia",
              "province": "San José",
              "canton": "Port Rogeliomouth",
              "district": "Koelpinville",
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
                "telephone": "(782) 462-4400 x7098",
                "email": "raymondlesch@reichert.name",
                "latitude": "9.93446",
                "longitude": "-84.110361",
                "address": "La Princesa Marina, Avenida 4, Rancho Luna, Mata Redonda, Cantón San José, Provincia San José, 10108, Costa Rica",
                "province": "San José",
                "canton": "Port Romeomouth",
                "district": "New Laverne",
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

            place%5Bcanton_id%5D=23&place%5Bdistrict_id%5D=15&place%5Bemail%5D=local1%40example.com&place%5Blatitude%5D=62.92217000316492&place%5Blongitude%5D=-137.04285441376277&place%5Bname%5D=Local+1&place%5Bprovince_id%5D=23&place%5Btelephone%5D=435-604-5688

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 8,
              "name": "Local 1",
              "telephone": "435-604-5688",
              "email": "local1@example.com",
              "latitude": "62.92217",
              "longitude": "-137.042854",
              "address": "Yukon, Canada",
              "province": "San José",
              "canton": "South Young",
              "district": "Letishaburgh",
              "categories": [
            
              ]
            }

+ Request returns status code created
**POST**&nbsp;&nbsp;`/api/v1/places`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            place%5Bcanton_id%5D=24&place%5Bdistrict_id%5D=16&place%5Bemail%5D=local1%40example.com&place%5Blatitude%5D=62.24021408944424&place%5Blongitude%5D=148.85120987089618&place%5Bname%5D=Local+1&place%5Bprovince_id%5D=24&place%5Btelephone%5D=435-604-5688

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 9,
              "name": "Local 1",
              "telephone": "435-604-5688",
              "email": "local1@example.com",
              "latitude": "62.240214",
              "longitude": "148.85121",
              "address": "Tenkinsky Urban District, Magadan Oblast, Far Eastern Federal District, Russia",
              "province": "San José",
              "canton": "Eugeneberg",
              "district": "Odisside",
              "categories": [
            
              ]
            }

+ Request validate place
**POST**&nbsp;&nbsp;`/api/v1/places`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            place%5Bcanton_id%5D=25&place%5Bdistrict_id%5D=17&place%5Bemail%5D=local1%40example.com&place%5Blatitude%5D=1.4276727279272592&place%5Blongitude%5D=-178.3330879682393&place%5Bname%5D=Local+1&place%5Bprovince_id%5D=25&place%5Btelephone%5D=435-604-5688

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 10,
              "name": "Local 1",
              "telephone": "435-604-5688",
              "email": "local1@example.com",
              "latitude": "1.427673",
              "longitude": "-178.333088",
              "address": null,
              "province": "San José",
              "canton": "West Omarland",
              "district": "Theaside",
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

            place%5Bemail%5D=local2%40example.com&place%5Blatitude%5D=63.073953849062576&place%5Blongitude%5D=128.96612236289116&place%5Bname%5D=Local+2&place%5Btelephone%5D=436-604-5688

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 11,
              "name": "Local 2",
              "telephone": "436-604-5688",
              "email": "local2@example.com",
              "latitude": "63.073954",
              "longitude": "128.966122",
              "address": "Бетюнский наслег, Namsky Ulus, Sakha Republic, Far Eastern Federal District, Russia",
              "province": "San José",
              "canton": "Gutkowskifurt",
              "district": "North Lavernemouth",
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

    + Body

            {"id":14,"name":"Blue Pizza","telephone":"371.714.1854","email":"barb@littleshanahan.co","latitude":"46.705475","longitude":"70.007939","address":"Zhanaarka District, Karaganda Region, Kazakhstan","province":"San José","canton":"Lake Clarence","district":"Eldonton","categories":[]}

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

    + Body

            {"id":8,"price":"9.99","quality":"9.99","service":"9.99","average_score":"9.99"}
