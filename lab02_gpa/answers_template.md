# Lab L2 · answers.md (TH)

ชื่อ-สกุล: 
รหัสนักศึกษา: 
ลิงก์ repo: 

## Q1 · ลำดับเงื่อนไข
ทำไม if ใน `gradeFor()` ต้องเรียงจาก A ลงมา? ถ้าย้าย `if (score >= 50) return 'D';` ขึ้นเป็นบรรทัดแรก `gradeFor(85)` จะได้อะไร? และทำไมคะแนน 101 ต้อง throw แทนการคืน F?


## Q2 · null safety
ทำไม `nickname` เป็น `String?` แต่ `name` เป็น `String`? `nickname ?? name` ให้ค่าอะไรกับนักศึกษาแต่ละคนในแอปของคุณ?


## Q3 · Layout
ตอนลบ `Expanded` รอบชื่อ คุณเห็นอะไร (คัดลอกข้อความ error) และเพราะอะไร? `LayoutBuilder` ใช้ค่าอะไรเลือก Row หรือ Column และทำไมดีกว่ากำหนดความกว้างตายตัว?


## ตารางทดสอบ

| ประเภท | input หรือการกระทำ | ผลที่คาดหวัง | ผลจริง |
|---|---|---|---|
| Normal | score ของ Nok = 85 (ค่าเดิม) | วงกลมแสดง A |  |
| Boundary | แก้เป็น 80 แล้วกด r | A |  |
| Boundary | แก้เป็น 79.9 แล้วกด r | B+ |  |
| Boundary | แก้เป็น 49.9 แล้วกด r | F |  |
| Failure | แก้เป็น 101 แล้วกด r | จอแดง RangeError (แล้วแก้กลับเป็น 85) |  |
| Layout | หมุนจอเป็นแนวนอน | การ์ด 3 ใบในแถวเดียว ชื่อยาวขึ้นบรรทัดใหม่ ไม่มีแถบเหลืองดำ |  |
| Automated | `flutter test` | “All tests passed!” |  |

## การใช้ AI
(ใช้ AI ไหม ตัวไหน ใช้ทำอะไร · ไม่ใช้ เขียนว่า “ไม่ใช้”)

---

# Lab L2 · answers.md (EN)

Name: 
Student ID: 
Repo link: 

## Q1 · Order of checks
Why must the ifs in `gradeFor()` go from A down? If `if (score >= 50) return 'D';` were the first check, what would `gradeFor(85)` return? And why does 101 throw instead of returning F?


## Q2 · null safety
Why is `nickname` a `String?` but `name` a `String`? What does `nickname ?? name` give for each student in your app?


## Q3 · Layout
When you removed the `Expanded` around the name, what did you see (copy the error text), and why? What value does `LayoutBuilder` use to pick Row or Column, and why is that better than a fixed width?


## Test table

| Type | Input or action | Expected | Actual |
|---|---|---|---|
| Normal | Nok’s score = 85 (as given) | the circle shows A |  |
| Boundary | change it to 80, press r | A |  |
| Boundary | change it to 79.9, press r | B+ |  |
| Boundary | change it to 49.9, press r | F |  |
| Failure | change it to 101, press r | red screen, RangeError (then set it back to 85) |  |
| Layout | rotate to landscape | 3 cards in one row, the long name wraps, no stripes |  |
| Automated | `flutter test` | “All tests passed!” |  |

## AI use
(Did you use AI? Which tool, and for what? If not, write “none”.)
