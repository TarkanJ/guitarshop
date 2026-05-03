# 🎸 guitarshop 🎸
e-shop for musicians

👉 Some of pictures do not match to databases in folder "uploads".

* It is due to possibility upload them manually through
administration interface in future...

👉 Administrator's interface not working yet...

👉 Adding the goods in demo, will be finish later...

🧠HowTo Use

🧱 How is structured

```
/guitarshop
  /public        → input (index.php)
  /src           → logics (DB, auth, products)
  /config        → settings
  /uploads       → pictures
```

👉 IMPORTANT:

to browser go only like this /public/index.php
the rest is „protected“

🔥 We get finally
✅ separated code:
DB connection
login logics
products
config
✅ none duplicit code
✅ visibility
✅ ready for next extensions of source

⚠️ IMPORTANT:

👉 MUST go in browser:
http://localhost/guitarshop/public/index.php

NOT:

/guitarshop/index.php

