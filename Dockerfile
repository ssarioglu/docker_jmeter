FROM java:8
MAINTAINER Serdar Sarioglu, Serdar.Sarioglu@mysystem.org

# Download and Install Jmeter --> Check for latests version!
RUN wget ftp://apache.mirrors.tds.net/pub/apache.org//jmeter/binaries/apache-jmeter-5.0.tgz
RUN tar -xvzf apache-jmeter-5.0.tgz
RUN rm apache-jmeter-5.0.tgz
RUN mv apache-jmeter-5.0 /jmeter
ENV JMETER_HOME /jmeter


#Copy test.jmx
COPY test.jmx /test.jmx
RUN chmod -R 777 /test.jmx


# Add Jmeter to the Path
ENV PATH $JMETER_HOME/bin:$PATH
