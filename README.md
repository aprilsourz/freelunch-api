# Free Lunch Api
Capstone project for the Web Development Immersive at General Assembly Boston. This is the repository for the server side application. Free lunch is a networking app for software engineers who want to get taken out to lunch. And for recruiters who are looking for talent. This is the first and most basic iteration of the application.

As of now the app supports no more than 2 messages per lunch invitation. Users can display the link for their personal website or Linked In profile in place of having an in app profile.

URL for api: [https://protected-fjord-91425.herokuapp.com/](https://protected-fjord-91425.herokuapp.com/)

[Link to ERD](http://imgur.com/dhsKD6N)

[Link to front end repository](https://github.com/arlofeirman/free-lunch)

Link to try the app: [https://arlofeirman.github.io/free-lunch/](https://arlofeirman.github.io/free-lunch/

### Technologies
This API was built with Ruby on Rails and was tested with curl scripts.

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

## User actions

*Summary:*

<table>
<tr>
  <th colspan="3">Request</th>
  <th colspan="2">Response</th>
</tr>
<tr>
  <th>Verb</th>
  <th>URI</th>
  <th>body</th>
  <th>Status</th>
  <th>body</th>
</tr>
<tr>
<td>POST</td>
<td>`/sign-up`</td>
<td><strong>credentials</strong></td>
<td>201, Created</td>
<td><strong>user</strong></td>
</tr>
<tr>
  <td colspan="3"></td>
  <td>400 Bad Request</td>
  <td><em>empty</em></td>
</tr>
<tr>
<td>POST</td>
<td>`/sign-in`</td>
<td><strong>credentials</strong></td>
<td>200 OK</td>
<td><strong>user w/token</strong></td>
</tr>
<tr>
  <td colspan="3"></td>
  <td>401 Unauthorized</td>
  <td><em>empty</em></td>
</tr>
<tr>
<td>DELETE</td>
<td>`/sign-out/:id`</td>
<td>empty</td>
<td>201 Created</td>
<td>empty</td>
</tr>
<tr>
  <td colspan="3"></td>
  <td>401 Unauthorized</td>
  <td><em>empty</em></td>
</tr>
<tr>
<td>PATCH</td>
<td>`/change-password/:id`</td>
<td><strong>passwords</strong></td>
<td>204 No Content</td>
<td><strong>user w/token</strong></td>
</tr>
<tr>
  <td colspan="3"></td>
  <td>400 Bad Request</td>
  <td><em>empty</em></td>
</tr>
</table>

### signup

The `create` action expects a *POST* of `credentials` identifying a new user to
 create.

```
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

The `signin` action expects a *POST* with `credentials` identifying a previously
 registered user.

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

If the request is successful the response will have an HTTP status of 204 No
 Content.

If the request is unsuccessful, the response will have a status of 401
 Unauthorized.

### changepw

The `changepw` action expects a PATCH of `passwords` specifying the `old` and
 `new`.

If the request is successful the response will have an HTTP status of 204 No
 Content.

If the request is unsuccessful the reponse will have an HTTP status of 400 Bad
 Request.

---

The `sign-out` and `change-password` requests must include a valid HTTP header
 `Authorization: Token token=<token>` or they will be rejected with a status of
 401 Unauthorized.

## Item actions

All items action requests must include a valid HTTP header `Authorization: Token
 token=<token>


*Summary:*

<table>
<tr>
  <th colspan="3">Request</th>
  <th colspan="2">Response</th>
</tr>
<tr>
  <th>Verb</th>
  <th>URI</th>
  <th>body</th>
  <th>Status</th>
  <th>body</th>
</tr>
<tr>
<td>POST</td>
<td>`/items`</td>
<td><strong>item</strong></td>
<td>200, OK</td>
<td><strong>item w/ id</strong></td>
</tr>
<tr>
  <td colspan="3"></td>
  <td>400 Bad Request</td>
  <td><em>empty</em></td>
</tr>
<tr>
<td>PATCH</td>
<td>`/items/:id`</td>
<td><strong>item</strong></td>
<td>200 OK</td>
<td><strong>item w/ id</strong></td>
</tr>
<tr>
  <td colspan="3"></td>
  <td>422 Unprocessable Entity</td>
  <td><em>empty</em></td>
</tr>
<tr>
<td>DELETE</td>
<td>`/items/:id`</td>
<td>empty</td>
<td>204 no content</td>
<td>empty</td>
</tr>
<tr>
  <td colspan="3"></td>
  <td>401 Unauthorized</td>
  <td><em>empty</em></td>
</tr>
<tr>
<td>GET</td>
<td>`/items/</td>
<td><strong>item</strong></td>
<td>200 OK</td>
<td><strong>Items for signed in user</strong></td>
</tr>
<tr>
  <td colspan="3"></td>
  <td></td>
  <td>400 bad request</td>
</tr>
</table>

### index

The `index` action is a *GET* that retrieves all the items associated with a
 user.
The response body will contain JSON containing an array of items, e.g.:

```json
{
  "items": [
    {
      "content": "Item 1",
      "id": 43
    },
    {
      "content": "Item 2",
      "id": 3
    }
  ]
}
```
### create

The `create` action expects a *POST* 

Example JSON

```json
{
    "item": {
      "content": "Item Content"
    }
  }
 ```

If the request is successful, the response will have an HTTP Status of 200
 OK, and the body will contain JSON of the Item and its id.

```json
{
  "item": {
    "content": "Item Content",
    "id": 48
  }
}
```

If the request is unsuccessful, the response will have an HTTP Status of 400 Bad
 Request, and the response body will be JSON describing the errors.


### destroy

The `destroy` actions is a *DELETE* specifying the `id` of the list item to delete.

If the request is successful the response will have an HTTP status of 204 No
 Content.

If the request is unsuccessful, the response will have a status of 401
 Unauthorized.

### update

The `update` action is a *PATCH* specifying the `id` of the list item to edit.

Eample JSON

```json
{
    "item": {
      "content": "item content"
    }
  }
```

If the request is successful, the response will have an HTTP Status of 200
 OK, and the body will contain JSON of the Item and its id.

```json
{
  "item": {
    "content": "Item Content",
    "id": 48
  }
}
```
If the request is unsuccessful the reponse will have an HTTP status of 422 Unprocessable Entity
