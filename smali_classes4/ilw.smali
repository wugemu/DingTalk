.class public final Lilw;
.super Ljava/lang/Object;
.source "LogcatUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 10

    .prologue
    .line 161
    :try_start_0
    invoke-static {p0}, Lilw;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 162
    invoke-static {p0}, Lilw;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 164
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    invoke-static {v1}, Lilw;->a(Ljava/io/File;)V

    .line 172
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 173
    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 174
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 175
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    .line 179
    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 181
    invoke-static {}, Lika;->d()Likq;

    move-result-object v4

    const-string/jumbo v6, "LogcatUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "backupLogcatFiles, bakFile should not be directory: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Likq;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 184
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 188
    :cond_4
    invoke-static {}, Lika;->d()Likq;

    move-result-object v6

    const-string/jumbo v7, "LogcatUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "backupLogcatFiles: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 190
    :try_start_1
    invoke-static {v4, v5}, Lilu;->b(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 191
    :catch_0
    move-exception v4

    .line 192
    :try_start_2
    invoke-static {}, Lika;->d()Likq;

    move-result-object v5

    const-string/jumbo v6, "LogcatUtil"

    const-string/jumbo v7, "backupLogcatFiles: copyFile"

    invoke-interface {v5, v6, v7, v4}, Likq;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 195
    :catch_1
    move-exception v0

    .line 196
    invoke-static {}, Lika;->d()Likq;

    move-result-object v1

    const-string/jumbo v2, "LogcatUtil"

    const-string/jumbo v3, "backupOtherFiles"

    invoke-interface {v1, v2, v3, v0}, Likq;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public static a(Ljava/io/File;)V
    .locals 12

    .prologue
    const-wide/16 v8, 0x7

    const/4 v0, 0x0

    .line 60
    .line 1067
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 1068
    if-eqz v2, :cond_3

    array-length v1, v2

    if-lez v1, :cond_3

    .line 1069
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1070
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    sub-long v6, v4, v6

    .line 1071
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    add-long/2addr v4, v8

    .line 1073
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v8, v2, v1

    .line 1074
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1078
    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v9, "_"

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    aget-object v0, v0, v9

    .line 1079
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 1080
    cmp-long v0, v10, v6

    if-ltz v0, :cond_0

    cmp-long v0, v10, v4

    if-lez v0, :cond_1

    .line 1081
    :cond_0
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1082
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    const-string/jumbo v9, "LogcatUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "cleanExpiresFile: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " is too old !"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Likq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1084
    :cond_2
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    const-string/jumbo v9, "LogcatUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "cleanExpiresFile: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " failed !"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Likq;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1087
    :catch_0
    move-exception v0

    .line 1088
    invoke-static {}, Lika;->d()Likq;

    move-result-object v9

    const-string/jumbo v10, "LogcatUtil"

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v10, v8, v0}, Likq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 61
    :cond_3
    invoke-static {p0}, Lilw;->b(Ljava/io/File;)V

    .line 62
    invoke-static {p0}, Lilw;->c(Ljava/io/File;)V

    .line 63
    return-void
.end method

