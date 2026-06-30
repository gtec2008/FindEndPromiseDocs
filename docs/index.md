# FindEndPromise Help Center

ศูนย์รวมคู่มือการใช้งานโปรแกรม **FindEndPromise** โดยเริ่มจากฟีเจอร์ **Auto Update**

## เมนูหลัก

| หน้า | รายละเอียด |
|---|---|
| เริ่มต้นใช้งาน | วิธีใช้งานสำหรับพนักงาน |
| Auto Update | หลักการทำงานของระบบอัปเดต |
| Backup และ Restore | วิธีใช้ไฟล์สำรองเมื่ออัปเดตล้มเหลว |
| Error Code | ความหมายของ Error และวิธีแก้ |
| FAQ | คำถามที่พบบ่อย |
| Changelog | ประวัติการเปลี่ยนแปลง |

## ฟีเจอร์ Auto Update คืออะไร

Auto Update ใช้สำหรับอัปเดต `FindEndPromise.exe` จากโฟลเดอร์กลางบน Server หรือ Network Share ไปยังเครื่อง Client โดยอัตโนมัติ

ระบบจะตรวจสอบ Revision ปัจจุบันของโปรแกรม แล้วเปรียบเทียบกับโฟลเดอร์ Version ล่าสุด เช่น `144` หากพบเวอร์ชันใหม่ จะแสดงปุ่ม **Update Now** ที่หน้า Login

## สิ่งที่ผู้ใช้งานควรรู้

!!! warning "ระหว่าง Update"
    ห้ามปิดเครื่อง, Restart Windows, ดึงสาย LAN หรือเปิดโปรแกรม FindEndPromise ซ้ำ จนกว่าการ Update จะเสร็จ

!!! info "ถ้า Update ล้มเหลว"
    ให้เปิดไฟล์สำรอง เช่น `FindEndPromise-v142.exe` ที่อยู่ในโฟลเดอร์เดียวกับโปรแกรมหลัก

## ภาพหน้าจอ

ให้วางรูปจริงไว้ใน `docs/images/` เช่น

```text
images/login.png
images/update.png
images/progress.png
```

แล้วอ้างอิงในเอกสารด้วย Markdown เช่น

```markdown
![Login](images/login.png)
```
