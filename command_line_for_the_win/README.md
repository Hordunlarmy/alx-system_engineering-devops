## [CMDCHALLENGE](https://cmdchallenge.com/)

### Step Followed Using SFTP To Send File To Remote Client
* Took and save screenshot of completed tasks on my local computer, then i
* Established a connection to the sandbox environment with `ssh username@hostname`
* Created the directory `command_line_for_the_win` in the `alx-system_engineering-devops`
* Exited an re-established a connection to the sandbox environment with `sftp username@hostname`
Follow tutorial [HERE](https://cmdchallenge.com/) if you want to access remote client without using a password
* Navigated to the right directory and then used put `filename` to upload the screenshots
**NOTE:** You need to be in the directory your files are in your local computer before you establishe a connection
with sftp, if not then you can navigate your local directory with `lcd`even from the remote client
