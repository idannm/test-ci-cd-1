FROM jenkins/jenkins:lts
USER root
# התקנת Docker CLI כדי שג'נקינס יוכל להפעיל קונטיינרים אחרים
RUN apt-get update && apt-get install -y docker.io
# הוספת משתמש ג'נקינס לקבוצת דוקר
RUN usermod -aG docker jenkins
USER jenkins
