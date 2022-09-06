# One Small Thing - BE
![One Small Thing](/resources/One Small Thing.png)

## Prerequisites
  * [Rails v7.0.3.1](https://rubyonrails.org/)
  * [Ruby v3.1.0](https://ruby-lang.org/en/)
  * [Graphql v2.0](https://graphql.org)
  * API Keys:
    * [Propublica](https://projects.propublica.org/api-docs/congress-api/)
    * [Google Civics API](https://developers.google.com/civic-information)
    * [Newsapi.org](https://newsapi.org/docs/get-started)

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

## Authors (links to GitHub)
 * [Stirling Hostetter](https://github.com/stirlhoss)
 * [Sai Hall](https://github.com/SaiHall)
 * [Colin Reinhart](https://github.com/ColinReinhart)
 * [Matt Deming](https://github.com/Deming-Matt)
