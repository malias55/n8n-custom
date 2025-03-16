FROM n8nio/n8n:latest
USER root
RUN npm install -g bcrypt body-parser fcm-push pdf-parse pdf-lib pdfkit axios lodash moment sharp cheerio
RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip3 install PyPDF2 pdfminer.six reportlab pandas numpy camelot-py[cv] pdfplumber
USER node
ENV GENERIC_TIMEZONE=Europe/Berlin \
    N8N_UPDATE_CHECK_INTERVAL=604800000 \
    NODE_ENV=production
