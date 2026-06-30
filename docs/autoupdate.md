# Auto Update

## วัตถุประสงค์

ฟีเจอร์ Auto Update ถูกสร้างขึ้นเพื่อลดการ Copy โปรแกรมด้วยมือ และช่วยให้เครื่อง Client ได้ใช้งาน FindEndPromise เวอร์ชันล่าสุดอย่างรวดเร็ว

## หลักการทำงาน

```text
เปิด FindEndPromise
↓
หน้า Login โหลด path_autoupdate จาก FindEndPromise.mdb
↓
อ่าน App.Revision ของโปรแกรมปัจจุบัน
↓
ตรวจสอบโฟลเดอร์ Version ล่าสุดบน Remote Folder
↓
หาก Latest > Current แสดง Update Now
↓
ผู้ใช้กด Update
↓
เรียก FindEndPromiseUpdater.exe
↓
Rename โปรแกรมเดิมเป็นไฟล์สำรอง
↓
Copy โปรแกรมใหม่และไฟล์ทั้งหมดจาก Remote Folder
↓
เปิด FindEndPromise.exe ใหม่
```

## ที่เก็บค่า Remote Folder

Path ของ Auto Update เก็บในฐานข้อมูล Access

```text
Database : FindEndPromise.mdb
Table    : tblkeepvalue
Field    : path_autoupdate
ID       : 1
```

ตัวอย่างค่า

```text
E:\vb6\dataoffice_test\
```

โปรแกรมอ่านผ่าน Function:

```vb
GetKeepValue(1, "path_autoupdate")
```

## โครงสร้าง Remote Folder

ตัวอย่าง

```text
E:\vb6\dataoffice_test\
├── 141\
│   ├── FindEndPromise.exe
│   └── release.txt
├── 142\
│   ├── FindEndPromise.exe
│   └── release.txt
└── 144\
    ├── FindEndPromise.exe
    ├── release.txt
    └── imagetest\
        └── sample.jpg
```

ระบบจะหาโฟลเดอร์ตัวเลขที่มีค่ามากที่สุด เช่น `144`

## Release Note

แต่ละ Version ควรมีไฟล์

```text
release.txt
```

ตัวอย่าง

```text
Version 144

• แก้ไข Login
• เพิ่ม Auto Update
• รองรับการ Copy โฟลเดอร์ย่อย
```

ไฟล์นี้ควรบันทึกเป็น **UTF-8** เพื่อให้ภาษาไทยอ่านถูกต้อง

## การ Copy ไฟล์

Updater ใช้ Windows API:

```text
CopyFileEx
```

ข้อดี:

- แสดง Progress เป็นเปอร์เซ็นต์ตาม Byte จริง
- รองรับไฟล์ขนาดใหญ่
- ทำงานได้เหมาะกับระบบ Windows เดิม

## รองรับโฟลเดอร์ย่อย

หากใน Remote Version Folder มีทั้งไฟล์และโฟลเดอร์ ระบบจะ Copy ทั้งหมดแบบ Recursive

ตัวอย่าง Remote:

```text
144\
├── FindEndPromise.exe
├── release.txt
└── imagetest\
    └── logo.png
```

หลัง Update ที่เครื่อง Client จะได้:

```text
FindEndPromise.exe
release.txt
imagetest\
└── logo.png
```

## ข้อจำกัด

- ต้องเชื่อมต่อ Remote Folder ได้
- ต้องมีสิทธิ์เขียนไฟล์ในโฟลเดอร์โปรแกรม
- ถ้าไฟล์ถูกใช้งานอยู่ จะ Copy ทับไม่ได้
- ยังไม่มีการ Verify Hash หรือ Digital Signature
- ยังไม่มี Rollback อัตโนมัติ
