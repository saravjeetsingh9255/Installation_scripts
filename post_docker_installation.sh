#!/bin/bash


# 1.Create the docker group.

sudo groupadd docker > /dev/null 2>&1


# 2.Add your user to the docker group.

sudo usermod -aG docker $USER > /dev/null 2>&1


# 3.Log out and log back in so that your group membership is re-evaluated.

newgrp docker > /dev/null 2>&1


# 4.Verify that you can run docker commands without sudo.

docker run hello-world


echo "All set now you can now start using docker"
