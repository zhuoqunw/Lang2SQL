# Lang2SQL
last updated 4/18/2024

Creating an English to SQL query generator using OpenAI API. User needs to give the table names and a specific query request, as well as load in the data, Lang2SQL will return the corresponding SQL query.

How to run this?  
* a) It's recommended to set up a virtual enviornment in Python and have all required packages installed there.   
  * i) For how to set virtual env up, refer to [Virtual Environment Setup.txt](Virtual%20Environment%20Setup.txt)  
  * ii) All required packages are under [.devcontainer](.devcontainer)  
* b) You will need to request an api_key from OpenAI API, here is [how](https://community.openai.com/t/how-do-i-get-my-api-key/29343)  
* c) Download the datasets and store the .csv files under a folder "data"  
  [2021](https://data.cityofchicago.org/Public-Safety/Crimes-2021/dwme-t96c/about_data)  
  [2022](https://data.cityofchicago.org/Public-Safety/Crimes-2022/9hwr-2zxp/about_data)  
  [2023](https://data.cityofchicago.org/Public-Safety/Crimes-2023/xguy-4ndq/about_data)  
* d) Now run code in [Code.ipynb](Code.ipynb)

Inspired by the [project by Rami Krispin](https://github.com/RamiKrispin/lang2sql)