.method public static a(Ljava/io/File;I)V
    .locals 8

    .prologue
    const/16 v5, 0xbb8

    const/4 v2, 0x0

    .line 243
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    const-string/jumbo v1, "LogcatUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "start logcatDump for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " lines."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    const-string/jumbo v1, "LogcatUtil"

    const-string/jumbo v2, "targetFile is null or dir."

    invoke-interface {v0, v1, v2}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    invoke-static {p0}, Lilu;->a(Ljava/io/File;)V

    .line 253
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_3

    .line 255
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    const-string/jumbo v1, "LogcatUtil"

    const-string/jumbo v2, "targetFile\'s parent make failed."

    invoke-interface {v0, v1, v2}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :cond_3
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "logcat -v time -d -t "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xbb8

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 264
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 265
    :try_start_2
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 269
    const/4 v0, 0x0

    move v2, v0

    .line 270
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v0

    if-eqz v0, :cond_6

    .line 272
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 273
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 276
    goto :goto_1

    .line 274
    :catch_0
    move-exception v0

    .line 275
    :try_start_5
    invoke-static {}, Lika;->d()Likq;

    move-result-object v5

    const-string/jumbo v6, "LogcatUtil"

    const-string/jumbo v7, "skip"

    invoke-interface {v5, v6, v7, v0}, Likq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    .line 280
    :catch_1
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    .line 281
    :goto_2
    :try_start_6
    invoke-static {}, Lika;->d()Likq;

    move-result-object v4

    const-string/jumbo v5, "LogcatUtil"

    const-string/jumbo v6, "dumpLog"

    invoke-interface {v4, v5, v6, v0}, Likq;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 284
    if-eqz v1, :cond_4

    .line 285
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6

    .line 291
    :cond_4
    :goto_3
    if-eqz v3, :cond_5

    .line 292
    :try_start_8
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_7

    .line 298
    :cond_5
    :goto_4
    if-eqz v2, :cond_0

    .line 299
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_0

    .line 301
    :catch_2
    move-exception v0

    .line 302
    invoke-static {}, Lika;->d()Likq;

    move-result-object v1

    const-string/jumbo v2, "LogcatUtil"

    const-string/jumbo v3, "close bufferedReader"

    invoke-interface {v1, v2, v3, v0}, Likq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 278
    :cond_6
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 279
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    const-string/jumbo v5, "LogcatUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "end logcatDump: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 285
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    .line 291
    :goto_5
    if-eqz v4, :cond_7

    .line 292
    :try_start_c
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    .line 299
    :cond_7
    :goto_6
    :try_start_d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_0

    .line 301
    :catch_3
    move-exception v0

    .line 302
    invoke-static {}, Lika;->d()Likq;

    move-result-object v1

    const-string/jumbo v2, "LogcatUtil"

    const-string/jumbo v3, "close bufferedReader"

    invoke-interface {v1, v2, v3, v0}, Likq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 287
    :catch_4
    move-exception v0

    .line 288
    invoke-static {}, Lika;->d()Likq;

    move-result-object v1

    const-string/jumbo v2, "LogcatUtil"

    const-string/jumbo v5, "close fileWriter"

    invoke-interface {v1, v2, v5, v0}, Likq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 294
    :catch_5
    move-exception v0

    .line 295
    invoke-static {}, Lika;->d()Likq;

    move-result-object v1

    const-string/jumbo v2, "LogcatUtil"

    const-string/jumbo v4, "close logcatProc"

    invoke-interface {v1, v2, v4, v0}, Likq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 287
    :catch_6
    move-exception v0

    .line 288
    invoke-static {}, Lika;->d()Likq;

    move-result-object v1

    const-string/jumbo v4, "LogcatUtil"

    const-string/jumbo v5, "close fileWriter"

    invoke-interface {v1, v4, v5, v0}, Likq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 294
    :catch_7
    move-exception v0

    .line 295
    invoke-static {}, Lika;->d()Likq;

    move-result-object v1

    const-string/jumbo v3, "LogcatUtil"

    const-string/jumbo v4, "close logcatProc"

    invoke-interface {v1, v3, v4, v0}, Likq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 283
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    .line 284
    :goto_7
    if-eqz v1, :cond_8

    .line 285
    :try_start_e
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_8

    .line 291
    :cond_8
    :goto_8
    if-eqz v4, :cond_9

    .line 292
    :try_start_f
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_9

    .line 298
    :cond_9
    :goto_9
    if-eqz v3, :cond_a

    .line 299
    :try_start_10
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_a

    .line 303
    :cond_a
    :goto_a
    throw v0

    .line 287
    :catch_8
    move-exception v1

    .line 288
    invoke-static {}, Lika;->d()Likq;

    move-result-object v2

    const-string/jumbo v5, "LogcatUtil"

    const-string/jumbo v6, "close fileWriter"

    invoke-interface {v2, v5, v6, v1}, Likq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 294
    :catch_9
    move-exception v1

    .line 295
    invoke-static {}, Lika;->d()Likq;

    move-result-object v2

    const-string/jumbo v4, "LogcatUtil"

    const-string/jumbo v5, "close logcatProc"

    invoke-interface {v2, v4, v5, v1}, Likq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 301
    :catch_a
    move-exception v1

    .line 302
    invoke-static {}, Lika;->d()Likq;

    move-result-object v2

    const-string/jumbo v3, "LogcatUtil"

    const-string/jumbo v4, "close bufferedReader"

    invoke-interface {v2, v3, v4, v1}, Likq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 283
    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_7

    :catchall_3
    move-exception v0

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v4, v3

    move-object v3, v2

    goto :goto_7

    .line 280
    :catch_b
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_2

    :catch_c
    move-exception v0

    move-object v1, v2

    move-object v3, v4

    goto/16 :goto_2

    :catch_d
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_2
.end method

