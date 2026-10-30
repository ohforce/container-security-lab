# 의도적으로 오래된 취약한 베이스 이미지 사용
FROM python:3.8-slim-buster

WORKDIR /app

# 필요한 패키지 파일 복사 및 설치
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 소스 코드 복사
COPY . .

EXPOSE 8080

CMD ["python", "main.py"]