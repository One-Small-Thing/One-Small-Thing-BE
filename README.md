# One Small Thing - BE
![One Small Thing](/resources/OneSmallThing.png)

## Prerequisites
  * Rails 7.0.3.1
  * Ruby 3.1.0
  * Graphql 2.0
  * API Keys: Propublica, Google Civics API, Newsapi.org

## Installation
  * Fork & clone this repo
  * Run `bundle install` to install gem packages
  * Run `rails db:{drop,create,migrate,seed}` to set up Database
  * Run `bundle exec figaro install` then add your API keys to the `config/application.yml` file as:
    * `NEWS_API_KEY` for the Newsapi.org API
    * `congress_api` for the Propublica API
    * `google_api` for the Google Civics API
  * Run `rails s` and navigate to localhost:3000 to connect to the Endpoints

## Endpoints
  Receive endpoints from `POST localhost:3000/graphql`

### Users
```
{
  users{
      name
      id
  }
}
```
```
mutation {
  createUser(input:{
      name: "Bob"
      email: "bob@email.com"
  }) {
      user{
          name
          email
      }
  }
}
```
```
mutation {
  userUpdate(input:{
      id: 2,
      name: "Colin"
  }) {
      user{
          name
          email
      }
  }
}
```
```
mutation {
  userDelete(input:{
    id: "41"
  }) {
      user{
          name
          email
      }
  }
}
```

### News API
```
{
    stories (name: "Gun Violence") {
        date
        title
        content
        author
        description
        img
        url
    }
}
```
### Propublica API
```
{
    representatives (address: "80223") {
        name
        emails
        address
        party
        phones
        office
    }
}
```

## Database
![Database Schema](/resources/database_schema.png)

## Authors
