# Backup และ Restore

## แนวคิด

ก่อน Update ระบบจะไม่ Copy Backup ไปไว้ในโฟลเดอร์แยก แต่จะ Rename โปรแกรมปัจจุบันให้เป็นไฟล์สำรองตาม Revision เดิม

ตัวอย่าง

```text
FindEndPromise.exe        rev140
```

เมื่อ Update เป็น rev141 ระบบจะ Rename เป็น

```text
FindEndPromise-v140.exe
```

จากนั้น Copy โปรแกรมใหม่เข้ามาเป็น

```text
FindEndPromise.exe        rev141
```

## ตัวอย่างหลัง Update สำเร็จ

```text
FindEndPromise.exe        rev141
FindEndPromise-v140.exe   สำรองล่าสุด
FindEndPromise-v139.exe   สำรองก่อนหน้า
```

## เก็บ Backup ไม่เกิน 2 Version

ระบบจะเก็บไฟล์สำรองไว้ไม่เกิน 2 Version ล่าสุด เพื่อลดปัญหาไฟล์ขยะในเครื่อง Client

ตัวอย่างเมื่อ Update ต่อเป็น rev142

```text
FindEndPromise.exe        rev142
FindEndPromise-v141.exe
FindEndPromise-v140.exe
```

ไฟล์เก่ากว่า เช่น `FindEndPromise-v139.exe` จะถูกลบอัตโนมัติ

## หาก Update ล้มเหลว

ระบบจะแสดงข้อความประมาณนี้

```text
Update ล้มเหลว
ให้ใช้ไฟล์สำรองนี้เปิดโปรแกรมแทน:
D:\gsc\FindEndPromiseGSC\FindEndPromise-v142.exe
```

ให้ผู้ใช้เปิดไฟล์สำรองตามที่แจ้งได้ทันที

## ข้อควรระวัง

- ไฟล์สำรองเป็นโปรแกรมเวอร์ชันก่อน Update
- หากเปิดไฟล์สำรองแล้วใช้งานได้ ให้แจ้งฝ่าย IT เพื่อตรวจสอบสาเหตุ Update ล้มเหลว
- ห้ามลบไฟล์ `FindEndPromise-vXXX.exe` เอง หากยังไม่เข้าใจระบบ

## สิ่งที่ระบบยังไม่ทำใน Version นี้

- ยังไม่ Restore กลับอัตโนมัติ
- ยังไม่ Verify ว่าไฟล์ใหม่สมบูรณ์ด้วย Hash
- ยังไม่บันทึก Log แบบละเอียดทุกขั้นตอน
