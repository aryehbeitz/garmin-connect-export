FROM python:3.12-slim
WORKDIR /data
COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade pip && pip install --no-cache-dir -r requirements.txt
COPY gcexport3.py /usr/local/bin/gcexport3.py
RUN chmod +x /usr/local/bin/gcexport3.py
ENTRYPOINT ["/usr/local/bin/gcexport3.py"]
CMD ["--help"]