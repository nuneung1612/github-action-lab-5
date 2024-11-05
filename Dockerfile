# ใช้ Python base image
FROM python:3.10-slim

# ตั้งค่า working directory
WORKDIR /app

# คัดลอก requirements.txt และติดตั้ง dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# คัดลอกโค้ดโปรเจกต์ทั้งหมดไปที่ /app
COPY . .

# เปิดพอร์ต 5000
EXPOSE 5000

# คำสั่งสำหรับรันเว็บเซิร์ฟเวอร์
CMD ["python", "app.py"]
