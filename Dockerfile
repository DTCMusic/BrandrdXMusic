FROM nikolaik/python-nodejs:python3.10-nodejs19-bullseye

RUN apt-get update && apt-get install -y --no-install-recommends ffmpeg && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /app/
COPY . /app/

RUN python3 -m pip install --upgrade pip setuptools && \
    pip3 install --no-cache-dir --upgrade --requirement requirements.txt

CMD ["python3", "-m", "BrandrdXMusic"]
