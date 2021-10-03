# Introduction

Docker environment and scripts which enable easy TFTP access suitable for flashing certain development boards. 


# Usage 

To run TFTP server on your machine, you'll need to build an image first:

    ./buildImage.sh 

and then you can run TFTP server:

    ./runServer.sh -d /path/to/your/images -p port