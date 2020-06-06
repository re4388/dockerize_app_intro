# FROM tells Docker which image you base your image on (in the example, Python 3).
FROM python:3
# add the script to the Dockerfile
ADD my_script.py /
# Our script depends on the Python pyStrich library (pyStrich generates 1D and 2D barcodes),
# so we need to make sure we install that before we run my_script.py
RUN pip install pystrich
# Add this line to your Dockerfile to execute the script:
CMD [ "python", "./my_script.py" ]