# Sử dụng image chính thức của OpenJDK
FROM openjdk:21-jdk-slim

# Đặt thư mục làm việc trong container
WORKDIR /app

# Copy file jar đã build vào container
COPY target/springdocker-0.0.1-SNAPSHOT.jar app.jar

# Expose cổng ứng dụng (8080 là mặc định của Spring Boot)
EXPOSE 8080

# Lệnh chạy ứng dụng
ENTRYPOINT ["java", "-jar", "app.jar"]
