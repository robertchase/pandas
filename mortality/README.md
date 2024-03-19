# CDC Mortality Data

The [CDC](https://www.cdc.gov/) provides data on US deaths
by year&mdash;the latest year being
[2021](https://ftp.cdc.gov/pub/Health_Statistics/NCHS/Datasets/DVS/mortality/mort2021us.zip).

This is a wide, fixed-format file
[described here](https://www.cdc.gov/nchs/nvss/mortality_public_use_data.htm)
from which I only wanted a few attributes, so I used `panda`'s
`read_fwf` to create a `dataframe`, and then saved the result as a `parquet` file for
faster subsequent loads.

[This study by KFF](https://www.kff.org/global-health-policy/issue-brief/child-and-teen-firearm-mortality-in-the-u-s-and-peer-countries/)
claims that firearms are the leading cause of death among children and teens.
They come up with this this number by separating motor vehicle related deaths from other injuries (accidents).
This would be interesting to reproduce.
