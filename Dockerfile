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
# COPY models/avg_time_in_occupancy_matrix.csv /park-smart/models/avg_time_in_occupancy_matrix.csv
# COPY models/coordinates_mapping_compressed.csv /park-smart/models/coordinates_mapping_compressed.csv
# COPY models/inventory_df.csv /park-smart/models/inventory_df.csv
# COPY models/mapping_dictionary.pkl /park-smart/models/mapping_dictionary.pkl
# COPY models/xgb_model_v1.pkl /park-smart/models/xgb_model_v1.pkl


EXPOSE 8501

HEALTHCHECK CMD curl --fail http://localhost:8501/_stcore/health

ENTRYPOINT ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]