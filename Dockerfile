FROM sonarqube:9.7.1-community
ENV SQ_DATA_DIR=/data/data
ENV SQ_EXTENSIONS_DIR=/data/extensions
ENV SQ_LOGS_DIR=/data/logs
ENV SQ_TEMP_DIR=/data/tmp
COPY --chown=sonarqube:sonarqube new_run.sh /opt/sonarqube/bin/new_run.sh
ENTRYPOINT ["/opt/sonarqube/bin/new_run.sh"]
CMD ["/opt/sonarqube/bin/sonar.sh"]
