

# Dockerize your Python Application

## How
1. build an image from this Dockerfile

    `docker build -t python-barcode .`
2. run it as a container.

    `docker run python-barcode`

    or  run it and remove the container

    `docker run --rm python-barcode`

3. run it as a container with other script

    `docker run -it --rm python-barcode python ./other_script.py`

4. run it as a container with third script

    `docker run -it --rm python-barcode python ./third_script.py`

5. run it as a container with third script. We mount host container /home to host ~/test2, inside file, we output csv to /home
    `mkdir ~/test2` if you don't have this dir
    `ls ~/test2`
    `docker run -it -v ~/test2:/home --rm python-barcode python ./output_file_to_mounted_host.py`
    `ls ~/test2`

## Docker command used
docker build --help

  -t, --tag list                Name and optionally a tag in the 'name:tag' format

docker run --help

-i, --interactive                    Keep STDIN open even if not attached
-t, --tty                            Allocate a pseudo-TTY

Run docker with command
`docker run -it <image_name> touch /db/data/file`

Go inside docker
`docker exec -it <mycontainer> bash`


## Reference
- [Dockerize your Python Application | Runnable Docker Guides](https://runnable.com/docker/python/dockerize-your-python-application)
- [How to automatically delete a Docker container after running it | Power CMS](https://www.powercms.in/blog/how-automatically-delete-docker-container-after-running-it)

