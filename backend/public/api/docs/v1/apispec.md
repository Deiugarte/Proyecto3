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
                "id": 374,
                "provider": "email",
                "uid": "billgates@email.com",
                "allow_password_change": false,
                "username": "billgates",
                "image": null,
                "email": "billgates@email.com",
                "created_at": "2019-03-18T02:34:39.000Z",
                "updated_at": "2019-03-18T02:34:39.000Z"
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
                "id": 375,
                "provider": "email",
                "uid": "billgates@email.com",
                "allow_password_change": false,
                "username": "billgates",
                "image": null,
                "email": "billgates@email.com",
                "created_at": "2019-03-18T02:34:39.000Z",
                "updated_at": "2019-03-18T02:34:39.000Z"
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
                "id": 376,
                "provider": "email",
                "uid": "billgates@email.com",
                "allow_password_change": false,
                "username": "billgates",
                "image": null,
                "email": "billgates@email.com",
                "created_at": "2019-03-18T02:34:39.000Z",
                "updated_at": "2019-03-18T02:34:39.000Z"
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
                "id": 377,
                "provider": "email",
                "uid": "billgates@email.com",
                "allow_password_change": false,
                "username": "billgates",
                "image": null,
                "email": "billgates@email.com",
                "created_at": "2019-03-18T02:34:39.000Z",
                "updated_at": "2019-03-18T02:34:39.000Z"
              }
            }

### Update User Info [PUT /auth]
Update info for existing user

+ Request also updates his personal information
**PUT**&nbsp;&nbsp;`/api/v1/auth`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            registration%5Bperson_attributes%5D%5Bfirst_name%5D=my_new_first_name&registration%5Buser_id%5D=378

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "status": "success",
              "data": {
                "id": 378,
                "email": "sidney@stehr.org",
                "provider": "email",
                "username": "oneida",
                "uid": "sidney@stehr.org",
                "allow_password_change": false,
                "image": null,
                "created_at": "2019-03-18T02:34:39.000Z",
                "updated_at": "2019-03-18T02:34:39.000Z"
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
    + id: `1301` (number, required)

+ Request returns a success response
**GET**&nbsp;&nbsp;`/api/v1/cantons/1301`

    + Headers



+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 1301,
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

            canton%5Bdescription%5D=description+1&canton%5Bname%5D=Canton+1&canton%5Bprovince_id%5D=1544

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 1302,
              "name": "Canton 1",
              "description": "description 1",
              "province": "San José",
              "featured_places": [
            
              ]
            }

### Update a canton [PUT /api/v1/cantons/{id}]

+ Parameters
    + id: `1305` (number, required)

+ Request updates the requested canton
**PUT**&nbsp;&nbsp;`/api/v1/cantons/1305`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            canton%5Bdescription%5D=description+2&canton%5Bname%5D=Canton+2

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 1305,
              "name": "Canton 2",
              "description": "description 2",
              "province": "San José",
              "featured_places": [
            
              ]
            }

### Delete a canton [DELETE /api/v1/cantons/{id}]

+ Parameters
    + id: `1308` (number, required)

+ Request destroys the requested canton
**DELETE**&nbsp;&nbsp;`/api/v1/cantons/1308`

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
    + id: `148` (number, required)

+ Request returns a success response
**GET**&nbsp;&nbsp;`/api/v1/categories/148`

    + Headers



+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 148,
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
              "id": 149,
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
              "id": 150,
              "name": "Category 1",
              "subcategories": [
            
              ],
              "places": [
            
              ]
            }

### Update a category [PUT /api/v1/categories/{id}]

+ Parameters
    + id: `151` (number, required)

+ Request updates the requested category
**PUT**&nbsp;&nbsp;`/api/v1/categories/151`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            category%5Bname%5D=Category+2

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 151,
              "name": "Category 2",
              "subcategories": [
            
              ],
              "places": [
            
              ]
            }

### Delete a category [DELETE /api/v1/categories/{id}]

+ Parameters
    + id: `154` (number, required)

+ Request destroys the requested category
**DELETE**&nbsp;&nbsp;`/api/v1/categories/154`

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
    + id: `871` (number, required)

+ Request returns a success response
**GET**&nbsp;&nbsp;`/api/v1/districts/871`

    + Headers



+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 871,
              "name": "District 1",
              "description": "description 1",
              "canton": "Kennyland",
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

            district%5Bcanton_id%5D=1310&district%5Bdescription%5D=description+1&district%5Bname%5D=District+1

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 872,
              "name": "District 1",
              "description": "description 1",
              "canton": "Schulistside",
              "province": "San José",
              "featured_places": [
            
              ]
            }

