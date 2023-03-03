FROM python:3
ADD requirements.txt /
CMD ["python3", "-m", "ensurepip"]

RUN pip install -r requirements.txt
RUN echo 'Requirements are installed'
ADD main.py /
CMD [ "python", "./main.py" ]