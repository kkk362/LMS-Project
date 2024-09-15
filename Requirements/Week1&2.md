# Classroom material

## Structure of the program
  * Team
  * Product E2E
  * Agile/DevOps
  * Full stack
  * Cloud (little bit)

## Goals of the program
  * "Learning to learn"
  * Productivity hacks
    * google
    * command line (+ simple IDE)
    * cheat sheets
    * bookmarks
    * check lists
    * REPL
    * tutorials
    * ...
  * Communication, teamwork, ...

## Multi-tier systems
  * Presentation, Business Logic, Persistence
    * Web, Mobile, cli,Thick Client, ...
      * Web
        * Hybrid MVC vs Browser-side MVC
      * Mobile
        * Native vs Cross-Platform
    * Containers, REST API, ...
    * File system, RDBMS, NoSQL, BigData, DW, ...

 ## Software Development
   * Tools : source code control, ticket, IDE, build, test, execute
   * Iteration:
     * Assign to yourself
     * Checkout
     * branch
     * change
     * test
     * deploy/test
     * checkin
     * review
     * pipeline
     * close
     * delete branch   

## Unix command line basics
  * pwd
  * ls
  * cd
  * mkdir
 
  
## Source code control systems

## Git
  * workspace, staging, local, remote

## Editors, Build systems vs IDE

## Databases: concepts

## Databases: SQL/DML

## Agile basics
  * Sprint, Kanban
  * Product Backlog, Sprint Backlog
    * Epics, User Stories, Tasks, Bug
    * To Do, In Progress, Resolved, Accepted
  * Sprint Rituals
    * Planning
    * Standup
    * Review
    * Retrospective
  
# Workshop material - **Day #1** - AWS CodeCommit/Visual Studio 2019
 
 **Setting up AWS CodeCommit**
   * Open: https://635681506020.signin.aws.amazon.com/console in your browser; bookmark this page in your browser
   * Type your IAMS user name as  {hexaware e-mail Id}-Hexaware, e.g, KrishnaKumar-Hexaware  and "hexaware123" as your initial sign-in password
   * After  you sign in for the first time, you must change your password.
    
  **Setting Up the Public and Private Keys for Git and AWS CodeCommit**
    * Step 1: Open the Git Bash emulator; From the emulator, run the ssh-keygen command, and follow the directions to save the file to the .ssh directory for your profile.
    * For example:
      * $ `ssh-keygen`
    * Generating public/private rsa key pair.
    * Enter file in which to save the key (/drive/Users/user-name/.ssh/id_rsa): Pree Enter [to save the key in C:\users\Hvuser\.ssh\id_rsa) 
    * Enter passphrase (empty for no passphrase): Pree Enter [do not use passphrase]
    * Enter same passphrase again: Press Enter 
    * Your identification has been saved in drive/Users/user-name/.ssh/id_rsa.
    * Your public key has been saved in drive/Users/user-name/.ssh/id_rsa.pub.
    * The key fingerprint is:
       * 45:63:d5:99:0e:99:73:50:5e:d4:b3:2d:86:4a:2c:14 user-name@client-name
    * The key's randomart image is:
    ```
+--[ RSA 2048]----+
|        E.+.o*.++|
|        .o .=.=o.|
|       . ..  *. +|
|        ..o . +..|
|        So . . . |
|          .      |
|                 |
|                 |
|                 |
+-----------------+
    ```
    * This generates:
        •	The id_rsa file, which is the private key file.
        •	The id_rsa.pub file, which is the public key file.
   
    * Step 2: Run the following commands to display the value of the public key file (id_rsa.pub)
        `cd .ssh`
        `notepad id_rsa.pub`
    * Copy the contents of the file, and then close Notepad without saving. The contents of the file will look similar to the following:
    ```
    ssh-rsa EXAMPLE-AfICCQD6m7oRw0uXOjANBgkqhkiG9w0BAQUFADCBiDELMAkGA1UEBhMCVVMxCzAJB
    gNVBAgTAldBMRAwDgYDVQQHEwdTZWF0dGxlMQ8wDQYDVQQKEwZBbWF6b24xFDASBgNVBAsTC0lBTSBDb2
    5zb2xlMRIwEAYDVQQDEwlUZXN0Q2lsYWMxHzAdBgkqhkiG9w0BCQEWEG5vb25lQGFtYXpvbi5jb20wHhc
    NMTEwNDI1MjA0NTIxWhcNMTIwNDI0MjA0NTIxWjCBiDELMAkGA1UEBhMCVVMxCzAJBgNVBAgTAldBMRAw
    DgYDVQQHEwdTZWF0dGxlMQ8wDQYDVQQKEwZBbWF6b24xFDAS=EXAMPLE user-name@computer-name
    ```
    * Step 3: Sign in to the AWS Management Console and open the IAM console at https://console.aws.amazon.com/iam/.
    
    * Step 4: In the IAM console, in the navigation pane, choose Users, and from the list of users, choose your IAM user
    
    * Step 5: On the user details page, choose the Security Credentials tab, and then choose Upload SSH public key.
    
    * Step 6: Paste the contents of your SSH public key into the field, and then choose Upload SSH public key
    
    * Step 7: Copy or save the information in SSH Key ID (for example, APKAEIBAERJR2EXAMPLE).
    
    * Step 8: In the Bash emulator, type the following commands to create a config file in the ~/.ssh directory, or edit it if one already exists:
        `cd .. [if you are in .ssh directory already]`
        `vi ~/.ssh/config`
    * Step 9: Add the following lines to the file, where the value for User is the SSH key ID you copied earlier, and the value for 
    [User shift+ p to copy the following lines in vi editor]
    ```
      * Host git-codecommit.*.amazonaws.com
      * User APKAEIBAERJR2EXAMPLE   [user i(insertmode)to edit the user id]
      * IdentityFile ~/.ssh/id_rsa
    ```
      * Use :wq to save the file 
      
    * Step 10: Run the following command to test your SSH configuration:
     * `ssh git-codecommit.us-east-2.amazonaws.com`
     * You will be asked to confirm the connection because git-codecommit.us-east-2.amazonaws.com is not yet included in your known hosts file. 
     * The AWS CodeCommit server fingerprint is displayed as part of the verification (a9:6d:03:ed:08:42:21:be:06:e1:e0:2a:d1:75:31:5e for MD5 or 
     *                                                                                   3lBlW2g5xn/NA2Ck6dyeJIrQOWvn7n8UEs56fG6ZIzQ for SHA256).
  * Command Line/Gitbash --  Open Gitbash
    * `pwd` -- Check and verify that the current working directory is C:\users\Hvuser
    * `cd workspace` -- change current working to workspace
    * `pwd` -- Check and verify that the current working directory is C:\users\Hvuser/workspace
        
  * Git (setup/checkout/clone/pull/push)
    * `git --version` // should be atleast 2.14+
    * `git config --global -l` // should throw an error
    * `git config --global user.name "<your name>"`
    * `git config --global user.email <your email>`
    * `git config --global -l`

  ** Clone repository at Gitbash **
    * Open https://console.aws.amazon.com/codecommit
    * Use the following URL to access your repository
    *https://us-east-2.console.aws.amazon.com/codesuite/codecommit/repositories/FTPXX/browse?region=us-east-2#
    * Choose Clone URL, and then copy the SSH URL.    
    * Go back to Gitbash and clone the project
    * `pwd` -- Check and verify that the current working directory is C:\users\Hvuser/workspace
    * `git clone ssh://git-codecommit.us-east-2.amazonaws.com/v1/repos/FTPXX `
    * `cd ftpxx`
    * `git status`
  * open Visual Studio (VS) Code
    * Open folder c:\users\Hvuser\workspace\ftpxx
    * Browse the directories to understand the repository structure

