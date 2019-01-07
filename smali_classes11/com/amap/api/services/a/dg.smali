.class public Lcom/amap/api/services/a/dg;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method static a(Lcom/amap/api/services/a/cp;Ljava/lang/String;)[B
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    new-array v0, v0, [B

    .line 18
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/services/a/cp;->a(Ljava/lang/String;)Lcom/amap/api/services/a/cp$b;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 19
    if-nez v3, :cond_2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7

    .line 40
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 41
    :try_start_2
    invoke-virtual {v3}, Lcom/amap/api/services/a/cp$b;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8

    .line 47
    :cond_1
    :goto_1
    return-object v0

    .line 20
    :cond_2
    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {v3, v1}, Lcom/amap/api/services/a/cp$b;->a(I)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v2

    .line 21
    if-nez v2, :cond_4

    .line 33
    if-eqz v2, :cond_3

    .line 34
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_9

    .line 40
    :cond_3
    :goto_2
    if-eqz v3, :cond_1

    .line 41
    :try_start_5
    invoke-virtual {v3}, Lcom/amap/api/services/a/cp$b;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 43
    :catch_0
    move-exception v1

    .line 44
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 22
    :cond_4
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v0, v1, [B

    .line 23
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 26
    invoke-virtual {p0, p1}, Lcom/amap/api/services/a/cp;->c(Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 33
    if-eqz v2, :cond_5

    .line 34
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_a

    .line 40
    :cond_5
    :goto_4
    if-eqz v3, :cond_1

    .line 41
    :try_start_8
    invoke-virtual {v3}, Lcom/amap/api/services/a/cp$b;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    .line 43
    :catch_1
    move-exception v1

    goto :goto_3

    .line 29
    :catch_2
    move-exception v1

    move-object v3, v2

    .line 30
    :goto_5
    :try_start_9
    const-string/jumbo v4, "Utils"

    const-string/jumbo v5, "readSingleLog"

    invoke-static {v1, v4, v5}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 33
    if-eqz v2, :cond_6

    .line 34
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6

    .line 40
    :cond_6
    :goto_6
    if-eqz v3, :cond_1

    .line 41
    :try_start_b
    invoke-virtual {v3}, Lcom/amap/api/services/a/cp$b;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_1

    .line 43
    :catch_3
    move-exception v1

    goto :goto_3

    .line 32
    :catchall_0
    move-exception v0

    move-object v3, v2

    .line 33
    :goto_7
    if-eqz v2, :cond_7

    .line 34
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4

    .line 40
    :cond_7
    :goto_8
    if-eqz v3, :cond_8

    .line 41
    :try_start_d
    invoke-virtual {v3}, Lcom/amap/api/services/a/cp$b;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5

    .line 32
    :cond_8
    :goto_9
    throw v0

    .line 36
    :catch_4
    move-exception v1

    .line 37
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 43
    :catch_5
    move-exception v1

    .line 44
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    .line 36
    :catch_6
    move-exception v1

    .line 37
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 36
    :catch_7
    move-exception v1

    .line 37
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 43
    :catch_8
    move-exception v1

    goto :goto_3

    .line 36
    :catch_9
    move-exception v1

    .line 37
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 36
    :catch_a
    move-exception v1

    .line 37
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 32
    :catchall_1
    move-exception v0

    goto :goto_7

    .line 29
    :catch_b
    move-exception v1

    goto :goto_5
.end method
