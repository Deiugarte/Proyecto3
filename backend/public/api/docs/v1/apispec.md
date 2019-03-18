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
                "created_at": "2019-04-07T16:22:11.000Z",
                "updated_at": "2019-04-07T16:22:11.000Z"
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
                "created_at": "2019-04-07T16:22:11.000Z",
                "updated_at": "2019-04-07T16:22:12.000Z"
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
                "created_at": "2019-04-07T16:22:12.000Z",
                "updated_at": "2019-04-07T16:22:12.000Z"
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
                "created_at": "2019-04-07T16:22:12.000Z",
                "updated_at": "2019-04-07T16:22:12.000Z"
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
                "email": "hollyturcotte@wolf.com",
                "provider": "email",
                "username": "weldon.nienow",
                "uid": "hollyturcotte@wolf.com",
                "allow_password_change": false,
                "image": null,
                "created_at": "2019-04-07T16:22:12.000Z",
                "updated_at": "2019-04-07T16:22:12.000Z"
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
              "canton": "Lake Daniafurt",
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
              "canton": "Russellhaven",
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
              "canton": "Lake Hanaville",
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
              "canton": "West Curtiston",
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
              "canton": "Luettgenfort",
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
              "canton": "Hanebury",
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
              "latitude": "12.165582",
              "longitude": "35.054663",
              "user": {
                "id": 1,
                "provider": "email",
                "uid": "jacques@weinat.name",
                "allow_password_change": false,
                "username": "josue",
                "image": null,
                "email": "jacques@weinat.name",
                "created_at": "2019-04-07T16:21:45.000Z",
                "updated_at": "2019-04-07T16:21:45.000Z"
              },
              "place": {
                "id": 1,
                "name": "Silver Creamery",
                "telephone": "1-658-780-2608 x8079",
                "email": "willlockman@schoen.name",
                "latitude": "-2.942166",
                "longitude": "158.578966",
                "address": null,
                "province": "San José",
                "canton": "Herzogmouth",
                "district": "Robertsfort"
              }
            }

### Create a log [POST /api/v1/logs]


+ Request creates a new Log
**POST**&nbsp;&nbsp;`/api/v1/logs`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            log%5Blatitude%5D=25.3771909734035&log%5Blongitude%5D=168.01926764497694&log%5Bplace%5D=2&log%5Buser%5D=3

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 2,
              "description": null,
              "latitude": "25.377191",
              "longitude": "168.019268",
              "user": {
                "id": 2,
                "provider": "email",
                "uid": "marinaklein@stracke.name",
                "allow_password_change": false,
                "username": "tracy_ernser",
                "image": null,
                "email": "marinaklein@stracke.name",
                "created_at": "2019-04-07T16:21:45.000Z",
                "updated_at": "2019-04-07T16:21:45.000Z"
              },
              "place": null
            }

+ Request renders a JSON response with the new log
**POST**&nbsp;&nbsp;`/api/v1/logs`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            log%5Blatitude%5D=45.33189024565783&log%5Blongitude%5D=-62.87565491690003&log%5Bplace%5D=3&log%5Buser%5D=5

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 3,
              "description": null,
              "latitude": "45.33189",
              "longitude": "-62.875655",
              "user": {
                "id": 4,
                "provider": "email",
                "uid": "cythia@buckridgecummerata.org",
                "allow_password_change": false,
                "username": "erick.stiedemann",
                "image": null,
                "email": "cythia@buckridgecummerata.org",
                "created_at": "2019-04-07T16:21:46.000Z",
                "updated_at": "2019-04-07T16:21:46.000Z"
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

            log%5Blatitude%5D=-40.818796739374534&log%5Blongitude%5D=136.48335712339968&log%5Bplace%5D=4&log%5Buser%5D=7

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
              "name": "42 Grill",
              "telephone": "314.147.0821 x690",
              "email": "joshua@watsicafarrell.co",
              "latitude": "-25.593541",
              "longitude": "165.970667",
              "address": null,
              "province": "San José",
              "canton": "Latashaborough",
              "district": "New Bart",
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
                "telephone": "208-703-8899",
                "email": "kristophervolkman@gaylord.co",
                "latitude": "9.93446",
                "longitude": "-84.110361",
                "address": "La Princesa Marina, Avenida 4, Rancho Luna, Mata Redonda, Cantón San José, Provincia San José, 10108, Costa Rica",
                "province": "San José",
                "canton": "Lake Genesisfort",
                "district": "South Lawerencetown",
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

            place%5Bcanton_id%5D=23&place%5Bdistrict_id%5D=15&place%5Bemail%5D=local1%40example.com&place%5Blatitude%5D=-11.203209012579734&place%5Blongitude%5D=-132.88148952137408&place%5Bname%5D=Local+1&place%5Bprovince_id%5D=23&place%5Btelephone%5D=435-604-5688

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 8,
              "name": "Local 1",
              "telephone": "435-604-5688",
              "email": "local1@example.com",
              "latitude": "-11.203209",
              "longitude": "-132.88149",
              "address": null,
              "province": "San José",
              "canton": "West Pattyburgh",
              "district": "Linneaburgh",
              "categories": [
            
              ]
            }

+ Request returns status code created
**POST**&nbsp;&nbsp;`/api/v1/places`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            place%5Bcanton_id%5D=24&place%5Bdistrict_id%5D=16&place%5Bemail%5D=local1%40example.com&place%5Blatitude%5D=-73.59334101971588&place%5Blongitude%5D=28.255949858904103&place%5Bname%5D=Local+1&place%5Bprovince_id%5D=24&place%5Btelephone%5D=435-604-5688

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 9,
              "name": "Local 1",
              "telephone": "435-604-5688",
              "email": "local1@example.com",
              "latitude": "-73.593341",
              "longitude": "28.25595",
              "address": null,
              "province": "San José",
              "canton": "Wuckertton",
              "district": "Koeppberg",
              "categories": [
            
              ]
            }

+ Request validate place
**POST**&nbsp;&nbsp;`/api/v1/places`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            place%5Bcanton_id%5D=25&place%5Bdistrict_id%5D=17&place%5Bemail%5D=local1%40example.com&place%5Blatitude%5D=-66.27299527507762&place%5Blongitude%5D=38.73469122599573&place%5Bname%5D=Local+1&place%5Bprovince_id%5D=25&place%5Btelephone%5D=435-604-5688

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 10,
              "name": "Local 1",
              "telephone": "435-604-5688",
              "email": "local1@example.com",
              "latitude": "-66.272995",
              "longitude": "38.734691",
              "address": null,
              "province": "San José",
              "canton": "Beataville",
              "district": "Deloresfort",
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

            place%5Bemail%5D=local2%40example.com&place%5Blatitude%5D=64.74943445766837&place%5Blongitude%5D=-175.16152797124684&place%5Bname%5D=Local+2&place%5Btelephone%5D=436-604-5688

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 11,
              "name": "Local 2",
              "telephone": "436-604-5688",
              "email": "local2@example.com",
              "latitude": "64.749434",
              "longitude": "-175.161528",
              "address": "Providensky urban district, Chukotka Autonomous Okrug, Far Eastern Federal District, 689251, Russia",
              "province": "San José",
              "canton": "Lake Davis",
              "district": "Janettabury",
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
