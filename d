[33mcommit d8df80ce41b862ecff22c049d5a7ca3d4c05865c[m[33m ([m[1;36mHEAD -> [m[1;32mmaster[m[33m, [m[1;31morigin/master[m[33m)[m
Author: NizamiKhan <sauron270695@yandex.ru>
Date:   Tue Oct 24 17:28:40 2017 +0300

    настроено

[1mdiff --git a/.env b/.env[m
[1mnew file mode 100644[m
[1mindex 0000000..fb73494[m
[1m--- /dev/null[m
[1m+++ b/.env[m
[36m@@ -0,0 +1,26 @@[m
[32m+[m[32mAPP_ENV=local[m
[32m+[m[32mAPP_DEBUG=true[m
[32m+[m[32mAPP_KEY=base64:gN0LkT5mti9IEqmv8VFc/FVPpr6rODtsx7HRS/WwKcM=[m
[32m+[m[32mAPP_URL=http://localhost[m
[32m+[m
[32m+[m[32mDB_CONNECTION=mysql[m
[32m+[m[32mDB_HOST=127.0.0.1[m
[32m+[m[32mDB_PORT=3306[m
[32m+[m[32mDB_DATABASE=land[m
[32m+[m[32mDB_USERNAME=root[m
[32m+[m[32mDB_PASSWORD=[m
[32m+[m
[32m+[m[32mCACHE_DRIVER=file[m
[32m+[m[32mSESSION_DRIVER=file[m
[32m+[m[32mQUEUE_DRIVER=sync[m
[32m+[m
[32m+[m[32mREDIS_HOST=127.0.0.1[m
[32m+[m[32mREDIS_PASSWORD=null[m
[32m+[m[32mREDIS_PORT=6379[m
[32m+[m
[32m+[m[32mMAIL_DRIVER=smtp[m
[32m+[m[32mMAIL_HOST=mailtrap.io[m
[32m+[m[32mMAIL_PORT=2525[m
[32m+[m[32mMAIL_USERNAME=null[m
[32m+[m[32mMAIL_PASSWORD=null[m
[32m+[m[32mMAIL_ENCRYPTION=null[m
[1mdiff --git a/.env.example b/.env.example[m
[1mnew file mode 100644[m
[1mindex 0000000..9a9d0dc[m
[1m--- /dev/null[m
[1m+++ b/.env.example[m
[36m@@ -0,0 +1,26 @@[m
[32m+[m[32mAPP_ENV=local[m
[32m+[m[32mAPP_DEBUG=true[m
[32m+[m[32mAPP_KEY=SomeRandomString[m
[32m+[m[32mAPP_URL=http://localhost[m
[32m+[m
[32m+[m[32mDB_CONNECTION=mysql[m
[32m+[m[32mDB_HOST=127.0.0.1[m
[32m+[m[32mDB_PORT=3306[m
[32m+[m[32mDB_DATABASE=homestead[m
[32m+[m[32mDB_USERNAME=homestead[m
[32m+[m[32mDB_PASSWORD=secret[m
[32m+[m
[32m+[m[32mCACHE_DRIVER=file[m
[32m+[m[32mSESSION_DRIVER=file[m
[32m+[m[32mQUEUE_DRIVER=sync[m
[32m+[m
[32m+[m[32mREDIS_HOST=127.0.0.1[m
[32m+[m[32mREDIS_PASSWORD=null[m
[32m+[m[32mREDIS_PORT=6379[m
[32m+[m
[32m+[m[32mMAIL_DRIVER=smtp[m
[32m+[m[32mMAIL_HOST=mailtrap.io[m
[32m+[m[32mMAIL_PORT=2525[m
[32m+[m[32mMAIL_USERNAME=null[m
[32m+[m[32mMAIL_PASSWORD=null[m
[32m+[m[32mMAIL_ENCRYPTION=null[m
[1mdiff --git a/.gitattributes b/.gitattributes[m
[1mnew file mode 100644[m
[1mindex 0000000..a8763f8[m
[1m--- /dev/null[m
[1m+++ b/.gitattributes[m
[36m@@ -0,0 +1,3 @@[m
[32m+[m[32m* text=auto[m
[32m+[m[32m*.css linguist-vendored[m
[32m+[m[32m*.scss linguist-vendored[m
[1mdiff --git a/.gitignore b/.gitignore[m
[1mnew file mode 100644[m
[1mindex 0000000..0cc66c8[m
[1m--- /dev/null[m
[1m+++ b/.gitignore[m
[36m@@ -0,0 +1,6 @@[m
[32m+[m[32m/vendor[m
[32m+[m[32m/node_modules[m
[32m+[m[32m/public/storage[m
[32m+[m[32mHomestead.yaml[m
[32m+[m[32mHomestead.json[m
[32m+[m[32m/.idea[m
\ No newline at end of file[m
[1mdiff --git a/app/Console/Commands/Inspire.php b/app/Console/Commands/Inspire.php[m
[1mnew file mode 100644[m
[1mindex 0000000..db9ab85[m
[1m--- /dev/null[m
[1m+++ b/app/Console/Commands/Inspire.php[m
[36m@@ -0,0 +1,33 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mnamespace App\Console\Commands;[m
[32m+[m
[32m+[m[32muse Illuminate\Console\Command;[m
[32m+[m[32muse Illuminate\Foundation\Inspiring;[m
[32m+[m
[32m+[m[32mclass Inspire extends Command[m
[32m+[m[32m{[m
[32m+[m[32m    /**[m
[32m+[m[32m     * The name and signature of the console command.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @var string[m
[32m+[m[32m     */[m
[32m+[m[32m    protected $signature = 'inspire';[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * The console command description.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @var string[m
[32m+[m[32m     */[m
[32m+[m[32m    protected $description = 'Display an inspiring quote';[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Execute the console command.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @return mixed[m
[32m+