# BACKEND CODING CHALLENGE

This is the coding challenge for people who applied to a backend developer position at SeQura. 
It's been designed to be a simplified version of the same problems we deal with.

## Setup

To initialize the project just clone the repo.
Open a terminal and go to your project folder. Then run the following command to install all dependencies
```
bundle install
```
After that run the database migrations
```
bin/rails db:migrate
```
And populate orders table
```
bin/rails db:seed
```
Last but not least, bring up the server
```
rails s
```
Now you should be ready to test the project.

##API Endpoints

There are only two available API endpoints at the moment.
The first one is when provided a ***merchant_id***, you will see the disbursements for desired merchant.
```
{base_url} /api/v1/disbursement/:merchant_id
```
In this case the *base_url* would be your localhost.

```
{base_url} /api/v1/disbursement
```
In case you do not provide a ***merchant_id***, you will get all the disbursements for all merchants.

##Project

I want to highlight some of the decisions I made regarding the structure of the challenge and also the missing parts.

- First of all, I decided to use Ruby in order to starting to get used to it for the future and also to learn something new (really enjoyed it).
- Created four models to interact with the database (Merchant, Shopper, Order, Disbursement).
- Populated just the orders database.
- Created just one controller (DisbursementController) to handle the *index* and *show* functions connected to the provided endpoints.
- Created a service (DisbursementCalculator) to separate the calculations responsibility.
- Created a job (CalculateDisbursementJob) to execute every day at certain time so it calculates disbursements on the background.

###Missing

- I was not able to connect the job to execute  every day at certain time.
- I wanted to populate all the tables but decided not to because it was taking me too much time.

##Credits

Proper credits to the SeQura development team, thank you for the challenge and the opportunity. 