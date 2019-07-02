# Github Batch Cloner

This is a simple set of Node and Bash scripts to locate all repositories witinh an organisation and clone them and then later being able to batch pull the most recent changes from the HEAD of each repository.

## Step 1 - Find list of organisation or user repositories

This will create a file called \<github-handle\>-repos.txt, containing a list of all repositories SSH urls.

```
# Assuming a Github organisation or user handle of netflix
./fetch-repos.js netflix
```

### Example file output e.g. netflix-repos.txt

```
git@github.com:netflix/zuul.git
git@github.com:netflix/falcor.git
git@github.com:netflix/eureka.git
git@github.com:netflix/chaosmonkey.git
...
```

## Step 2 - Clone all organisation or user repositories

This will read a file created in step one, base on the Github handle provided and clone all repositories into a the repos/\<github-handle\> folder.

```
# Assuming a Github organisation or user handle of netflix
./clone.sh netflix
```

## Step 3 - Pull all the latest changes from HEAD for each repo in the repos/\<github-handle\> folder

This will loop through each directory in the repos/\<github-handle\> folder and perform a git pull

```
# Assuming a Github organisation or user handle of netflix
./pull.sh netflix
```