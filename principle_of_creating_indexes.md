## 🧱 1. **What Is an Index?**

An index is a data structure (usually a **B-tree**) that allows MySQL to **quickly locate rows** without scanning the entire table.

Think of it like a **book index**: instead of flipping through every page, you jump straight to the content.

---

## ⭐ Key Principles of Creating Indexes

### ✅ 1. **Index Columns Used in WHERE, JOIN, ORDER BY, GROUP BY**

* Index columns that are **frequently filtered or sorted**.

**Example:**

```sql
SELECT * FROM users WHERE email = 'test@example.com';
```

Create:

```sql
CREATE INDEX idx_email ON users(email);
```

---

### ✅ 2. **Use Composite Indexes for Multiple Columns**

If your query filters by multiple columns:

```sql
SELECT * FROM orders WHERE user_id = 1 AND status = 'shipped';
```

Create:

```sql
CREATE INDEX idx_user_status ON orders(user_id, status);
```

MySQL can use the **leftmost prefix** of a composite index. So this index can optimize:

* `WHERE user_id = ?`
* `WHERE user_id = ? AND status = ?`

But **not**: `WHERE status = ?` alone.

---

### ✅ 3. **Avoid Redundant Indexes**

Don't create:

```sql
CREATE INDEX idx1 ON users(name);
CREATE INDEX idx2 ON users(name, age);
```

Because `idx2` covers `name` already — `idx1` is redundant.

---

### ✅ 4. **Use Indexes for JOINs**

For better JOIN performance, index **foreign keys** and **columns involved in JOINs**.

---

### ✅ 5. **Covering Indexes** for Read Optimization

If all columns used in a query are in the index, MySQL avoids accessing the table at all — this is called a **covering index**.

```sql
SELECT email FROM users WHERE name = 'Tom';
```

Index:

```sql
CREATE INDEX idx_name_email ON users(name, email);
```

---

## ⚠️ Trade-Offs

* **Indexes speed up SELECTs**, but slow down:

  * `INSERT`
  * `UPDATE`
  * `DELETE`
    Because the index must also be updated.

* **Too many indexes** = more storage + slower writes.

---

## 🔍 Tools to Help

* `EXPLAIN SELECT ...`
  Shows how MySQL will use indexes in a query.

* `SHOW INDEXES FROM table_name;`
  Lists all indexes on a table.

---

## 🧠 Best Practices Summary

| Tip                       | Description                                        |
| ------------------------- | -------------------------------------------------- |
| Index WHERE columns       | Focus on frequently filtered fields                |
| Use composite indexes     | Multi-column indexes for multi-condition queries   |
| Use leftmost prefix rule  | Only leading columns in composite indexes are used |
| Don't over-index          | Avoid too many or redundant indexes                |
| Optimize reads vs. writes | Balance query speed vs. insert/update overhead     |

---
