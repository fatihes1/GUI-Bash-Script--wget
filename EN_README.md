# GUI Bash Script --wget

Bash script programming - GUI for wget command
## What is the GUI?

GUI (Graphical User Interface) are designs developed to help electronic devices use icons, icons and other visual graphics. In old generation computers and electronic devices using command-based operating system before GUI, command line was used to perform any operation. Users were performing every operation on the computer using the keyboard and commands.

Later, in 1981, a group of Alan Kay, Douglas Engelbart and a group of researchers developed the first GUI in Xerox PARC so that users could use personal computers more comfortably.

## What is the wget Command??


Wget is the non-interactive network downloader which is used to download files from the server even when the user has not logged on to the system and it can work in the background without hindering the current process.  

-   GNU wget is a free utility for non-interactive download of files from the Web. It supports HTTP, HTTPS, and FTP protocols, as well as retrieval through HTTP proxies.  
    
-   wget is non-interactive, meaning that it can work in the background, while the user is not logged on. This allows you to start a retrieval and disconnect from the system, letting wget finish the work. By contrast, most of the Web browsers require constant user’s presence, which can be a great hindrance when transferring a lot of data.  
    
-   wget can follow links in HTML and XHTML pages and create local versions of remote web sites, fully recreating the directory structure of the original site. This is sometimes referred to as recursive downloading. While doing that, wget respects the Robot Exclusion Standard (/robots.txt). wget can be instructed to convert the links in downloaded HTML files to the local files for offline viewing.  
    
-   wget has been designed for robustness over slow or unstable network connections; if a download fails due to a network problem, it will keep retrying until the whole file has been retrieved. If the server supports resuming, it will instruct the server to continue the download from where it left off.
- The simplest syntax is as follows: `wget [OPTIONS] [URL]`

## Requirements
You must have `zenity` and `wget` installed on your local machine. You can do these installations using the command lines mentioned below. Don't forget to update your apt-get package lists with the `sudo apt-get update` command before running the following command lines. Doing so will allow you to download the latest version of `wget`.

- `sudo apt-get install zenity`
- `sudo apt-get install wget`

You can make sure that the downloads are successful or not by typing the following commands in the terminal.

- `wget --version`
- `zenity --version`

## Installation & Usage

- In the terminal you opened in a directory, download a clone of the repo to your local machine with the following command line: 
-- `https://github.com/fatihes1/GUI-Bash-Script--wget.git`

- After the repo is downloaded to your local machine, enter the repo directory with the `cd GUI-Bash-Script--wget` command.
- The program is run with the `./script.sh` or `bash script.sh` command.
- After this process, the required operations (file URL information, etc.) are given as input to the program in the user interface of the program and the program runs the necessary functions.

## Program Images
- The options available to the user are as follows:

![01](https://user-images.githubusercontent.com/54971670/149222447-77844b5b-14b4-4580-aa13-de741ca3f0d0.PNG)
 
- The window where inputs such as file URL information from the user are received:

![02](https://user-images.githubusercontent.com/54971670/149222454-33a7a839-ce95-4f28-bc60-e4fd886967e8.PNG)

- The window that appears in case of a problem with the download:

![03](https://user-images.githubusercontent.com/54971670/149222455-373778b5-664c-4278-97e2-dd1df306bef5.PNG)

- The following window will appear when the download is successfully completed:

![04](https://user-images.githubusercontent.com/54971670/149222456-e7b8c56b-7d37-4591-b359-a01c26bb3347.PNG)

- During the download of large files, the `progress bar` window appears until the download is complete:

![05](https://user-images.githubusercontent.com/54971670/149222458-4216c467-4eeb-4dbb-9867-1af4fca8952c.PNG)

- The window that appears when the user wants to know the `wget` version:

![06](https://user-images.githubusercontent.com/54971670/149222459-e5f8c75c-464d-486d-9e36-137424a42c03.PNG)

- The window that appears when the user wants to exit the program:

![07](https://user-images.githubusercontent.com/54971670/149222461-cce8df13-92ba-4d9c-806b-ba56ecb8a77e.PNG)
