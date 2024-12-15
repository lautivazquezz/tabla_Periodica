camper: /project$ mkdir periodic_table
camper: /project$ mkdir periodic_table
mkdir: cannot create directory ‘periodic_table’: File exists
camper: /project$ cd periodic_table
camper: /periodic_table$ git init
hint: Using 'master' as the name for the initial branch. This default branch name
hint: is subject to change. To configure the initial branch name to use in all
hint: of your new repositories, which will suppress this warning, call:
hint: 
hint:   git config --global init.defaultBranch <name>
hint: 
hint: Names commonly chosen instead of 'master' are 'main', 'trunk' and
hint: 'development'. The just-created branch can be renamed via this command:
hint: 
hint:   git branch -m <name>
Initialized empty Git repository in /workspace/project/periodic_table/.git/
camper: /periodic_table$ git branch
camper: /periodic_table$ git checkout main
error: pathspec 'main' did not match any file(s) known to git
camper: /periodic_table$ cd ..
camper: /project$ git branch
* main
camper: /project$ git checkout main
M       .freeCodeCamp/package-lock.json
M       .freeCodeCamp/test/.cwd
M       .freeCodeCamp/test/.next_command
Already on 'main'
Your branch is ahead of 'origin/main' by 2 commits.
  (use "git push" to publish your local commits)
camper: /project$ touch script.sh
camper: /project$ cd periodic_table
camper: /periodic_table$ touch script.sh
camper: /periodic_table$ git add script.sh
camper: /periodic_table$ git commit -m "Initial commit"
[master (root-commit) c656863] Initial commit
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 script.sh
camper: /periodic_table$ git branch
* master
camper: /periodic_table$ git branch -m master main
camper: /periodic_table$ git branch
* main
camper: /periodic_table$ touch element.sh
camper: /periodic_table$ git add element.sh
camper: /periodic_table$ git commit -m "feat: agregar script element.sh"
[main f97a17e] feat: agregar script element.sh
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 element.sh
camper: /periodic_table$ git add script.sh
camper: /periodic_table$ git commit -m "feat: commit"
[main 3f69ade] feat: commit
 1 file changed, 2 insertions(+)
camper: /periodic_table$ git add script.sh
camper: /periodic_table$ git commit -m "feat: commit"
[main fb291e8] feat: commit
 1 file changed, 2 insertions(+), 1 deletion(-)
camper: /periodic_table$ git add script.sh
camper: /periodic_table$ git commit -m "feat: commit"
On branch main
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   element.sh
        modified:   script.sh

no changes added to commit (use "git add" and/or "git commit -a")
camper: /periodic_table$ git add script.sh
camper: /periodic_table$ git commit -m "feat: commit"
[main cb4c5a8] feat: commit
 1 file changed, 2 insertions(+), 1 deletion(-)
camper: /periodic_table$ chmod +x element.sh
camper: /periodic_table$ ./element.sh 1
The element with atomic number 1 is Hydrogen (H). It's a nonmetal, with a mass of 1.008 amu. Hydrogen has a melting point of -259.1 celsius and a boiling point of -252.9 celsius.
camper: /periodic_table$ ./element.sh
Please provide an element as an argument.
camper: /periodic_table$ ./element.sh H
The element with atomic number 1 is Hydrogen (H). It's a nonmetal, with a mass of 1.008 amu. Hydrogen has a melting point of -259.1 celsius and a boiling point of -252.9 celsius.
camper: /periodic_table$ ./element.sh Hydrogen
The element with atomic number 1 is Hydrogen (H). It's a nonmetal, with a mass of 1.008 amu. Hydrogen has a melting point of -259.1 celsius and a boiling point of -252.9 celsius.
camper: /periodic_table$ ./element.sh 1
The element with atomic number 1 is Hydrogen (H). It's a nonmetal, with a mass of 1.008 amu. Hydrogen has a melting point of -259.1 celsius and a boiling point of -252.9 celsius.
camper: /periodic_table$ git add element.sh
camper: /periodic_table$ git commit -m "feat: commit"
[main 60fe21e] feat: commit
 1 file changed, 44 insertions(+)
 mode change 100644 => 100755 element.sh
camper: /periodic_table$ ./element.sh 1
The element with atomic number 1 is Hydrogen (H). It's a nonmetal, with a mass of 1.008 amu. Hydrogen has a melting point of -259.1 celsius and a boiling point of -252.9 celsius.
camper: /periodic_table$ ./element.sh 1
The element with atomic number 1 is Hydrogen (H). It's a nonmetal, with a mass of 1.008 amu. Hydrogen has a melting point of -259.1 celsius and a boiling point of -252.9 celsius.
camper: /periodic_table$ ./element.sh Hydrogen
The element with atomic number 1 is Hydrogen (H). It's a nonmetal, with a mass of 1.008 amu. Hydrogen has a melting point of -259.1 celsius and a boiling point of -252.9 celsius.
camper: /periodic_table$ ./element.sh H
The element with atomic number 1 is Hydrogen (H). It's a nonmetal, with a mass of 1.008 amu. Hydrogen has a melting point of -259.1 celsius and a boiling point of -252.9 celsius.
camper: /periodic_table$ ./element.sh Hydr
I could not find that element in the database.
camper: /periodic_table$ ./element.sh Hydrogen
The element with atomic number 1 is Hydrogen (H). It's a nonmetal, with a mass of 1.008 amu. Hydrogen has a melting point of -259.1 celsius and a boiling point of -252.9 celsius.
camper: /periodic_table$ git add element.sh
camper: /periodic_table$ git commit -m "fix: commit"
[main 88436b5] fix: commit
 1 file changed, 1 insertion(+)
