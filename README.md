# 🎸 guitarshop 🎸
e-shop for musicians

👉 Some of pictures do not match to databases in folder "uploads".

* It is due to possibility upload them manually through
administration interface in future...

👉 Administrator's interface not working yet...

👉 Adding the goods in demo, will be finish later...


🧠 HowTo Use It:

👉 Just copy all files to Docker container with MySQL, PHP 8 & Apache/Nginx

ENJOY!


🧱 How is structured

```
/guitarshop
  /public        → input (index.php)
  /src           → logics (DB, auth, products)
  /config        → settings
  /uploads       → pictures
```

⚠️ IMPORTANT:

👉 to browser go only like this /public/index.php

the rest is „protected“

🔥 What I have got
✅finally separated code:
* DB connection
* login logics
* products
* config

✅ none duplicit code

✅ visibility

✅ ready for next extensions of source


⚠️ IMPORTANT:

👉 MUST go in browser:
http://localhost/guitarshop/public/index.php

NOT:

http://localhost/guitarshop/index.php

