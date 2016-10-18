import os
import shutil


# assumes standard format of 'revXX' where xx are integers
# Determine what revisions already exist
def get_current_revisions(currentDir):
    tags = os.path.join(currentDir, 'tags')
    directories = os.walk(tags).next()[1]
    largest = 0
    for directory in directories:
        # assuming numeric is element 3 and 4
        if directory[3:5] > largest:
            largest = directory[3:5]
    return int(largest)


def copy_to_revision(cwd, destination):
    # copy all relevant information to new revision folder
    trunk = os.path.join(cwd, 'trunk')
    shutil.copytree(trunk, destination)


def main():
    cwd = os.getcwd()

    largest_rev = get_current_revisions(cwd)
    new_rev = largest_rev + 1
    if new_rev < 10:
        revDir = 'rev' + str(0) + str(new_rev)
    else:
        revDir = 'rev' + str(new_rev)
    revPath = os.path.join(cwd, 'tags', revDir)
    print "Created:",
    print revDir
    copy_to_revision(cwd, revPath)

main ()
