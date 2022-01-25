## Configuration

### Data Formats

TODO - Choices and uses to be documented:

- Formats
  - [JSON](https://en.wikipedia.org/wiki/JSON)
  - [CSV](https://en.wikipedia.org/wiki/Comma-separated_values)



### Configuration

#### Application Configuration

TODO - document application configuration.

- config/app.json
    - skipping previous years
    - increasing the verbosity
    - etc.



#### Event Configuration

TODO - document event configuration.

- events/*yyyy*/config/event.json
    - Tweaking existing events; e.g. what should / should not be done.
    - Creating new event; e.g. how to set up a new event by cloning a previous event.



#### Session Configuration

TODO - document session configuration; course times, comments, etc.

- events/*yyyy*/sessions/*yyyymmdd*/courses.json
- events/*yyyy*/sessions/*yyyymmdd*/ukwa.json
- events/*yyyy*/sessions/*yyyymmdd*/iswc.json



### Reference Data

#### Nationalities

TODO - Summarise the reference data for nationalities and flags.

- config/countries.txt
- config/nationalities.txt



#### Name Matching

TODO - Summarise the data used to refine the "fuzzy matching" of names.

- config/nicknames.txt
- config/relations.txt



#### Records

TODO - Explain how records are tracked

- config/records.json
