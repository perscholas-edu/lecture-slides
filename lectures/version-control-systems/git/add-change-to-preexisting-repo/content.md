# Adding Changes to a Preexisting Repo





-
-
### Prequisites
* `git` or `GitBash` installed on your machine





-
-
### Part 1 - Cloning a Preexisting Project
* From a browser, navigate to the URL of the GitHub repository you would like to clone.
* Copy the URL of the repository your clipoboard.
* From a terminal, do the following:
   * Create a `dev` directory in your home directory.
      * `mkdir ~/dev`
   * Change directories to `~/dev`
      * `cd ~/dev`
   * Clone project into `~/dev` directory and _alias_ project directory as `my-project`
      * `git clone {repository_url} my-project`



-
### Part 2 - Adding Changes to Preexisting Git Repository
1. navigate to the root directory of the project on your local machine
2. add changes
	* `git add .`
3. commit change
	* `git commit -m 'update message'`
4. push changes to web
	* `git push -u origin master`
5. Refresh the webpage to ensure your changes are visible.






-
### Part 2 - Upload site to S3 Bucket
* From the `www.example.com` bucket select **Permissions** and select **Bucket Policy**
   * **Replacing version date with the current date and `example.com` with the bucket name** copy and paste the following `.json` bucket policy.


-

```json
{
   "Version":"2012-10-17",
   "Statement":[
      {
         "Sid":"PublicReadGetObject",
         "Effect":"Allow",
         "Principal":"*",
         "Action":[
            "s3:GetObject"
         ],
         "Resource":[
            "arn:aws:s3:::example.com/*"
         ]
      }
   ]
}
```




-
* Press Save and BOOM now have public read access so people can view your bucket



-
### Part 3 - Static Website Hosting
* Next after applying policy
   1. Go to **Properties**
   2. Select **Static Website Hosting**
   3. Select first option *Use this bucket to host a website* 
   4. In the **Index Document** box, type the name that you gave your index page then click save.
   5. Next, go to your other bucket `example.com`, select **Properties**, select **Static Website Hosting**, and select the *Redirect requests* option


-
### Part 4 - Ensuring the application works
* To ensure that the website has been hosted, navigate to ...