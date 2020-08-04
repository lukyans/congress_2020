# Public Interest

The API key is at the [ProPublica Congress API](https://projects.propublica.org/api-docs/congress-api/).

### Versions

Rails 6.0.3
Ruby 2.7.0

### Setup

```bash
git clone https://github.com/lukyans/congress_2020

cd congress_2020

rails db:create
rails db:migrate
```

### API endpoints

```
Members https://api.propublica.org/congress/v1/members/house/co/current.json
```

Run
```
rspec spec
```

```
As a user
When I visit "/"
And I select "Colorado" from the dropdown
And I click on "Locate Members of the House"
Then my path should be "/search" with "state=CO" in the parameters
And I should see a message "7 Results"
And I should see a list of the 7 members of the house for Colorado
And I should see a name, role, party, and district for each member
```

### Live
https://public-interest.herokuapp.com/
