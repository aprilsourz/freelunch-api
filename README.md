# Free Lunch Api
Capstone project for the Web Development Immersive at General Assembly Boston. This is the repository for the server side application. Free lunch is a networking app for software engineers who want to get taken out to lunch. And for recruiters who are looking for talent. This is the first and most basic iteration of the application.

As of now the app supports no more than 2 messages per lunch invitation. Users can display the link for their personal website or Linked In profile in place of having an in app profile.

URL for api: [https://protected-fjord-91425.herokuapp.com/](https://protected-fjord-91425.herokuapp.com/)

[Link to ERD](http://imgur.com/dhsKD6N)

[Link to front end repository](https://github.com/arlofeirman/free-lunch)

Link to try the app: [https://arlofeirman.github.io/free-lunch/](https://arlofeirman.github.io/free-lunch/)

### Technologies
This API was built with Ruby on Rails and was tested with curl scripts. The front end application was built with Ember.js and Bootstrap

#### Installation
If you wish to fork and clone this repository you will need to install dependencies by running ```bundle install``` in the root directory of the project.

## Planning
I started the project by writing user stories. I then drew wire frames and made an ERD. I wrote pseudocode for every feature. Through this process I was able to more accurately see complexity and strip down my plan to a mininum viable product.

## Building
I worked on one resource at a time. Starting with users and their profiles(engineer or recruiter), then moving onto the conversations resource. I used rails commands to generate migration, model, and controller files. Referring to my user stories and pseudocode while creating the controller action for each API endpoint helped me stay on track. I tested routes with curL scripts throughout the process. I often broke down a controller action into small steps on paper.

I implimented the front end app with ember.js. I found it useful to refer to rails console when I got errors. This helped me format the HTTP requests from the front end correctly.

I kept a running list of bugs and features. This helped me to stay on task without forgetting about the loose ends.

## API end-points

| Verb   | Path                   |   Controller#Action     |
|--------|------------------------|  -------------------    |
| POST   | `/sign-up`             |   `users#signup`        |
| POST   | `/sign-in`             |   `users#signin`        |
| DELETE | `/sign-out/:id`        |   `users#signout`       |
| PATCH  | `/change-password/:id` |   `users#changepw`      |
| GET    | `/users`               |   `users#index`         |
| GET    | `/users/:id`           |   `users#show`          |
| GET    | `/engineers`           |   `engineers#index`     |
| GET    | `/engineers/:id`       |   `engineers#show`      |
| POST   | `/engineers`           |   `engineers#create`    |
| PATCH  | `/engineers/:id`       |   `engineers#update`    |
| GET    | `/recruiters`          |   `recruiters#index`    |
| GET    | `/recruiters/:id`      |   `recruiters#show`     |
| POST   | `/recruiters`          |   `recruiters#create`   |
| PATCH  | `/recruiters/:id`      |   `recruiters#update`   |
| GET    | `/conversations`       |   `conversations#index` |
| GET    | `/conversations/:id`   |   `conversationss#show` |
| POST   | `/conversations`       |   `conversations#create`|
| PATCH  | `/conversations/:id`   |   `conversations#update`|

All data returned from API actions is formatted as JSON. Update actions will also work with a PUT.

---
## Authentication


### signup

Signup action expects a *POST* of `credentials` identifying a new user to
 create.

Request body:
```json
{
  "credentials": {
    "email": "an@example.email",
    "password": "an example password",
    "password_confirmation": "an example password"
  }
}
```

### signin

Sign in action expects a *POST* with `credentials` identifying a previously
 registered user.
 
Request body:
```json
{
  "credentials": {
    "email": "an@example.email",
    "password": "an example password"
  }
}
```

If the request is successful, the response will have an HTTP Status of 200 OK,
 and the body will be JSON containing the user's `id`, `email`, and the `token`
 used to authenticate other requests.
 
Response body:
```json
{
  "user": {
    "id": 1,
    "email": "an@example.email",
    "token": "an example authentication token"
  }
}
```

If the request is unsuccessful, the response will have an HTTP Status of 401
 Unauthorized, and the response body will be empty.

### signout

The `signout` actions is a *DELETE* specifying the `id` of the user to sign out.


### changepw

The `changepw` action expects a PATCH of `passwords` specifying the `old` and
 `new`.

Request body:
```json
 {
    "passwords": {
      "old": "oldpassword",
      "new": "newpassowrd"
    }
  }
```


---

The `sign-out` and `change-password` requests must include a valid HTTP header
 `Authorization: Token token=<token>` or they will be rejected with a status of
 401 Unauthorized.

## Engineer actions

All '/engineers' action requests must include a valid HTTP header `Authorization: Token
 token=<token>`


### index

The `index` action is a *GET* that retrieves all the engineers from the database.
The response body will contain JSON containing an array of items, e.g.:

### create

The `create` action expects a *POST* 

Request body:
```json
{
    "engineer": {
      "name": "examplename",
      "website": "https//example.com"
    }
  }
 ```

### update

The `update` action is a *PATCH* the routes dynamic segment is the `id` of the engineer you wish to update.
This action will only accept a new website.

Request body:
```json
{
    "engineer": {
      "website": "https//:example.com",
    }
  }
```

## Recruiter actions

All '/engineers' action requests must include a valid HTTP header `Authorization: Token
 token=<token>`


### index

The `index` action is a *GET* that retrieves all the recruiters from the database.


### create

The `create` action expects a *POST* 

Request body:
```json
{
    "recruiter": {
      "name": "examplename",
      "website": "https//:example.com",
    }
  }
 ```

### update

The `update` action is a *PATCH* the routes dynamic segment is the `id` of the recruiter you wish to update.
This action will only accept a new website.

Request body:

```json
{
    "recruiter": {
      "website": "https//:example.com",
    }
  }
```

## Conversation actions

All '/engineers' action requests must include a valid HTTP header `Authorization: Token
 token=<token>`


### index

The `index` action is a *GET* that retrieves all the conversations that the signed in user has ownership of from the database.


### create

The `create` action expects a *POST*. Only a user with the account type 'recruiter' may make this request.
If user has an account typ of 'engineer' the API will send back a `401 Unauthorized`. If a recruiter attempts to create more than one conversation with the same engineer the API will send back a `422 Unprocessable Entity`

Request body:
```json
{
    "conversation": {
      "recruiter_name": "example",
      "engineer_name": "example",
      "lunch_request": "messagetext",
      "engineer_id": "45"
    }
  }
 ```
`recruiter_name` should be the name of the signed in recruiter who is creating the conversation. `engineer_name` and `engnineer_id` are the id and name attributes of the engineer that the recruiter is sending the conversation too. `lunch_request` is the message the recruiter has entered into a form.


### update

The `update` action is a *PATCH* the routes dynamic segment is the `id` of the conversation you wish to update.
Only a user with the account type 'engineer' may make this request.
If user has an account typ of 'recruiter' the API will send back a `401 Unauthorized`.
The update actions functionality is to let an engineer respond to the conversation that a recruiter created with them.

Request Body:
```json
{
    "conversation": {
      "response": "textofresponse",
      "is_completed": "false"
    }
  }
```

Response is the message that the engineer has typed into a form. is_completed must always be set to true in the request body!!

## destroy
The `update` action is a *DELETE*. If the user making this request is an engineer the action will update the show_to_engineer column on the conversation to false. If the user making this request is a recruiter the action will update the show_to_recruiter column on the conversation to false. This provides a user with the ability to delete a conversation from their inbox with out deleting it from the other associated users inbox. If the both the engineer and the recruiter set their show_to fields to false the conversation will be removed from the database.
