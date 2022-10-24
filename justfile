# build the project
build:
  mvn -DskipTests clean package

# start reactive service responder
start_responder:
  java -jar rsocket-responder/target/rsocket-responder-1.0.0-SNAPSHOT.jar

# start reactive service requester
start_requester:
  java -jar rsocket-requester/target/rsocket-requester-1.0.0-SNAPSHOT.jar

# requester http testing
testing:
  curl http://localhost:8181/user/2
