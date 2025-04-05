1. **Atomicity**  
   - *All or nothing*: A transaction must be fully completed or not done at all.  
   - If any part of the transaction fails, the entire transaction is rolled back.

2. **Consistency**  
   - Ensures that the database moves from one valid state to another.  
   - All data integrity rules must be followed before and after the transaction.

3. **Isolation**  
   - Transactions occur independently of each other.  
   - Intermediate states of a transaction are invisible to others, preventing conflicts.

4. **Durability**  
   - Once a transaction is committed, it is permanently saved.  
   - Even if the system crashes afterward, the changes will not be lost.