+ Request returns status code created
**POST**&nbsp;&nbsp;`/api/v1/districts`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            district%5Bcanton_id%5D=1311&district%5Bdescription%5D=description+1&district%5Bname%5D=District+1

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 873,
              "name": "District 1",
              "description": "description 1",
              "canton": "West Cole",
              "province": "San José",
              "featured_places": [
            
              ]
            }

+ Request validate @district
**POST**&nbsp;&nbsp;`/api/v1/districts`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            district%5Bcanton_id%5D=1312&district%5Bdescription%5D=description+1&district%5Bname%5D=District+1

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 874,
              "name": "District 1",
              "description": "description 1",
              "canton": "East Randolph",
              "province": "San José",
              "featured_places": [
            
              ]
            }

### Update a district [PUT /api/v1/districts/{id}]

+ Parameters
    + id: `875` (number, required)

+ Request updates the requested district
**PUT**&nbsp;&nbsp;`/api/v1/districts/875`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            district%5Bdescription%5D=description+2&district%5Bname%5D=District+2

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 875,
              "name": "District 2",
              "description": "description 2",
              "canton": "East Armando",
              "province": "San José",
              "featured_places": [
            
              ]
            }

+ Request renders a JSON response with the district
**PUT**&nbsp;&nbsp;`/api/v1/districts/876`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            district%5Bcanton%5D=1314&district%5Bdescription%5D=description+1&district%5Bname%5D=District+1

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 876,
              "name": "District 1",
              "description": "description 1",
              "canton": "Lacyborough",
              "province": "San José",
              "featured_places": [
            
              ]
            }

### Delete a district [DELETE /api/v1/districts/{id}]

+ Parameters
    + id: `878` (number, required)

+ Request destroys the requested district
**DELETE**&nbsp;&nbsp;`/api/v1/districts/878`

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
    + id: `63` (number, required)

+ Request returns a success response
**GET**&nbsp;&nbsp;`/api/v1/logs/63`

    + Headers



+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 63,
              "description": null,
              "latitude": "-62.733606",
              "longitude": "126.111891",
              "user": {
                "id": 366,
                "provider": "email",
                "uid": "dominicklemke@fritsch.name",
                "allow_password_change": false,
                "username": "mina_hauck",
                "image": null,
                "email": "dominicklemke@fritsch.name",
                "created_at": "2019-03-18T02:34:25.000Z",
                "updated_at": "2019-03-18T02:34:25.000Z"
              },
              "place": {
                "id": 558,
                "name": "Smokestack Brasserie",
                "telephone": "1-542-587-8275",
                "email": "isaurafunk@barrows.info",
                "latitude": "9.829759",
                "longitude": "112.667188",
                "address": null,
                "province": "San José",
                "canton": "Weimannport",
                "district": "East Boyceland"
              }
            }

### Create a log [POST /api/v1/logs]


+ Request creates a new Log
**POST**&nbsp;&nbsp;`/api/v1/logs`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            log%5Blatitude%5D=-70.67926539973693&log%5Blongitude%5D=92.52680371457092&log%5Bplace%5D=559&log%5Buser%5D=368

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 64,
              "description": null,
              "latitude": "-70.679265",
              "longitude": "92.526804",
              "user": {
                "id": 367,
                "provider": "email",
                "uid": "manueladams@stoltenbergnitzsche.biz",
                "allow_password_change": false,
                "username": "stasia_borer",
                "image": null,
                "email": "manueladams@stoltenbergnitzsche.biz",
                "created_at": "2019-03-18T02:34:25.000Z",
                "updated_at": "2019-03-18T02:34:25.000Z"
              },
              "place": null
            }

+ Request renders a JSON response with the new log
**POST**&nbsp;&nbsp;`/api/v1/logs`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            log%5Blatitude%5D=80.56284142599606&log%5Blongitude%5D=-41.68054297552237&log%5Bplace%5D=560&log%5Buser%5D=370

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 65,
              "description": null,
              "latitude": "80.562841",
              "longitude": "-41.680543",
              "user": {
                "id": 369,
                "provider": "email",
                "uid": "sammyosinski@stiedemannjohns.com",
                "allow_password_change": false,
                "username": "donnell",
                "image": null,
                "email": "sammyosinski@stiedemannjohns.com",
                "created_at": "2019-03-18T02:34:26.000Z",
                "updated_at": "2019-03-18T02:34:26.000Z"
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

            log%5Blatitude%5D=36.12986606272261&log%5Blongitude%5D=-168.8033217525568&log%5Bplace%5D=561&log%5Buser%5D=372

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
    + id: `562` (number, required)

+ Request returns a success response
**GET**&nbsp;&nbsp;`/api/v1/places/562`

    + Headers



+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 562,
              "name": "Hungry Grill & Tap",
              "telephone": "(979) 957-7938",
              "email": "lonastrosin@beahan.net",
              "latitude": "48.118249",
              "longitude": "-24.22601",
              "address": null,
              "province": "San José",
              "canton": "Luanatown",
              "district": "Lake Scott",
              "categories": [
            
              ]
            }

