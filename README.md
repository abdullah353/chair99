# README

## Platform Versions

```bash
ruby -version
ruby 2.4.1p111 (2017-03-22 revision 58053) [x86_64-darwin16]
```

```bash
rails --version
Rails 5.0.2
```

## API Endpoints

For task 1:
----------

*Route* :

api_v1_csv_parser_filter_first_name | POST | /api/v1/csv_parser/filter_first_name(.:format) | api/v1/csv_parser#filter_first_name

*Summary*:

I am using postman to submit the csv file as test are not completed. Sample csv file is located at
```test/sample.csv```

HTTP Request sample is
```bash
curl -X POST \
  http://localhost:3000/api/v1/csv_parser/filter_first_name \
  -H 'content-type: application/x-www-form-urlencoded' \
```


For Task 2:
--------

visit [PortalPage](http://localhost:3000/portal/csv_portal) 

The sample file that i am using is
```
test/sample2.csv
```

