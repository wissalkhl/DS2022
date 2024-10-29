# Working with APIs

An API is a web-based standard for computers to communicate with one another. They are useful in data science as a way of retrieving remote data, or publishing data and making it available to others.

## Methods

- GET - fetch or retrieve data
- POST - send or submit data

## Endpoints

Endpoints are the various URL paths of an API. Each one represents a different data collection or type of interaction with the API.

For instance, a company that sells bicycles might have the following endpoints (with their methods):

- `/customers` [GET] - a way of fetching a list of its customers
- `/customers/{ID}` [GET] - a way of fetching a single customer record
- `/customers` [POST] - a way of creating a new customer record
- `/catalog` [GET] - a way of fetching a list of all products
- `/catalog/{ID}` [GET] - a way of fetching a single catalog item
- `/catalog` [POST] - a way of creating a new product record

## Payloads

Payloads are typically a collection of data in JSON format, though sometimes a payload might be a file. Payloads can be submitted or received. Here is a simple example:

```
{
  "Index":1412,
  "Customer Id":"9f8DB43FFeC1Da4",
  "First Name":"Stuart",
  "Last Name":"Ballard",
  "Company":"Fox, Ballard and Patton",
  "City":"South Randall",
  "Email":"vaughankirk@hunter-chavez.com",
  "Subscription Date":"2020-05-21",
}
```

## API Data

APIs typically expose data from another system, such as storage, a database, or another service.

However, students familiar with Python will recognize that the Pandas library can query CSV files in much the same way as a database.

Consider the following example, which passes a row index into a function to retrieve that record.

[Sample Data](https://github.com/datablist/sample-csv-files) - fetch the 10k customer record CSV file.

```
import pandas as pd

def get_customer_by_index(idx):
  df = pd.read_csv("customers.csv")
  customer = df.iloc[idx]
  return customer.to_dict()

get_customer_by_index(1372)
```

```
{'Index': 1373, 'Customer Id': '3AD32Dab554fcaD', 'First Name': 'Kyle', 'Last Name': 'Jefferson', 'Company': 'Farley-Mcgrath', 'City': 'Lorettatown', 'Country': 'Australia', 'Phone 1': '435-303-9388x292', 'Phone 2': '(703)354-0004x2229', 'Email': 'natalie51@reid.com', 'Subscription Date': '2021-07-13', 'Website': 'http://cole-melton.com/'}
```
