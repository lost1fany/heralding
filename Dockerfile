FROM python:3.11-slim


RUN apt-get update && apt-get install -y libpq-dev gcc

COPY .  /app
WORKDIR /app
RUN pip install --no-cache-dir --user -r requirements.txt
RUN python setup.py install --user

ENV PATH=/root/.local/bin:$PATH

CMD ["heralding" ]
EXPOSE 21 22 23 25 80 110 143 443 465 993 995 1080 2222 3306 3389 5432 5900
