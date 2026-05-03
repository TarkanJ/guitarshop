# 🎸 guitarshop 🎸
e-shop for musicians

👉 Some of pictures do not match to databases in folder "uploads".

* It is due to possibility upload them manually through
administration interface in future...

👉 Administrator's interface not working yet...

👉 Adding the goods in demo, will be finish later...


🧠 HowTo Use It:

👉 Copy all files to Docker container with MySQL, PHP 8 & Apache/Nginx

* recommended Docker container:  https://github.com/TarkanJ/Docker.git

* create user "martin" with pass "martin" and database "guitarshop"


ENJOY!


🧱 How is structured

```
/guitarshop
  /public
    index.php    → input (index.php).
    /uploads     → pictures ✅
  /src           → logics (DB, auth, products)
  /config        → settings
```

⚠️ IMPORTANT:

👉 to browser go only like this http://localhost/guitarshop/public/index.php

the rest is „protected“


🔥 What I have got from older version (PHP 5)

✅finally separated code:
* DB connection
* login logics
* products
* config

✅ no duplicit code

✅ visibility

✅ ready for next extensions of source


⚠️ IMPORTANT:

👉 MUST go in browser:
http://localhost/guitarshop/public/index.php

NOT!:

http://localhost/guitarshop/index.php
