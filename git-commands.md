# add fork origin as upstream
git remote add upstream FORK_ORIGIN_URL

# fetch all tags
git fetch upstream --tags

# list all tags
git tag

# create branch from tag
git switch -c NEW_BRANCH_NAME TAG_NAME