camper: /periodic_table$ git rebase -i --root
hint: Waiting for your editor to close the file... ^C
camper: /periodic_table$ git rebase --continue
The previous cherry-pick is now empty, possibly due to conflict resolution.
If you wish to commit it anyway, use:

    git commit --allow-empty

Otherwise, please use 'git rebase --skip'
On branch main
Last command done (1 command done):
   pick c656863 Initial commit
Next commands to do (6 remaining commands):
   pick f97a17e feat: agregar script element.sh
   pick 3f69ade feat: commit
  (use "git rebase --edit-todo" to view and edit)
You are currently rebasing branch 'main' on 'c370429'.
  (all conflicts fixed: run "git rebase --continue")

nothing to commit, working tree clean
Could not apply c656863... Initial commit
camper: /periodic_table$ git commit -m "fix: commit"
On branch main
Last command done (1 command done):
   pick c656863 Initial commit
Next commands to do (6 remaining commands):
   pick f97a17e feat: agregar script element.sh
   pick 3f69ade feat: commit
  (use "git rebase --edit-todo" to view and edit)
You are currently rebasing branch 'main' on 'c370429'.
  (all conflicts fixed: run "git rebase --continue")

nothing to commit, working tree clean
The previous cherry-pick is now empty, possibly due to conflict resolution.
If you wish to commit it anyway, use:

    git commit --allow-empty

Otherwise, please use 'git rebase --skip'
camper: /periodic_table$ git commit --amend
fatal: You are in the middle of a rebase -- cannot amend.
camper: /periodic_table$ git rebase --continue
Auto-merging element.sh
CONFLICT (add/add): Merge conflict in element.sh
error: could not apply f97a17e... feat: agregar script element.sh
hint: Resolve all conflicts manually, mark them as resolved with
hint: "git add/rm <conflicted_files>", then run "git rebase --continue".
hint: You can instead skip this commit: run "git rebase --skip".
hint: To abort and get back to the state before "git rebase", run "git rebase --abort".
Could not apply f97a17e... feat: agregar script element.sh
camper: /periodic_table$ ALTER TABLE properties DROP COLUMN type
bash: ALTER: command not found
camper: /periodic_table$ /periodic_table$ psql --username=freecodecamp --dbname=periodic_table
bash: /periodic_table$: No such file or directory
camper: /periodic_table$ /periodic_table$ psql --username=freecodecamp --dbname=periodic_table
psql (12.17 (Ubuntu 12.17-1.pgdg22.04+1))
bash: /periodic_table$: No such file or directory
bash: syntax error near unexpected token `12.17'
camper: /periodic_table$ psql --username=freecodecamp --dbname=periodic_table
psql (12.17 (Ubuntu 12.17-1.pgdg22.04+1))
psql (12.17 (Ubuntu 12.17-1.pgdg22.04+1))
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, bits: 256, compression: off)
Type "help" for help.

periodic_table=> ALTER TABLE properties DROP COLUMN type;
ALTER TABLE
periodic_table=> ./element.sh
periodic_table-> ./element.sh 1
periodic_table-> \q
bash: syntax error near unexpected token `12.17'
camper: /periodic_table$ \q
bash: q: command not found
camper: /periodic_table$ /periodic_table$ ./element.sh 1
bash: /periodic_table$: No such file or directory
camper: /periodic_table$ ./element.sh 1
The element with atomic number 1 is Hydrogen (H). It's a nonmetal, with a mass of 1.008 amu. Hydrogen has a melting point of -259.1 celsius and a boiling point of -252.9 celsius.
camper: /periodic_table$ git add element.sh
camper: /periodic_table$ git add element.sh
camper: /periodic_table$ git commit-m "fix: commit"
git: 'commit-m' is not a git command. See 'git --help'.

The most similar command is
        commit-tree
camper: /periodic_table$ git commit -m "fix: commit"
On branch main
Last commands done (2 commands done):
   pick c656863 Initial commit
   pick f97a17e feat: agregar script element.sh
Next commands to do (5 remaining commands):
   pick 3f69ade feat: commit
   pick fb291e8 feat: commit
  (use "git rebase --edit-todo" to view and edit)
You are currently rebasing branch 'main' on 'c370429'.
  (all conflicts fixed: run "git rebase --continue")

nothing to commit, working tree clean
camper: /periodic_table$ git commit -m "fix: commit"
On branch main
Last commands done (2 commands done):
   pick c656863 Initial commit
   pick f97a17e feat: agregar script element.sh
Next commands to do (5 remaining commands):
   pick 3f69ade feat: commit
   pick fb291e8 feat: commit
  (use "git rebase --edit-todo" to view and edit)
You are currently rebasing branch 'main' on 'c370429'.
  (all conflicts fixed: run "git rebase --continue")

nothing to commit, working tree clean
camper: /periodic_table$ 