# Workshop material - Day #2 - SQLSERVER managment studio /Cli/Browser to interact w/ application

  * Open SQLSERVER managment studio
  * Connect to te server,click on New query ensure your default database is MASTER
  * `CREATE DATABASE FTPXX;` and click the execute button
  * Open database/database.ddl 
  * Copy the entire contents to SQLSERVER querywindow
  * Execute the ddl 
  * Expand the database in the right-hand side schemas section, expand FTPXX and select employee
  * Open database/database.dml 
  * Copy the contents to SQLServer query window
  * Execute the dml 
  * Click the table icon against the EMPLOYEE table in the right-hand side schemas section. You should see the data just inserted.
  * Play around with
    * SELECT with predicates
    * UPDATE statements with predicates
    * DELETE statements with predicates
    * At the end of all the playing around, leave the database with 5 records with ids (1000, 2001)
    
  * Next, we will build and run the .NET application

  * go to gitbash, ensure .net sdk is installed by giving the command : 'dotnet --help'
  * `cd restservice/LeaveManager`
  *  Open the project in Visual Studio
  * update the appsettings connectionstring to your database
  eg:
 "ConnectionStrings": {
    "DefaultConnection": "Server=LAPTOP-S7I6BAFA;Database=FTPXXX;Trusted_Connection=True;MultipleActiveResultSets=True"
  },
  * open nuget package manager
  * 'add-migration init'
  * 'update-database'
  * Open the sql server database to check if the database is created, with the table
  * run the employeeddl available in database folder
   
  * 'dotnet clean'
  * 'dotnet restore'
  * 'dotnet build'
  * 'cd LeaveManager'
  * 'dir' , ensure that the folder has a project folder (eg : LeaveManager.csproj)
  * 'dotnet run'
  * In the browser open 'https://localhost:5001/Swagger/index.html'
  * Running the React app:
   * `cd ../../webui/lm-app/lm-app/ClientApp
   * `npm install`
   * `ng build`
   * 'npm start'

you should be able to see the employees with their ids

# Reading material

## Must-Read

### Multi-Tier
  * https://en.wikipedia.org/wiki/Multitier_architecture#Three-tier_architecture
  
### Unix commandline
  * http://oliverelliott.org/article/computing/ref_unix/
  
### Agile
  * https://www.mountaingoatsoftware.com/agile/scrum
  * https://www.atlassian.com/agile/developer
  * https://www.atlassian.com/agile/scrum
  * https://www.atlassian.com/agile/ceremonies

### Trello
  * https://help.trello.com/ 
  * https://trello.com/b/6otslC4i/template-board-agile-with-trello 
  * https://trello.com/b/ZqN99gGN/agile-sprint-board

### Git
  * https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow (We use this, w/ the rebase variant)

### AWS CodeCommit
  *  https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-ssh-windows.html 

### Database
  * https://www.lucidchart.com/pages/database-diagram/database-design
  * https://www.w3schools.com/sql/sql_intro.asp

## Nice-To-Read
  * https://git-scm.com/docs

## Go-Deep
  * https://git-scm.com/book/en/v2