.method public static b(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .prologue
    .line 201
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "logcat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    const/4 v0, 0x0

    .line 207
    :cond_0
    return-object v0
.end method

.method private static b(Ljava/io/File;)V
    .locals 7

    .prologue
    .line 96
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 97
    new-instance v0, Lilx;

    invoke-direct {v0}, Lilx;-><init>()V

    .line 103
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 104
    if-eqz v1, :cond_2

    array-length v2, v1

    const/4 v3, 0x5

    if-lt v2, v3, :cond_2

    .line 105
    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 106
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    add-int/lit8 v2, v2, -0x4

    if-ge v0, v2, :cond_2

    .line 107
    aget-object v2, v1, v0

    .line 108
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 112
    invoke-static {}, Lika;->d()Likq;

    move-result-object v3

    const-string/jumbo v4, "LogcatUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "cleanExpiresFile: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " is over 5 !"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Likq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_1
    invoke-static {}, Lika;->d()Likq;

    move-result-object v3

    const-string/jumbo v4, "LogcatUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "cleanExpiresFile: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " failed !"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Likq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 118
    :cond_2
    return-void
.end method

.method private static c(Landroid/content/Context;)Ljava/io/File;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 211
    .line 213
    :try_start_0
    invoke-static {}, Lima;->b()Ljava/io/File;

    move-result-object v1

    .line 214
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 215
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "logcat_bak"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 221
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move-object v1, v0

    .line 228
    :goto_2
    return-object v1

    .line 216
    :catch_0
    move-exception v1

    .line 217
    invoke-static {}, Lika;->d()Likq;

    move-result-object v2

    const-string/jumbo v3, "LogcatUtil"

    const-string/jumbo v4, "getBackupLogcatsDir"

    invoke-interface {v2, v3, v4, v1}, Likq;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    goto :goto_0

    .line 225
    :catch_1
    move-exception v0

    .line 226
    invoke-static {}, Lika;->d()Likq;

    move-result-object v2

    const-string/jumbo v3, "LogcatUtil"

    const-string/jumbo v4, "getBackupLogcatsDir"

    invoke-interface {v2, v3, v4, v0}, Likq;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_0
    move-object v0, v1

    goto :goto_1
.end method

.method private static c(Ljava/io/File;)V
    .locals 11

    .prologue
    .line 122
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 123
    new-instance v0, Lily;

    invoke-direct {v0}, Lily;-><init>()V

    .line 129
    invoke-static {p0}, Lilu;->c(Ljava/io/File;)J

    move-result-wide v2

    .line 130
    const-wide/32 v4, 0x200000

    cmp-long v1, v2, v4

    if-ltz v1, :cond_2

    .line 131
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 132
    if-eqz v4, :cond_2

    array-length v1, v4

    if-lez v1, :cond_2

    .line 133
    const-wide/32 v6, 0x100000

    sub-long/2addr v2, v6

    .line 134
    invoke-static {v4, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 136
    array-length v5, v4

    const/4 v0, 0x0

    move v10, v0

    move-wide v0, v2

    move v2, v10

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v3, v4, v2

    .line 137
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 140
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 141
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 142
    sub-long/2addr v0, v6

    .line 143
    invoke-static {}, Lika;->d()Likq;

    move-result-object v6

    const-string/jumbo v7, "LogcatUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "cleanExpiresFile: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, " is too large !"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v7, v3}, Likq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-lez v3, :cond_2

    .line 136
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    :cond_1
    invoke-static {}, Lika;->d()Likq;

    move-result-object v6

    const-string/jumbo v7, "LogcatUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "cleanExpiresFile: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, " failed !"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v7, v3}, Likq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 154
    :cond_2
    return-void
.end method
