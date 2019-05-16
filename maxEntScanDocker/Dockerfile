FROM perl:5.20
RUN mkdir app
COPY maxEnt app/
WORKDIR app
RUN curl -L https://cpanmin.us | perl - -M https://cpan.metacpan.org -n Mojolicious
CMD ["hypnotoad", "-f", "./test.pl"]
