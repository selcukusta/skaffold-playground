FROM frolvlad/alpine-python3


# We copy just the requirements.txt first to leverage Docker cache
COPY requirements.txt requirements.txt
COPY . .
RUN pip install -r requirements.txt
ENV FLASK_APP=app.py
ENTRYPOINT [ "flask", "run" , "--host", "0.0.0.0", "--port", "1905"]