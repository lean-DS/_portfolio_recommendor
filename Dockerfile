FROM python:3.11-slim
ENV PIP_NO_CACHE_DIR=1 PYTHONDONTWRITEBYTECODE=1 PYTHONUNBUFFERED=1 PORT=8080
WORKDIR /app
COPY requirements.txt ./
RUN pip install -r requirements.txt
COPY app.py ./
# If your app needs bundled data, add it to the repo and uncomment:
# COPY data ./data
CMD ["streamlit","run","app.py","--server.port=8080","--server.address=0.0.0.0","--browser.gatherUsageStats=false"]
