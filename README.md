
## Database Setup

1. Connect to psql with the following command in the terminal:
```
psql postgres
```

2. Create the database:
```
CREATE DATABASE bookmark_manager;
```

3. Connect to the newly created database:

```\c bookmark_manager;
```

4. Create the bookmarks table within the database:
```
CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
```

## User Stories

```
As a user,
So I can easily access my favourite websites,
I would like to see a list of bookmarks
```
