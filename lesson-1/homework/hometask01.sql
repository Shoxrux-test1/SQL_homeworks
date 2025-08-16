 --Easy
 --1
 Data (Ma’lumot) – bu faktlar, qiymatlar yoki yozuvlar majmuasi.
  Database (Ma’lumotlar bazasi) – ma’lumotlarni tizimli ravishda saqlash va boshqarish uchun mo‘ljallangan tuzilma.
  Relational database (Munosabatli ma’lumotlar bazasi) – ma’lumotlar jadval ko‘rinishida saqlanadigan va ular o‘zaro kalitlar orqali bog‘langan ma’lumotlar bazasi.
  Table (Jadval) – ma’lumotlarni satr va ustunlar ko‘rinishida saqlovchi obyekt.
  --2
 Katta hajmdagi ma’lumotlarni boshqarish imkoniyati.
 Ma’lumotlarning yaxlitligi va xavfsizligini ta’minlaydi.
 Transaksiyalarni qo‘llab-quvvatlaydi.
 Tarmoq orqali bir nechta foydalanuvchilar bilan ishlash imkoniyati.
 Kuchli vositalar (SSMS) orqali boshqarish qulayligi.
  --3
 Windows Authentication – tizim foydalanuvchi loginidan foydalanadi.
 SQL Server Authentication – maxsus foydalanuvchi nomi va parol yordamida ulanadi.
 --Medium
 --4
 CREATE DATABASE SchoolDB
 select * from Students
 USE SchoolDB
 --5
 CREATE TABLE Students(StudentID INT PRIMARY KEY, Name VARCHAR(50), Age INT)
 --6
 SQL Server – ma’lumotlarni saqlash va boshqarish uchun mo‘ljallangan tizim (DBMS)
 SSMS (SQL Server Management Studio) – SQL Server bilan ishlash uchun grafik interfeys (dastur)
 SQL (Structured Query Language) – ma’lumotlar bilan ishlash uchun yoziladigan standart so‘rov tili.
 --Hard
 --7
 INSERT INTO Students (StudentID, Name, Age) VALUES (1, 'Ali', 20)
 CREATE TABLE Teachers (TeacherID INT, Name VARCHAR(50))
 select * from Teachers
 GRANT SELECT ON Students TO user1
 BEGIN TRANSACTION
 DELETE FROM Students WHERE StudentID = 1
 ROLLBACK
 --8
 select * from Students
 INSERT INTO Students (StudentID, Name, Age) VALUES (1, 'Ali', 20)
 INSERT INTO Students (StudentID, Name, Age) VALUES (2, 'Dilnoza', 22)
 INSERT INTO Students (StudentID, Name, Age) VALUES (3, 'Javlon', 19)
 --9
 .bak faylni yuklab olish  AdventureWorksDW2022.bak
 QL Server’ga kirib, SSMS’da Restore Database tanlash
 Device → faylni tanlash
 Fayl joylashuvini ko‘rsatish (.bak fayl yo‘li).
 Database nomini belgilash (masalan, AdventureWorksDW2022)
 OK tugmasini bosish
 SQL orqali tiklash
 RESTORE DATABASE AdventureWorksDW2022
 FROM DISK = 'C:\Backups\AdventureWorksDW2022.bak'
 WITH REPLACE 
