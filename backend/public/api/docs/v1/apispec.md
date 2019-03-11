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
                "id": 143,
                "provider": "email",
                "uid": "billgates@email.com",
                "allow_password_change": false,
                "username": "billgates",
                "image": null,
                "email": "billgates@email.com",
                "created_at": "2019-03-11T04:44:34.000Z",
                "updated_at": "2019-03-11T04:44:34.000Z"
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
                "id": 144,
                "provider": "email",
                "uid": "billgates@email.com",
                "allow_password_change": false,
                "username": "billgates",
                "image": null,
                "email": "billgates@email.com",
                "created_at": "2019-03-11T04:44:34.000Z",
                "updated_at": "2019-03-11T04:44:34.000Z"
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
                "id": 145,
                "provider": "email",
                "uid": "billgates@email.com",
                "allow_password_change": false,
                "username": "billgates",
                "image": null,
                "email": "billgates@email.com",
                "created_at": "2019-03-11T04:44:34.000Z",
                "updated_at": "2019-03-11T04:44:34.000Z"
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
                "id": 146,
                "provider": "email",
                "uid": "billgates@email.com",
                "allow_password_change": false,
                "username": "billgates",
                "image": null,
                "email": "billgates@email.com",
                "created_at": "2019-03-11T04:44:34.000Z",
                "updated_at": "2019-03-11T04:44:34.000Z"
              }
            }

### Update User Info [PUT /auth]
Update info for existing user

+ Request also updates his personal information
**PUT**&nbsp;&nbsp;`/api/v1/auth`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            registration%5Bperson_attributes%5D%5Bfirst_name%5D=my_new_first_name&registration%5Buser_id%5D=147

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "status": "success",
              "data": {
                "id": 147,
                "email": "herschelhartmann@connellybarrows.org",
                "provider": "email",
                "username": "timothy",
                "uid": "herschelhartmann@connellybarrows.org",
                "allow_password_change": false,
                "image": null,
                "created_at": "2019-03-11T04:44:34.000Z",
                "updated_at": "2019-03-11T04:44:34.000Z"
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
    + id: `318` (number, required)

+ Request returns a success response
**GET**&nbsp;&nbsp;`/api/v1/cantons/318`

    + Headers



+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 318,
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

            canton%5Bdescription%5D=description+1&canton%5Bname%5D=Canton+1&canton%5Bprovince_id%5D=392

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 319,
              "name": "Canton 1",
              "description": "description 1",
              "province": "San José",
              "featured_places": [
            
              ]
            }

### Update a canton [PUT /api/v1/cantons/{id}]

+ Parameters
    + id: `322` (number, required)

+ Request updates the requested canton
**PUT**&nbsp;&nbsp;`/api/v1/cantons/322`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            canton%5Bdescription%5D=description+2&canton%5Bname%5D=Canton+2

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 322,
              "name": "Canton 2",
              "description": "description 2",
              "province": "San José",
              "featured_places": [
            
              ]
            }

### Delete a canton [DELETE /api/v1/cantons/{id}]

+ Parameters
    + id: `325` (number, required)

+ Request destroys the requested canton
**DELETE**&nbsp;&nbsp;`/api/v1/cantons/325`

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
    + id: `64` (number, required)

+ Request returns a success response
**GET**&nbsp;&nbsp;`/api/v1/categories/64`

    + Headers



+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 64,
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
              "id": 65,
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
              "id": 66,
              "name": "Category 1",
              "subcategories": [
            
              ],
              "places": [
            
              ]
            }

### Update a category [PUT /api/v1/categories/{id}]

+ Parameters
    + id: `67` (number, required)

+ Request updates the requested category
**PUT**&nbsp;&nbsp;`/api/v1/categories/67`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            category%5Bname%5D=Category+2

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 67,
              "name": "Category 2",
              "subcategories": [
            
              ],
              "places": [
            
              ]
            }

### Delete a category [DELETE /api/v1/categories/{id}]

+ Parameters
    + id: `70` (number, required)

+ Request destroys the requested category
**DELETE**&nbsp;&nbsp;`/api/v1/categories/70`

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
    + id: `173` (number, required)

+ Request returns a success response
**GET**&nbsp;&nbsp;`/api/v1/districts/173`

    + Headers



