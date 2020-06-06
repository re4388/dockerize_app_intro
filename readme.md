

# Dockerize your Python Application

## How
1. build an image from this Dockerfile

    `docker build -t python-barcode .`
2. run this image as a container.

    `docker run python-barcode`

    or  run and remove the container when execution finish

    `docker run --rm python-barcode`

3. run it with another script

    `docker run -it --rm python-barcode python ./other_script.py`

4. run it with another long running script

    `docker run -it --rm python-barcode python ./third_script.py`

5. run it with a script which will output a csv file to /home. We also mount host container `/home` to host `~/test2`, so we can keep the generated csv file in host.

    `mkdir ~/test2` make host mounting point, if you don't have this dir

    `ls ~/test2` see what we have before run the container

    `docker run -it -v ~/test2:/home --rm python-barcode python ./output_file_to_mounted_host.py`

    `ls ~/test2` see what we got after container ran

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

