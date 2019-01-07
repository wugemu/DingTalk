.class public Lcom/amap/api/mapcore/util/fe;
.super Ljava/lang/Object;
.source "AuthConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/fe$b;,
        Lcom/amap/api/mapcore/util/fe$a;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, -0x1

    sput v0, Lcom/amap/api/mapcore/util/fe;->a:I

    .line 51
    const-string/jumbo v0, ""

    sput-object v0, Lcom/amap/api/mapcore/util/fe;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/amap/api/mapcore/util/fm;Ljava/lang/String;Ljava/util/Map;)Lcom/amap/api/mapcore/util/fe$a;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amap/api/mapcore/util/fm;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amap/api/mapcore/util/fe$a;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 224
    .line 227
    new-instance v1, Lcom/amap/api/mapcore/util/fe$a;

    invoke-direct {v1}, Lcom/amap/api/mapcore/util/fe$a;-><init>()V

    .line 229
    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore/util/hc;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/hc;-><init>()V
    :try_end_0
    .catch Lcom/amap/api/mapcore/util/fc; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    .line 232
    :try_start_1
    new-instance v2, Lcom/amap/api/mapcore/util/fe$b;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/amap/api/mapcore/util/fe$b;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/fm;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Lcom/amap/api/mapcore/util/hc;->a(Lcom/amap/api/mapcore/util/hi;Z)Lcom/amap/api/mapcore/util/hk;
    :try_end_1
    .catch Lcom/amap/api/mapcore/util/fc; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    .line 238
    if-eqz v2, :cond_1d

    .line 239
    :try_start_2
    iget-object v4, v2, Lcom/amap/api/mapcore/util/hk;->a:[B
    :try_end_2
    .catch Lcom/amap/api/mapcore/util/fc; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8

    .line 244
    :goto_0
    const/16 v0, 0x10

    :try_start_3
    new-array v0, v0, [B

    .line 245
    array-length v5, v4

    add-int/lit8 v5, v5, -0x10

    new-array v5, v5, [B

    .line 246
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-static {v4, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    const/16 v6, 0x10

    const/4 v7, 0x0

    array-length v8, v4

    add-int/lit8 v8, v8, -0x10

    invoke-static {v4, v6, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v7, "AES"

    invoke-direct {v6, v0, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 249
    const-string/jumbo v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 250
    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {}, Lcom/amap/api/mapcore/util/fn;->a()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 251
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v6, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 252
    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 253
    invoke-static {v0}, Lcom/amap/api/mapcore/util/fn;->a([B)Ljava/lang/String;
    :try_end_3
    .catch Lcom/amap/api/mapcore/util/fc; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_9

    move-result-object v3

    move-object v0, v3

    move-object v10, v4

    move-object v4, v2

    move-object v2, v10

    .line 261
    :goto_1
    if-nez v2, :cond_0

    move-object v0, v1

    .line 466
    :goto_2
    return-object v0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    :try_start_4
    throw v0
    :try_end_4
    .catch Lcom/amap/api/mapcore/util/fc; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 254
    :catch_1
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    .line 255
    :goto_3
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/fc;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fe$a;->a:Ljava/lang/String;

    move-object v0, v3

    move-object v10, v4

    move-object v4, v2

    move-object v2, v10

    .line 260
    goto :goto_1

    .line 236
    :catch_2
    move-exception v0

    :try_start_5
    new-instance v0, Lcom/amap/api/mapcore/util/fc;

    const-string/jumbo v2, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v2}, Lcom/amap/api/mapcore/util/fc;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Lcom/amap/api/mapcore/util/fc; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    .line 260
    :catch_3
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    :goto_4
    move-object v0, v3

    move-object v10, v4

    move-object v4, v2

    move-object v2, v10

    goto :goto_1

    .line 258
    :catch_4
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    .line 259
    :goto_5
    const-string/jumbo v5, "ConfigManager"

    const-string/jumbo v6, "loadConfig"

    invoke-static {v0, v5, v6}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    move-object v10, v4

    move-object v4, v2

    move-object v2, v10

    goto :goto_1

    .line 265
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 266
    invoke-static {v2}, Lcom/amap/api/mapcore/util/fn;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 271
    :cond_1
    :try_start_6
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 272
    const-string/jumbo v0, "status"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 273
    const-string/jumbo v0, "status"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 274
    if-ne v0, v9, :cond_18

    .line 275
    const/4 v0, 0x1

    sput v0, Lcom/amap/api/mapcore/util/fe;->a:I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    .line 302
    :cond_2
    :try_start_7
    const-string/jumbo v0, "ver"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 303
    const-string/jumbo v0, "ver"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/amap/api/mapcore/util/fe$a;->b:I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    .line 312
    :cond_3
    :goto_6
    :try_start_8
    const-string/jumbo v0, "result"

    invoke-static {v5, v0}, Lcom/amap/api/mapcore/util/fn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 314
    new-instance v0, Lcom/amap/api/mapcore/util/fe$a$a;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/fe$a$a;-><init>()V

    .line 315
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/amap/api/mapcore/util/fe$a$a;->a:Z

    .line 316
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/amap/api/mapcore/util/fe$a$a;->b:Z

    .line 317
    iput-object v0, v1, Lcom/amap/api/mapcore/util/fe$a;->p:Lcom/amap/api/mapcore/util/fe$a$a;

    .line 320
    const-string/jumbo v2, "result"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 322
    const-string/jumbo v3, "11K"

    invoke-static {v2, v3}, Lcom/amap/api/mapcore/util/fn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6

    move-result v3

    if-eqz v3, :cond_4

    .line 324
    :try_start_9
    const-string/jumbo v3, "11K"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 325
    const-string/jumbo v4, "able"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 326
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/amap/api/mapcore/util/fe;->a(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Lcom/amap/api/mapcore/util/fe$a$a;->a:Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_7

    .line 337
    :cond_4
    :goto_7
    :try_start_a
    const-string/jumbo v0, "11B"

    invoke-static {v2, v0}, Lcom/amap/api/mapcore/util/fn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 338
    const-string/jumbo v0, "11B"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fe$a;->d:Lorg/json/JSONObject;

    .line 344
    :cond_5
    const-string/jumbo v0, "11C"

    invoke-static {v2, v0}, Lcom/amap/api/mapcore/util/fn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 345
    const-string/jumbo v0, "11C"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fe$a;->g:Lorg/json/JSONObject;

    .line 349
    :cond_6
    const-string/jumbo v0, "11I"

    invoke-static {v2, v0}, Lcom/amap/api/mapcore/util/fn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 350
    const-string/jumbo v0, "11I"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fe$a;->h:Lorg/json/JSONObject;

    .line 356
    :cond_7
    const-string/jumbo v0, "11H"

    invoke-static {v2, v0}, Lcom/amap/api/mapcore/util/fn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 357
    const-string/jumbo v0, "11H"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fe$a;->i:Lorg/json/JSONObject;

    .line 361
    :cond_8
    const-string/jumbo v0, "11E"

    invoke-static {v2, v0}, Lcom/amap/api/mapcore/util/fn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 362
    const-string/jumbo v0, "11E"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fe$a;->j:Lorg/json/JSONObject;

    .line 366
    :cond_9
    const-string/jumbo v0, "11F"

    invoke-static {v2, v0}, Lcom/amap/api/mapcore/util/fn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 367
    const-string/jumbo v0, "11F"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fe$a;->k:Lorg/json/JSONObject;

    .line 371
    :cond_a
    const-string/jumbo v0, "13A"

    invoke-static {v2, v0}, Lcom/amap/api/mapcore/util/fn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 372
    const-string/jumbo v0, "13A"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fe$a;->m:Lorg/json/JSONObject;

    .line 376
    :cond_b
    const-string/jumbo v0, "13J"

    invoke-static {v2, v0}, Lcom/amap/api/mapcore/util/fn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 377
    const-string/jumbo v0, "13J"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fe$a;->e:Lorg/json/JSONObject;

    .line 381
    :cond_c
    const-string/jumbo v0, "11G"

    invoke-static {v2, v0}, Lcom/amap/api/mapcore/util/fn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 382
    const-string/jumbo v0, "11G"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fe$a;->l:Lorg/json/JSONObject;

    .line 386
    :cond_d
    const-string/jumbo v0, "001"

    invoke-static {v2, v0}, Lcom/amap/api/mapcore/util/fn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 387
    const-string/jumbo v0, "001"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 388
    new-instance v3, Lcom/amap/api/mapcore/util/fe$a$d;

    invoke-direct {v3}, Lcom/amap/api/mapcore/util/fe$a$d;-><init>()V

    .line 389
    invoke-static {v0, v3}, Lcom/amap/api/mapcore/util/fe;->a(Lorg/json/JSONObject;Lcom/amap/api/mapcore/util/fe$a$d;)V

    .line 390
    iput-object v3, v1, Lcom/amap/api/mapcore/util/fe$a;->q:Lcom/amap/api/mapcore/util/fe$a$d;

    .line 393
    :cond_e
    const-string/jumbo v0, "002"

    invoke-static {v2, v0}, Lcom/amap/api/mapcore/util/fn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 394
    const-string/jumbo v0, "002"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 395
    new-instance v3, Lcom/amap/api/mapcore/util/fe$a$c;

    invoke-direct {v3}, Lcom/amap/api/mapcore/util/fe$a$c;-><init>()V

    .line 396
    invoke-static {v0, v3}, Lcom/amap/api/mapcore/util/fe;->a(Lorg/json/JSONObject;Lcom/amap/api/mapcore/util/fe$a$c;)V

    .line 397
    iput-object v3, v1, Lcom/amap/api/mapcore/util/fe$a;->r:Lcom/amap/api/mapcore/util/fe$a$c;

    .line 403
    :cond_f
    const-string/jumbo v0, "006"

    invoke-static {v2, v0}, Lcom/amap/api/mapcore/util/fn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 405
    const-string/jumbo v0, "006"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 406
    iput-object v0, v1, Lcom/amap/api/mapcore/util/fe$a;->n:Lorg/json/JSONObject;

    .line 411
    :cond_10
    const-string/jumbo v0, "010"

    invoke-static {v2, v0}, Lcom/amap/api/mapcore/util/fn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 412
    const-string/jumbo v0, "010"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 413
    iput-object v0, v1, Lcom/amap/api/mapcore/util/fe$a;->o:Lorg/json/JSONObject;

    .line 417
    :cond_11
    const-string/jumbo v0, "11Z"

    invoke-static {v2, v0}, Lcom/amap/api/mapcore/util/fn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 418
    const-string/jumbo v0, "11Z"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 419
    new-instance v3, Lcom/amap/api/mapcore/util/fe$a$b;

    invoke-direct {v3}, Lcom/amap/api/mapcore/util/fe$a$b;-><init>()V

    .line 420
    invoke-static {v0, v3}, Lcom/amap/api/mapcore/util/fe;->a(Lorg/json/JSONObject;Lcom/amap/api/mapcore/util/fe$a$b;)V

    .line 421
    iput-object v3, v1, Lcom/amap/api/mapcore/util/fe$a;->s:Lcom/amap/api/mapcore/util/fe$a$b;

    .line 424
    :cond_12
    const-string/jumbo v0, "135"

    invoke-static {v2, v0}, Lcom/amap/api/mapcore/util/fn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 425
    const-string/jumbo v0, "135"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fe$a;->f:Lorg/json/JSONObject;

    .line 428
    :cond_13
    const-string/jumbo v0, "13S"

    invoke-static {v2, v0}, Lcom/amap/api/mapcore/util/fn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 429
    const-string/jumbo v0, "13S"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fe$a;->c:Lorg/json/JSONObject;

    .line 432
    :cond_14
    const-string/jumbo v0, "121"

    invoke-static {v2, v0}, Lcom/amap/api/mapcore/util/fn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 433
    const-string/jumbo v0, "121"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 434
    new-instance v3, Lcom/amap/api/mapcore/util/fe$a$b;

    invoke-direct {v3}, Lcom/amap/api/mapcore/util/fe$a$b;-><init>()V

    .line 435
    invoke-static {v0, v3}, Lcom/amap/api/mapcore/util/fe;->a(Lorg/json/JSONObject;Lcom/amap/api/mapcore/util/fe$a$b;)V

    .line 436
    iput-object v3, v1, Lcom/amap/api/mapcore/util/fe$a;->t:Lcom/amap/api/mapcore/util/fe$a$b;

    .line 438
    :cond_15
    const-string/jumbo v0, "122"

    invoke-static {v2, v0}, Lcom/amap/api/mapcore/util/fn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 439
    const-string/jumbo v0, "122"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 440
    new-instance v3, Lcom/amap/api/mapcore/util/fe$a$b;

    invoke-direct {v3}, Lcom/amap/api/mapcore/util/fe$a$b;-><init>()V

    .line 441
    invoke-static {v0, v3}, Lcom/amap/api/mapcore/util/fe;->a(Lorg/json/JSONObject;Lcom/amap/api/mapcore/util/fe$a$b;)V

    .line 442
    iput-object v3, v1, Lcom/amap/api/mapcore/util/fe$a;->u:Lcom/amap/api/mapcore/util/fe$a$b;

    .line 445
    :cond_16
    const-string/jumbo v0, "123"

    invoke-static {v2, v0}, Lcom/amap/api/mapcore/util/fn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 446
    const-string/jumbo v0, "123"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 447
    new-instance v2, Lcom/amap/api/mapcore/util/fe$a$b;

    invoke-direct {v2}, Lcom/amap/api/mapcore/util/fe$a$b;-><init>()V

    .line 448
    invoke-static {v0, v2}, Lcom/amap/api/mapcore/util/fe;->a(Lorg/json/JSONObject;Lcom/amap/api/mapcore/util/fe$a$b;)V

    .line 449
    iput-object v2, v1, Lcom/amap/api/mapcore/util/fe$a;->v:Lcom/amap/api/mapcore/util/fe$a$b;

    :cond_17
    move-object v0, v1

    .line 456
    goto/16 :goto_2

    .line 277
    :cond_18
    if-nez v0, :cond_2

    .line 278
    const-string/jumbo v0, "authcsid"

    .line 279
    const-string/jumbo v2, "authgsid"

    .line 280
    if-eqz v4, :cond_1c

    .line 281
    iget-object v3, v4, Lcom/amap/api/mapcore/util/hk;->c:Ljava/lang/String;

    .line 282
    iget-object v0, v4, Lcom/amap/api/mapcore/util/hk;->b:Ljava/util/Map;

    if-eqz v0, :cond_1b

    .line 283
    iget-object v0, v4, Lcom/amap/api/mapcore/util/hk;->b:Ljava/util/Map;

    const-string/jumbo v4, "gsid"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 284
    if-eqz v0, :cond_1b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1b

    .line 285
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v3

    .line 289
    :goto_8
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v0, v3}, Lcom/amap/api/mapcore/util/fn;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const/4 v0, 0x0

    sput v0, Lcom/amap/api/mapcore/util/fe;->a:I

    .line 291
    const-string/jumbo v0, "info"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 292
    const-string/jumbo v0, "info"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/util/fe;->b:Ljava/lang/String;

    .line 294
    :cond_19
    sget v0, Lcom/amap/api/mapcore/util/fe;->a:I

    if-nez v0, :cond_2

    .line 295
    sget-object v0, Lcom/amap/api/mapcore/util/fe;->b:Ljava/lang/String;

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fe$a;->a:Ljava/lang/String;

    move-object v0, v1

    .line 296
    goto/16 :goto_2

    .line 307
    :catch_5
    move-exception v0

    .line 308
    const-string/jumbo v2, "AuthConfigManager"

    const-string/jumbo v3, "loadConfigVer"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_6

    .line 460
    :catch_6
    move-exception v0

    .line 461
    const-string/jumbo v2, "AuthConfigManager"

    const-string/jumbo v3, "loadConfig"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    move-object v0, v1

    .line 466
    goto/16 :goto_2

    .line 328
    :catch_7
    move-exception v0

    .line 329
    :try_start_b
    const-string/jumbo v3, "AuthConfigManager"

    const-string/jumbo v4, "loadException"

    invoke-static {v0, v3, v4}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_7

    .line 258
    :catch_8
    move-exception v0

    move-object v4, v3

    goto/16 :goto_5

    :catch_9
    move-exception v0

    goto/16 :goto_5

    .line 260
    :catch_a
    move-exception v0

    move-object v4, v3

    goto/16 :goto_4

    :catch_b
    move-exception v0

    goto/16 :goto_4

    .line 254
    :catch_c
    move-exception v0

    move-object v4, v3

    goto/16 :goto_3

    :catch_d
    move-exception v0

    goto/16 :goto_3

    :cond_1b
    move-object v0, v2

    move-object v2, v3

    goto :goto_8

    :cond_1c
    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    goto :goto_8

    :cond_1d
    move-object v4, v3

    goto/16 :goto_0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 485
    if-nez p0, :cond_1

    .line 486
    const-string/jumbo v0, ""

    .line 492
    :cond_0
    :goto_0
    return-object v0

    .line 488
    :cond_1
    const-string/jumbo v0, ""

    .line 489
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 490
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Lcom/amap/api/mapcore/util/fe$a$b;)V
    .locals 4

    .prologue
    .line 496
    if-eqz p1, :cond_0

    .line 497
    :try_start_0
    const-string/jumbo v0, "m"

    invoke-static {p0, v0}, Lcom/amap/api/mapcore/util/fe;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 498
    const-string/jumbo v1, "u"

    invoke-static {p0, v1}, Lcom/amap/api/mapcore/util/fe;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 499
    const-string/jumbo v2, "v"

    invoke-static {p0, v2}, Lcom/amap/api/mapcore/util/fe;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 500
    const-string/jumbo v3, "able"

    invoke-static {p0, v3}, Lcom/amap/api/mapcore/util/fe;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 501
    iput-object v0, p1, Lcom/amap/api/mapcore/util/fe$a$b;->c:Ljava/lang/String;

    .line 502
    iput-object v1, p1, Lcom/amap/api/mapcore/util/fe$a$b;->b:Ljava/lang/String;

    .line 503
    iput-object v2, p1, Lcom/amap/api/mapcore/util/fe$a$b;->d:Ljava/lang/String;

    .line 504
    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/amap/api/mapcore/util/fe;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Lcom/amap/api/mapcore/util/fe$a$b;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 507
    :catch_0
    move-exception v0

    .line 508
    const-string/jumbo v1, "ConfigManager"

    const-string/jumbo v2, "parsePluginEntity"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Lcom/amap/api/mapcore/util/fe$a$c;)V
    .locals 3

    .prologue
    .line 515
    if-eqz p0, :cond_0

    .line 517
    :try_start_0
    const-string/jumbo v0, "md5"

    invoke-static {p0, v0}, Lcom/amap/api/mapcore/util/fe;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 519
    const-string/jumbo v1, "url"

    invoke-static {p0, v1}, Lcom/amap/api/mapcore/util/fe;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 520
    iput-object v0, p1, Lcom/amap/api/mapcore/util/fe$a$c;->b:Ljava/lang/String;

    .line 521
    iput-object v1, p1, Lcom/amap/api/mapcore/util/fe$a$c;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 523
    :catch_0
    move-exception v0

    .line 524
    const-string/jumbo v1, "ConfigManager"

    const-string/jumbo v2, "parseSDKCoordinate"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Lcom/amap/api/mapcore/util/fe$a$d;)V
    .locals 4

    .prologue
    .line 532
    if-eqz p0, :cond_0

    .line 534
    :try_start_0
    const-string/jumbo v0, "md5"

    invoke-static {p0, v0}, Lcom/amap/api/mapcore/util/fe;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 535
    const-string/jumbo v1, "url"

    invoke-static {p0, v1}, Lcom/amap/api/mapcore/util/fe;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 536
    const-string/jumbo v2, "sdkversion"

    invoke-static {p0, v2}, Lcom/amap/api/mapcore/util/fe;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 538
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 539
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    iput-object v1, p1, Lcom/amap/api/mapcore/util/fe$a$d;->a:Ljava/lang/String;

    .line 543
    iput-object v0, p1, Lcom/amap/api/mapcore/util/fe$a$d;->b:Ljava/lang/String;

    .line 544
    iput-object v2, p1, Lcom/amap/api/mapcore/util/fe$a$d;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 550
    :catch_0
    move-exception v0

    .line 551
    const-string/jumbo v1, "ConfigManager"

    const-string/jumbo v2, "parseSDKUpdate"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 202
    :try_start_0
    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 203
    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 204
    array-length v2, v1

    .line 205
    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    .line 206
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 207
    rem-int/lit8 v1, v1, 0x2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v0, :cond_0

    move p1, v0

    .line 209
    :goto_0
    return p1

    .line 207
    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    goto :goto_0
.end method