+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 173,
              "name": "District 1",
              "description": "description 1",
              "canton": "Lorenfurt",
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

            district%5Bcanton_id%5D=327&district%5Bdescription%5D=description+1&district%5Bname%5D=District+1

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 174,
              "name": "District 1",
              "description": "description 1",
              "canton": "Gerholdside",
              "province": "San José",
              "featured_places": [
            
              ]
            }

+ Request returns status code created
**POST**&nbsp;&nbsp;`/api/v1/districts`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            district%5Bcanton_id%5D=328&district%5Bdescription%5D=description+1&district%5Bname%5D=District+1

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 175,
              "name": "District 1",
              "description": "description 1",
              "canton": "Conroyport",
              "province": "San José",
              "featured_places": [
            
              ]
            }

+ Request validate @district
**POST**&nbsp;&nbsp;`/api/v1/districts`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            district%5Bcanton_id%5D=329&district%5Bdescription%5D=description+1&district%5Bname%5D=District+1

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 176,
              "name": "District 1",
              "description": "description 1",
              "canton": "South Ambrosemouth",
              "province": "San José",
              "featured_places": [
            
              ]
            }

### Update a district [PUT /api/v1/districts/{id}]

+ Parameters
    + id: `177` (number, required)

+ Request updates the requested district
**PUT**&nbsp;&nbsp;`/api/v1/districts/177`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            district%5Bdescription%5D=description+2&district%5Bname%5D=District+2

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 177,
              "name": "District 2",
              "description": "description 2",
              "canton": "South Terrenceborough",
              "province": "San José",
              "featured_places": [
            
              ]
            }

+ Request renders a JSON response with the district
**PUT**&nbsp;&nbsp;`/api/v1/districts/178`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            district%5Bcanton%5D=331&district%5Bdescription%5D=description+1&district%5Bname%5D=District+1

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 178,
              "name": "District 1",
              "description": "description 1",
              "canton": "Ellistown",
              "province": "San José",
              "featured_places": [
            
              ]
            }

### Delete a district [DELETE /api/v1/districts/{id}]

+ Parameters
    + id: `180` (number, required)

+ Request destroys the requested district
**DELETE**&nbsp;&nbsp;`/api/v1/districts/180`

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
    + id: `23` (number, required)

+ Request returns a success response
**GET**&nbsp;&nbsp;`/api/v1/logs/23`

    + Headers



+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 23,
              "description": null,
              "latitude": "67.375991",
              "longitude": "86.030529",
              "user": {
                "id": 135,
                "provider": "email",
                "uid": "domingadubuque@blanda.com",
                "allow_password_change": false,
                "username": "rolf",
                "image": null,
                "email": "domingadubuque@blanda.com",
                "created_at": "2019-03-11T04:44:21.000Z",
                "updated_at": "2019-03-11T04:44:21.000Z"
              },
              "place": {
                "id": 101,
                "name": "Hungry Pizza",
                "telephone": "275.974.8589 x85198",
                "email": "vance@bergstromboehm.name",
                "latitude": "46.85644",
                "longitude": "-66.021509",
                "address": "Gibbons Island, Northumberland County, New Brunswick, E9E 1T3, Canada",
                "province": "San José",
                "canton": "Jaskolskiside",
                "district": "East Karrenport"
              }
            }

### Create a log [POST /api/v1/logs]


+ Request creates a new Log
**POST**&nbsp;&nbsp;`/api/v1/logs`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            log%5Blatitude%5D=-28.65973274976742&log%5Blongitude%5D=32.68609046229557&log%5Bplace%5D=102&log%5Buser%5D=137

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 24,
              "description": null,
              "latitude": "-28.659733",
              "longitude": "32.68609",
              "user": {
                "id": 136,
                "provider": "email",
                "uid": "corazonkirlin@conn.com",
                "allow_password_change": false,
                "username": "kathaleen.aufderhar",
                "image": null,
                "email": "corazonkirlin@conn.com",
                "created_at": "2019-03-11T04:44:22.000Z",
                "updated_at": "2019-03-11T04:44:22.000Z"
              },
              "place": null
            }

