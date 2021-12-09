# Configuration

## Reports

Reports can have the following details in the JSON:

| Name       | Mandatory |   Values   | Comment                                                      |
| ---------- | :-------: | :--------: | ------------------------------------------------------------ |
| Fields     |     Y     |    text    | List of fields to be output                                  |
| Filter     |           |    text    | Filter conditions                                            |
| HideFields |           |    text    | List of fields to be hidden from output                                  |
| Limit      |           |  integer   | The maximum number of people to list in the report           |
| Period     | Y |   "week"   | Whether to use fastest speeds of week. Default is day / session. |
| Periods     |          |   JSON dict   | Templating function to re-use report definitions (e.g. session and event) |
| Prizes     |          | integer | The number of prizes to be awarded for the category. Default is 0. |
| Profile     |          | "Y" or "N" | Whether to include position in daily / weekly profiles. Default is "N". |
| Rank       |           | "Y" or "N" | Whether the results should be ranked. Default is "Y"         |
| Reports   | Y |   JSON list   | List of report definitions |
| Series     |           |    text    | Used to lookup time limits and scoring for UKWA / ISWC sessions |
| ShowSpeeds |           |  integer   | Can be used to report up to the 10 best speeds (e.g. verification report) |
| Sort       |           |    text    | Specify custom sort specification. Used for all runs, etc. |
| Subtitle   |           |    text    | Optional subtitle for the report                             |
| Suptitle   |           |    text    | Optional title for the web page                         |
| Title      |     Y     |    text    | Main title for the report                                    |
| Trophy     |           | "Y" or "N" | Whether a trophy is to be awarded for the category. Default is "N" |
| Years      |           |    text    | Only for reference purposes and will be deprecated in the future |

