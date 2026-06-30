# FindEndPromise Help Center

เอกสารช่วยเหลือสำหรับโปรแกรม **FindEndPromise** และฟีเจอร์ **Auto Update**

Repository นี้ใช้สำหรับเผยแพร่คู่มือผ่าน GitHub Pages ด้วย MkDocs + Material Theme

## เนื้อหาหลัก

- เริ่มต้นใช้งาน
- Auto Update
- Backup และ Version History
- Error Code และวิธีแก้ไข
- FAQ
- Changelog

## วิธีใช้งานแบบเร็ว

1. อัปโหลดไฟล์ทั้งหมดในโฟลเดอร์นี้ขึ้น GitHub repository
2. เปิด GitHub Pages หรือใช้ GitHub Actions ที่แนบมา
3. เปิด URL GitHub Pages จากปุ่ม Help ในโปรแกรม FindEndPromise

## โครงสร้าง

```text
autoupdate-help/
├── mkdocs.yml
├── README.md
├── docs/
│   ├── index.md
│   ├── getting-started.md
│   ├── autoupdate.md
│   ├── backup-and-restore.md
│   ├── error-code.md
│   ├── faq.md
│   ├── changelog.md
│   └── images/
└── .github/
    └── workflows/
        └── deploy.yml
```
