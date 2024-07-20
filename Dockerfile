# FROM python:3.12.2-slim
FROM python:3.11-slim
COPY requirements.txt .
RUN apt-get update && apt-get install -y \
  mlocate curl \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && pip install -r requirements.txt

WORKDIR /app
CMD ["/bin/bash"]