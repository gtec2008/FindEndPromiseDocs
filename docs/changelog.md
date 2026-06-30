# Changelog

## Version 1.0 - Auto Update V1

### Added

- ตรวจสอบ Version ล่าสุดจาก Remote Folder
- อ่านค่า `path_autoupdate` จาก `FindEndPromise.mdb`
- แสดงข้อความพบ Version ใหม่ที่หน้า Login
- แสดงปุ่ม `Update Now`
- อ่าน `release.txt` รองรับภาษาไทย UTF-8
- เรียก `FindEndPromiseUpdater.exe` ผ่าน Shell พร้อม Parameter
- เพิ่ม Progress Bar ใน Updater
- ใช้ `CopyFileEx` เพื่อแสดง Progress ตาม Byte จริง
- รองรับการ Copy โฟลเดอร์ย่อยแบบ Recursive
- Rename โปรแกรมเดิมเป็น `FindEndPromise-vXXX.exe`
- เก็บไฟล์สำรองไม่เกิน 2 Version
- เพิ่มข้อความ Error ที่เป็นมิตรกับผู้ใช้
- เพิ่มปุ่ม `What's New?` สำหรับเปิด `release.txt` ในเครื่อง Client

### Changed

- ย้าย path Auto Update จาก Hard Code ไปเก็บในฐานข้อมูล Access
- ปรับ Layout ของหน้า Login ให้ Compact เมื่อไม่มี Version ใหม่
- ปรับ `fraUpdateInfo` ให้ขยาย/ย่อตามสถานะ Update

### Fixed

- แก้ปัญหา Path จาก `App.Path` เมื่อ Compile แล้วเกิด Backslash ผิด
- แก้ปัญหา Shell parameter โดยใช้ตัวคั่น `@@@`
- แก้ปัญหา `Dir$()` recursive แล้ว state หาย โดยเปลี่ยนไปใช้ `FileSystemObject`
- แก้ปัญหา `release.txt` ภาษาไทยอ่านไม่ออก โดยอ่านด้วย UTF-8

## Planned

- UpdateLog.txt
- Rollback อัตโนมัติ
- Verify File Hash
- Digital Signature
- Admin Help Page
