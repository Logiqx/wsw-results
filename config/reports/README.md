# Configuration

## Reports

Reports can have the following details in the JSON:

| Name       | Mandatory |   Values   | Comment                                                      |
| ---------- | :-------: | :--------: | ------------------------------------------------------------ |
| Fields     |     Y     |    text    | List of fields to be output                                  |
| Filter     |           |    text    | Filter conditions                                            |
| Limit      |           |  integer   | The maximum number of people to list in the report           |
| Period     |           |   "week"   | Whether to use fastest speeds of week. Default is day / session. |
| Rank       |           | "Y" or "N" | Whether the results should be ranked. Default is "Y"         |
| Series     |           |    text    | Used to lookup time limits for UKWA and ISWC sessions        |
| ShowSpeeds |           |  integer   | Can be used to display up to 10 speeds (e.g. verification report) |
| Sort       |           |    text    | Specify custom sort specification. Used for all runs, etc    |
| Subtitle   |           |    text    | Optional subtitle for the report                             |
| Title      |     Y     |    text    | Main title for the report                                    |
| WebPublish |           | "Y" or "N" | Whether the report will be published on the web (slightly redundant now) |
