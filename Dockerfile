FROM python:3.7
EXPOSE 8501
WORKDIR /app
COPY requirements.txt ./requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
CMD streamlit run BerlinDashboard.py --server.port 8501 --server.enableCORS false BerlinDashboard.py