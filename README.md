# panama-specs
Root repo for everything Project Panama

TL,DR: fancy file upload form with folder names based on current date.

Panama is an HTTP-based backend API facilitating user calibration file upload.

KISS without SQL database.

Out of scope: frontend application API consumer. Existing rusEFI console is the frontent application used by actual Jor from Florida. Acceptable criteria: any means to invoke API via HTTP (browser or else?)

## Hosting

https://www.ionos.com/hosting/web-hosting whcih seems to include PHP, Perl, Python, Ruby


## Domain Entries

user base hashmap:, user_data folder.


### user base hashmap

(maybe SQL maybe user_names.csv plain text user database)

* (primary key, unique) stmId
* (a-zA-Z0-9\s)username
* create_date_yyyymmdd

for example
```
-222,Bill Smith 3rd,20241130
225555555,Red Mary,20240130
```




## Performance requirments

Just for information: 5000 users in user_names.csv maximum, one upload request per minute maxumum. No provisions to enforce these limits is needed.

## Security requirments

'stop' mode where no uploads are allowed is required. 

'existing-users-only' mode where uploads are allowed for a known stmId

### write only

user_names.csv and uploaded content should not be exposed via http

## Admin API

Admin API allows to switch between three modes of operations:
* stopped
* existing-users-only
* full

Admin API has a dedicated address some authentication (one hard-coded set of credentials, something plain similar to .htaccess authentication)

## User API

### Create/Rename User

inputs: 
uint32 stmId, String username

username longer than 64 symbols or with prohibited symbols should be rejected 

adds line with current yyyymmdd if primary key not found

modifies userName user_names.csv if already exists

### Lookup User

returns userName for given stmId

### Upload File

inputs:
stmId,string metadata,file

creates new file in 'user_data' folder

file name:
userName_stmId\yyyy-mm-dd\random_file_name.xml



### Sunday state

frontend prototype https://github.com/rusefi/rusefi/tree/panama

backend prototype https://github.com/rusefi/panama-specs/tree/main/panama-test

