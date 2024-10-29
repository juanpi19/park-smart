FROM python:3.9-slim

WORKDIR /park-smart

RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    software-properties-common \
    git \
    && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/juanpi19/park-smart.git .

RUN pip install -r requirements.txt
COPY .streamlit/secrets.toml /park-smart/.streamlit/secrets.toml

EXPOSE 8501

HEALTHCHECK CMD curl --fail http://localhost:8501/_stcore/health

ENTRYPOINT ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]