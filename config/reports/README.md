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
| Rank       |           | "Y" or "N" | Whether the results should be ranked. Default is "Y"         |
| Reports   | Y |   JSON list   | List of report definitions |
| Series     |           |    text    | Used to lookup time limits for UKWA and ISWC sessions        |
| ShowSpeeds |           |  integer   | Can be used to display up to 10 speeds (e.g. verification report) |
| Sort       |           |    text    | Specify custom sort specification. Used for all runs, etc    |
| Subtitle   |           |    text    | Optional subtitle for the report                             |
| Suptitle   |           |    text    | Optional title for the page                             |
| Title      |     Y     |    text    | Main title for the report                                    |
| Years      |           |    text    | Only for reference purposes (will be deprecated) |

