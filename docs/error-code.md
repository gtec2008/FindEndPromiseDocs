# Error Code และวิธีแก้

หน้านี้รวบรวมข้อความผิดพลาดที่พบบ่อยในระบบ Auto Update

## Windows Error 32

### ความหมาย

```text
ไฟล์ยังถูกใช้งานอยู่
```

มักเกิดกับไฟล์

```text
FindEndPromise.exe
```

### สาเหตุ

- โปรแกรม FindEndPromise ยังปิดไม่สนิท
- มี Process ค้างอยู่ใน Task Manager
- ผู้ใช้เปิดโปรแกรมซ้ำระหว่าง Update

### วิธีแก้

1. ปิด FindEndPromise ทุกหน้าต่าง
2. รอประมาณ 10 วินาที
3. ลอง Update ใหม่
4. หากยังไม่ได้ ให้ Restart เครื่อง

## Windows Error 5

### ความหมาย

```text
Access Denied
```

### สาเหตุ

- ไม่มีสิทธิ์เขียนไฟล์ในโฟลเดอร์โปรแกรม
- Windows Defender หรือ Antivirus บล็อก
- โปรแกรมอยู่ในโฟลเดอร์ที่ต้องใช้สิทธิ์ Administrator

### วิธีแก้

1. Run as Administrator
2. ตรวจสอบ Permission ของ Folder
3. ตรวจสอบ Controlled Folder Access ของ Windows Defender
4. แจ้งฝ่าย IT

## Windows Error 2

### ความหมาย

```text
ไม่พบไฟล์ต้นทาง
```

### สาเหตุ

- Remote Folder ไม่มีไฟล์ Update
- ไฟล์ถูกลบหรือยัง Upload ไม่ครบ

### วิธีแก้

ตรวจสอบโฟลเดอร์ Version เช่น

```text
E:\vb6\dataoffice_test\144\FindEndPromise.exe
```

## Windows Error 3

### ความหมาย

```text
ไม่พบ Path
```

### สาเหตุ

- Path Auto Update ผิด
- Network Share ไม่พร้อมใช้งาน
- Drive หรือ Folder ถูกเปลี่ยนชื่อ

### วิธีแก้

ตรวจสอบค่า `path_autoupdate` ใน `FindEndPromise.mdb`

## ไม่พบไฟล์สำหรับ Update

### สาเหตุ

- โฟลเดอร์ Version ว่าง
- ไม่มีสิทธิ์อ่านไฟล์
- Recursive Copy อ่านโฟลเดอร์ไม่ได้

### วิธีแก้

ตรวจสอบว่าในโฟลเดอร์ Version มีไฟล์ เช่น

```text
FindEndPromise.exe
release.txt
```

## ภาษาไทยใน release.txt อ่านไม่ออก

### สาเหตุ

ไฟล์ `release.txt` ไม่ได้บันทึกเป็น UTF-8 หรือโปรแกรมอ่านด้วย Encoding ผิด

### วิธีแก้

บันทึกไฟล์ `release.txt` เป็น UTF-8

ใน VS Code:

```text
Save with Encoding → UTF-8
```

## Update แล้วโปรแกรมไม่เปิดใหม่

### สาเหตุ

- Copy โปรแกรมใหม่ไม่สำเร็จ
- ไฟล์ใหม่ไม่อยู่ใน Target Folder
- Shell เปิดโปรแกรมไม่ได้เพราะ Path ผิด

### วิธีแก้

เปิดโฟลเดอร์โปรแกรม แล้วตรวจสอบว่า `FindEndPromise.exe` มีอยู่จริงหรือไม่ หากไม่มี ให้เปิดไฟล์สำรอง `FindEndPromise-vXXX.exe`