### Get nearby places 16km radius [GET /api/v1/places/{id}/nearby]

+ Parameters
    + id: `564` (number, required)

+ Request returns a success response
**GET**&nbsp;&nbsp;`/api/v1/places/564/nearby`

    + Headers



+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            [
              {
                "id": 563,
                "name": "La Princesa Marina",
                "telephone": "1-911-724-2018",
                "email": "sydney@hackettkoch.net",
                "latitude": "9.93446",
                "longitude": "-84.110361",
                "address": "La Princesa Marina, Avenida 4, Rancho Luna, Mata Redonda, Cantón San José, Provincia San José, 10108, Costa Rica",
                "province": "San José",
                "canton": "North Jackshire",
                "district": "Wunschborough",
                "categories": [
            
                ]
              }
            ]

### Create a place [POST /api/v1/places]


+ Request creates a topic
**POST**&nbsp;&nbsp;`/api/v1/places`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            place%5Bcanton_id%5D=1323&place%5Bdistrict_id%5D=885&place%5Bemail%5D=local1%40example.com&place%5Blatitude%5D=-9.141891203382599&place%5Blongitude%5D=116.34056782316549&place%5Bname%5D=Local+1&place%5Bprovince_id%5D=1565&place%5Btelephone%5D=435-604-5688

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 565,
              "name": "Local 1",
              "telephone": "435-604-5688",
              "email": "local1@example.com",
              "latitude": "-9.141891",
              "longitude": "116.340568",
              "address": "Lombok Tengah, West Nusa Tenggara, 83511, Indonesia",
              "province": "San José",
              "canton": "Ziemeville",
              "district": "McDermottberg",
              "categories": [
            
              ]
            }

+ Request returns status code created
**POST**&nbsp;&nbsp;`/api/v1/places`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            place%5Bcanton_id%5D=1324&place%5Bdistrict_id%5D=886&place%5Bemail%5D=local1%40example.com&place%5Blatitude%5D=-39.39123417934232&place%5Blongitude%5D=-2.41706758452014&place%5Bname%5D=Local+1&place%5Bprovince_id%5D=1566&place%5Btelephone%5D=435-604-5688

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 566,
              "name": "Local 1",
              "telephone": "435-604-5688",
              "email": "local1@example.com",
              "latitude": "-39.391234",
              "longitude": "-2.417068",
              "address": null,
              "province": "San José",
              "canton": "Lake Sherman",
              "district": "Denesiktown",
              "categories": [
            
              ]
            }

+ Request validate @place
**POST**&nbsp;&nbsp;`/api/v1/places`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            place%5Bcanton_id%5D=1325&place%5Bdistrict_id%5D=887&place%5Bemail%5D=local1%40example.com&place%5Blatitude%5D=53.11261264804173&place%5Blongitude%5D=141.48545110776678&place%5Bname%5D=Local+1&place%5Bprovince_id%5D=1567&place%5Btelephone%5D=435-604-5688

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 567,
              "name": "Local 1",
              "telephone": "435-604-5688",
              "email": "local1@example.com",
              "latitude": "53.112613",
              "longitude": "141.485451",
              "address": "Nikolayevsky District, Khabarovsk Krai, Far Eastern Federal District, Russia",
              "province": "San José",
              "canton": "Lake Hipolitostad",
              "district": "Port Tomas",
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
    + id: `568` (number, required)

+ Request updates the requested place
**PUT**&nbsp;&nbsp;`/api/v1/places/568`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            place%5Bemail%5D=local2%40example.com&place%5Blatitude%5D=-2.7129011598236303&place%5Blongitude%5D=-136.19141712341667&place%5Bname%5D=Local+2&place%5Btelephone%5D=436-604-5688

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 568,
              "name": "Local 2",
              "telephone": "436-604-5688",
              "email": "local2@example.com",
              "latitude": "-2.712901",
              "longitude": "-136.191417",
              "address": null,
              "province": "San José",
              "canton": "Jordonton",
              "district": "Jasminechester",
              "categories": [
            
              ]
            }

+ Request renders a JSON response with errors for the place
**PUT**&nbsp;&nbsp;`/api/v1/places/570`

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
    + id: `571` (number, required)

+ Request destroys the requested place
**DELETE**&nbsp;&nbsp;`/api/v1/places/571`

    + Headers

            Content-Type: application/x-www-form-urlencoded

+ Response 204
