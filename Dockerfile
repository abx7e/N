FROM abx7e/S:slim-buster

#clonning repo 
RUN git clone https://github.com/abx7e/S.git /root/BlThon
#working directory 
WORKDIR /root/BlThon

# Install requirements
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/BlThon/bin:$PATH"

CMD ["python3","-m","BlThon"]