+ Request renders a JSON response with the new log
**POST**&nbsp;&nbsp;`/api/v1/logs`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            log%5Blatitude%5D=7.3222289850196915&log%5Blongitude%5D=165.33762559482608&log%5Bplace%5D=103&log%5Buser%5D=139

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 25,
              "description": null,
              "latitude": "7.322229",
              "longitude": "165.337626",
              "user": {
                "id": 138,
                "provider": "email",
                "uid": "autumnschmeler@beier.net",
                "allow_password_change": false,
                "username": "adam",
                "image": null,
                "email": "autumnschmeler@beier.net",
                "created_at": "2019-03-11T04:44:23.000Z",
                "updated_at": "2019-03-11T04:44:23.000Z"
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

            log%5Blatitude%5D=-58.33654453272289&log%5Blongitude%5D=96.77009762022897&log%5Bplace%5D=104&log%5Buser%5D=141

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
    + id: `105` (number, required)

+ Request returns a success response
**GET**&nbsp;&nbsp;`/api/v1/places/105`

    + Headers



+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 105,
              "name": "Local 1",
              "telephone": "435-604-5688",
              "email": "local1@example.com",
              "latitude": "40.413815",
              "longitude": "156.150266",
              "address": null,
              "province": "San José",
              "canton": "Smithshire",
              "district": "Rheachester",
              "categories": [
            
              ]
            }

### Create a place [POST /api/v1/places]


+ Request creates a topic
**POST**&nbsp;&nbsp;`/api/v1/places`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            place%5Bcanton_id%5D=344&place%5Bdistrict_id%5D=186&place%5Bemail%5D=local1%40example.com&place%5Blatitude%5D=63.01173381855722&place%5Blongitude%5D=-79.68452022400312&place%5Bname%5D=Local+1&place%5Bprovince_id%5D=422&place%5Btelephone%5D=435-604-5688

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 106,
              "name": "Local 1",
              "telephone": "435-604-5688",
              "email": "local1@example.com",
              "latitude": "63.011734",
              "longitude": "-79.68452",
              "address": "Nunavut, Canada",
              "province": "San José",
              "canton": "Shayfurt",
              "district": "Aurelioville",
              "categories": [
            
              ]
            }

+ Request returns status code created
**POST**&nbsp;&nbsp;`/api/v1/places`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            place%5Bcanton_id%5D=345&place%5Bdistrict_id%5D=187&place%5Bemail%5D=local1%40example.com&place%5Blatitude%5D=-23.2737500771902&place%5Blongitude%5D=-81.95384153977426&place%5Bname%5D=Local+1&place%5Bprovince_id%5D=423&place%5Btelephone%5D=435-604-5688

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 107,
              "name": "Local 1",
              "telephone": "435-604-5688",
              "email": "local1@example.com",
              "latitude": "-23.27375",
              "longitude": "-81.953842",
              "address": null,
              "province": "San José",
              "canton": "Brakusview",
              "district": "North Juliannaport",
              "categories": [
            
              ]
            }

+ Request validate @place
**POST**&nbsp;&nbsp;`/api/v1/places`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            place%5Bcanton_id%5D=346&place%5Bdistrict_id%5D=188&place%5Bemail%5D=local1%40example.com&place%5Blatitude%5D=-73.72276443781934&place%5Blongitude%5D=-140.28440070997877&place%5Bname%5D=Local+1&place%5Bprovince_id%5D=424&place%5Btelephone%5D=435-604-5688

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 108,
              "name": "Local 1",
              "telephone": "435-604-5688",
              "email": "local1@example.com",
              "latitude": "-73.722764",
              "longitude": "-140.284401",
              "address": null,
              "province": "San José",
              "canton": "Lake Malcom",
              "district": "Hodkiewiczfort",
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
    + id: `109` (number, required)

+ Request updates the requested place
**PUT**&nbsp;&nbsp;`/api/v1/places/109`

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            place%5Bemail%5D=local2%40example.com&place%5Blatitude%5D=26.54393116677666&place%5Blongitude%5D=92.80531268812763&place%5Bname%5D=Local+2&place%5Btelephone%5D=436-604-5688

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 109,
              "name": "Local 2",
              "telephone": "436-604-5688",
              "email": "local2@example.com",
              "latitude": "26.543931",
              "longitude": "92.805313",
              "address": "Nowgong, Nagaon, Assam, India",
              "province": "San José",
              "canton": "Dickensfort",
              "district": "North Brain",
              "categories": [
            
              ]
            }

+ Request renders a JSON response with errors for the place
**PUT**&nbsp;&nbsp;`/api/v1/places/111`

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
    + id: `112` (number, required)

+ Request destroys the requested place
**DELETE**&nbsp;&nbsp;`/api/v1/places/112`

    + Headers

            Content-Type: application/x-www-form-urlencoded

+ Response 204
