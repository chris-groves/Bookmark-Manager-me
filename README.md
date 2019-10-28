
## Database Setup

1. Connect to psql with the following command in the terminal:```psql postgres```

2. Create the database: ```CREATE DATABASE bookmark_manager;```

3. Connect to the newly created database: ```\c bookmark_manager;```

4. Create the bookmarks table within the database: ```CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));```

5. Add title column to bookmarks table: ```ALTER TABLE bookmarks ADD COLUMN title VARCHAR(60);```

## Training Database Setup

1. Connect to psql with the following command in the terminal:```psql postgres```

2. Create the database: ```CREATE DATABASE bookmark_manager_test;```

3. Connect to the newly created database: ```\c bookmark_manager_test;```

4. Create the bookmarks table within the database: ```CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));```

5. Add title column to bookmarks table: ```ALTER TABLE bookmarks ADD COLUMN title VARCHAR(60);```


## Working with the Database

View the bookmarks table: ```SELECT * FROM bookmarks;```

Add bookmarks to the table: ```INSERT INTO bookmarks (url) VALUES('www.google.com');```

Delete bookmarks from the table: ```DELETE FROM bookmarks WHERE url = 'www.twitter.com';```

Amend a bookmark entry: ```UPDATE bookmarks SET url = 'www.destroyallsoftware.com' WHERE url = 'www.askjeeves.com'```

## User Stories

```
As a user,
So I can easily access my favourite websites,
I would like to see a list of bookmarks

As a user,
So I can store a new website I like,
I would like to add a new bookmark

As a user,
So I can remove my bookmark from Bookmark Manager
I want to delete a bookmark
```
