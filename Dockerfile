FROM python:3.12-bullseye

WORKDIR /myapp
COPY . /myapp/

RUN pip install --no-cache-dir -r requirements.txt
ENTRYPOINT ["python"]  
# always runs first and is fixed

CMD ["main.py"] 
# command that runs after entrypoint and is optional/variable, RUN adds data to disk and saves while build