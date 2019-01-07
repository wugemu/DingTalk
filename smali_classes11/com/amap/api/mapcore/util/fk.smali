.class public Lcom/amap/api/mapcore/util/fk;
.super Ljava/lang/Object;
.source "ProxyUtil.java"


# direct methods
.method private static a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 188
    :try_start_0
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 193
    :goto_0
    if-nez v0, :cond_0

    .line 194
    const-string/jumbo v0, "null"

    .line 196
    :cond_0
    return-object v0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    const-string/jumbo v1, "ProxyUtil"

    const-string/jumbo v2, "getDefHost"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    invoke-static {p0}, Lcom/amap/api/mapcore/util/fn;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/net/Proxy;
    .locals 4

    .prologue
    .line 30
    const/4 v0, 0x0

    .line 32
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 33
    new-instance v1, Ljava/net/URI;

    const-string/jumbo v2, "http://restapi.amap.com"

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-static {p0, v1}, Lcom/amap/api/mapcore/util/fk;->a(Landroid/content/Context;Ljava/net/URI;)Ljava/net/Proxy;

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    .line 36
    :cond_0
    invoke-static {p0}, Lcom/amap/api/mapcore/util/fk;->b(Landroid/content/Context;)Ljava/net/Proxy;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 40
    :catch_0
    move-exception v1

    .line 41
    const-string/jumbo v2, "ProxyUtil"

    const-string/jumbo v3, "getProxy"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/net/URI;)Ljava/net/Proxy;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 206
    invoke-static {p0}, Lcom/amap/api/mapcore/util/fk;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    :try_start_0
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    .line 211
    invoke-virtual {v0, p1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 213
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    .line 214
    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_1

    :cond_0
    move-object v0, v1

    .line 226
    :cond_1
    :goto_0
    return-object v0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    const-string/jumbo v2, "ProxyUtil"

    const-string/jumbo v3, "getProxySelectorCfg"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v0, v1

    .line 226
    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 177
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b()I
    .locals 4

    .prologue
    .line 234
    const/4 v0, -0x1

    .line 236
    :try_start_0
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 240
    :goto_0
    return v0

    .line 237
    :catch_0
    move-exception v1

    .line 238
    const-string/jumbo v2, "ProxyUtil"

    const-string/jumbo v3, "getDefPort"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Ljava/net/Proxy;
    .locals 12

    .prologue
    const/4 v10, 0x0

    const/16 v6, 0x50

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 49
    .line 51
    invoke-static {p0}, Lcom/amap/api/mapcore/util/fk;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 52
    const-string/jumbo v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 56
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 57
    if-eqz v2, :cond_10

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 58
    const-string/jumbo v0, "apn"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 59
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 63
    :cond_0
    if-eqz v0, :cond_4

    const-string/jumbo v1, "ctwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 64
    invoke-static {}, Lcom/amap/api/mapcore/util/fk;->a()Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-static {}, Lcom/amap/api/mapcore/util/fk;->b()I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 67
    :try_start_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 68
    const-string/jumbo v1, "null"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-nez v1, :cond_11

    move v1, v9

    .line 73
    :goto_0
    if-nez v1, :cond_1

    .line 74
    :try_start_3
    const-string/jumbo v1, "QMTAuMC4wLjIwMA=="

    invoke-static {v1}, Lcom/amap/api/mapcore/util/fk;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v3

    .line 76
    :cond_1
    if-ne v0, v8, :cond_2

    move v0, v6

    :cond_2
    move v8, v0

    .line 138
    :goto_1
    if-eqz v2, :cond_3

    .line 140
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 150
    :cond_3
    :goto_2
    :try_start_5
    invoke-static {v3, v8}, Lcom/amap/api/mapcore/util/fk;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 151
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 152
    invoke-static {v3, v8}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6

    .line 162
    :goto_3
    return-object v0

    .line 79
    :cond_4
    if-eqz v0, :cond_10

    :try_start_6
    const-string/jumbo v1, "wap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 80
    invoke-static {}, Lcom/amap/api/mapcore/util/fk;->a()Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-static {}, Lcom/amap/api/mapcore/util/fk;->b()I
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v1

    .line 84
    :try_start_7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 85
    const-string/jumbo v0, "null"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v0

    if-nez v0, :cond_f

    move v0, v9

    .line 90
    :goto_4
    if-nez v0, :cond_5

    .line 91
    :try_start_8
    const-string/jumbo v0, "QMTAuMC4wLjE3Mg=="

    invoke-static {v0}, Lcom/amap/api/mapcore/util/fk;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_10
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_b
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v3

    .line 93
    :cond_5
    if-ne v1, v8, :cond_e

    move v8, v6

    .line 94
    goto :goto_1

    .line 141
    :catch_0
    move-exception v0

    .line 143
    const-string/jumbo v1, "ProxyUtil"

    const-string/jumbo v2, "getHostProxy2"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 98
    :catch_1
    move-exception v0

    move-object v1, v7

    move v2, v8

    move-object v3, v7

    .line 99
    :goto_5
    :try_start_9
    const-string/jumbo v4, "ProxyUtil"

    const-string/jumbo v5, "getHostProxy"

    invoke-static {v0, v4, v5}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {p0}, Lcom/amap/api/mapcore/util/fh;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_d

    .line 102
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 105
    invoke-static {}, Lcom/amap/api/mapcore/util/fk;->a()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-static {}, Lcom/amap/api/mapcore/util/fk;->b()I

    move-result v2

    .line 107
    const-string/jumbo v5, "ctwap"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v8, :cond_8

    .line 108
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 109
    const-string/jumbo v4, "null"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    move v10, v9

    move-object v3, v0

    .line 114
    :cond_6
    if-nez v10, :cond_7

    .line 115
    const-string/jumbo v0, "QMTAuMC4wLjIwMA=="

    invoke-static {v0}, Lcom/amap/api/mapcore/util/fk;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result-object v3

    .line 117
    :cond_7
    if-ne v2, v8, :cond_d

    move v8, v6

    .line 138
    :goto_6
    if-eqz v1, :cond_3

    .line 140
    :try_start_a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_2

    .line 141
    :catch_2
    move-exception v0

    .line 143
    const-string/jumbo v1, "ProxyUtil"

    const-string/jumbo v2, "getHostProxy2"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 120
    :cond_8
    :try_start_b
    const-string/jumbo v5, "wap"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v8, :cond_d

    .line 121
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 122
    const-string/jumbo v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    move v2, v9

    .line 127
    :goto_7
    if-nez v2, :cond_9

    .line 128
    const-string/jumbo v0, "QMTAuMC4wLjE3Mg=="

    invoke-static {v0}, Lcom/amap/api/mapcore/util/fk;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-result-object v0

    :cond_9
    move v8, v6

    move-object v3, v0

    .line 130
    goto :goto_6

    .line 133
    :catch_3
    move-exception v0

    move-object v2, v7

    move-object v3, v7

    .line 134
    :goto_8
    :try_start_c
    const-string/jumbo v1, "ProxyUtil"

    const-string/jumbo v4, "getHostProxy1"

    .line 135
    invoke-static {v0, v1, v4}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 138
    if-eqz v2, :cond_3

    .line 140
    :try_start_d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_2

    .line 141
    :catch_4
    move-exception v0

    .line 143
    const-string/jumbo v1, "ProxyUtil"

    const-string/jumbo v2, "getHostProxy2"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 138
    :catchall_0
    move-exception v0

    move-object v2, v7

    :goto_9
    if-eqz v2, :cond_a

    .line 140
    :try_start_e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    .line 146
    :cond_a
    :goto_a
    throw v0

    .line 141
    :catch_5
    move-exception v1

    .line 143
    const-string/jumbo v2, "ProxyUtil"

    const-string/jumbo v3, "getHostProxy2"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a

    .line 155
    :catch_6
    move-exception v0

    .line 156
    const-string/jumbo v1, "ProxyUtil"

    const-string/jumbo v2, "getHostProxy2"

    .line 157
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    move-object v0, v7

    .line 162
    goto/16 :goto_3

    .line 138
    :catchall_1
    move-exception v0

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_9

    .line 133
    :catch_7
    move-exception v0

    move-object v3, v7

    goto :goto_8

    :catch_8
    move-exception v1

    move v8, v0

    move-object v3, v7

    move-object v0, v1

    goto :goto_8

    :catch_9
    move-exception v1

    move v8, v0

    move-object v0, v1

    goto :goto_8

    :catch_a
    move-exception v0

    move v8, v1

    move-object v3, v7

    goto :goto_8

    :catch_b
    move-exception v0

    move v8, v1

    goto :goto_8

    .line 98
    :catch_c
    move-exception v0

    move-object v1, v2

    move-object v3, v7

    move v2, v8

    goto/16 :goto_5

    :catch_d
    move-exception v1

    move-object v3, v7

    move-object v11, v2

    move v2, v0

    move-object v0, v1

    move-object v1, v11

    goto/16 :goto_5

    :catch_e
    move-exception v1

    move-object v11, v1

    move-object v1, v2

    move v2, v0

    move-object v0, v11

    goto/16 :goto_5

    :catch_f
    move-exception v0

    move-object v3, v7

    move v11, v1

    move-object v1, v2

    move v2, v11

    goto/16 :goto_5

    :catch_10
    move-exception v0

    move-object v11, v2

    move v2, v1

    move-object v1, v11

    goto/16 :goto_5

    :cond_c
    move v2, v10

    move-object v0, v3

    goto/16 :goto_7

    :cond_d
    move v8, v2

    goto/16 :goto_6

    :cond_e
    move v8, v1

    goto/16 :goto_1

    :cond_f
    move v0, v10

    move-object v3, v7

    goto/16 :goto_4

    :cond_10
    move-object v3, v7

    goto/16 :goto_1

    :cond_11
    move v1, v10

    move-object v3, v7

    goto/16 :goto_0
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 230
    invoke-static {p0}, Lcom/amap/api/mapcore/util/fh;->m(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
