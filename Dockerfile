FROM python:3.7
EXPOSE 8501
RUN pip3 install streamlit
RUN pip3 install nltk
RUN python3 -m nltk.downloader punkt
COPY . .
CMD streamlit run app.py
