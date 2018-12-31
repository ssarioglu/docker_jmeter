FROM java:8
 
RUN wget ftp://apache.mirrors.tds.net/pub/apache.org//jmeter/binaries/apache-jmeter-5.0.tgz
RUN tar -xvzf apache-jmeter-5.0.tgz
RUN rm apache-jmeter-5.0.tgz
RUN mv apache-jmeter-5.0 /jmeter
ENV JMETER_HOME /jmeter


# Add Jmeter to the Path
ENV PATH $JMETER_HOME/bin:$PATH
