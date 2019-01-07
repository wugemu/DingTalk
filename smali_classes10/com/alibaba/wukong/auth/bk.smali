.class public Lcom/alibaba/wukong/auth/bk;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# static fields
.field private static bT:Ljava/lang/String;

.field private static bU:Z

.field private static bV:Ljava/lang/String;

.field private static final digits:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/wukong/auth/bk;->bT:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/wukong/auth/bk;->bU:Z

    .line 33
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alibaba/wukong/auth/bk;->bV:Ljava/lang/String;

    .line 203
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alibaba/wukong/auth/bk;->digits:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x2bs
        0x2fs
    .end array-data
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-static {}, Lcom/alibaba/wukong/auth/j;->e()Lcom/alibaba/wukong/auth/j;

    move-result-object v4

    const-string/jumbo v5, "DD_CS_ANDROID_FF"

    invoke-virtual {v4, v5}, Lcom/alibaba/wukong/auth/j;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "source":Ljava/lang/String;
    invoke-static {v3}, Lcom/alibaba/wukong/auth/bl;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "deviceId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 52
    invoke-static {v0}, Lcom/alibaba/wukong/auth/bk;->l(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .local v2, "msg":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "[Base] did illegal sp, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " source "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string/jumbo v4, "[TAG] Device"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "base"

    invoke-static {v4, v5, v6}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget-boolean v4, Lcom/alibaba/wukong/auth/bk;->bU:Z

    if-nez v4, :cond_0

    .line 57
    const/4 v4, 0x1

    sput-boolean v4, Lcom/alibaba/wukong/auth/bk;->bU:Z

    .line 58
    invoke-static {p0}, Lcom/alibaba/wukong/auth/bk;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/alibaba/wukong/auth/bk;->k(Ljava/lang/String;)V

    move-object v1, v0

    .line 67
    .end local v0    # "deviceId":Ljava/lang/String;
    .end local v2    # "msg":Ljava/lang/StringBuilder;
    .local v1, "deviceId":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 63
    .end local v1    # "deviceId":Ljava/lang/String;
    .restart local v0    # "deviceId":Ljava/lang/String;
    :cond_0
    sput-object v0, Lcom/alibaba/wukong/auth/bk;->bT:Ljava/lang/String;

    move-object v1, v0

    .end local v0    # "deviceId":Ljava/lang/String;
    .restart local v1    # "deviceId":Ljava/lang/String;
    goto :goto_0

    .line 65
    .end local v1    # "deviceId":Ljava/lang/String;
    .restart local v0    # "deviceId":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/alibaba/wukong/auth/bk;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/alibaba/wukong/auth/bk;->k(Ljava/lang/String;)V

    move-object v1, v0

    .line 67
    .end local v0    # "deviceId":Ljava/lang/String;
    .restart local v1    # "deviceId":Ljava/lang/String;
    goto :goto_0
.end method

.method private static a(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "src"    # [B
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 142
    const-string/jumbo v3, "HmacSHA1"

    invoke-static {v3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 143
    .local v0, "mac":Ljavax/crypto/Mac;
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 144
    .local v2, "sk":Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 145
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    .line 146
    .local v1, "result":[B
    const/4 v3, 0x2

    invoke-static {v1, v3}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "newDid"    # Ljava/lang/String;

    .prologue
    .line 80
    const-class v3, Lcom/alibaba/wukong/auth/bk;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Lcom/alibaba/wukong/auth/bk;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "curDid":Ljava/lang/String;
    const/4 v2, 0x0

    sput-object v2, Lcom/alibaba/wukong/auth/bk;->bT:Ljava/lang/String;

    .line 82
    invoke-static {}, Lcom/alibaba/wukong/auth/j;->e()Lcom/alibaba/wukong/auth/j;

    move-result-object v2

    const-string/jumbo v4, "DD_CS_ANDROID_FF"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/wukong/auth/j;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, -0x1

    .line 85
    .local v1, "index":I
    :goto_0
    if-lez v1, :cond_0

    .line 86
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/alibaba/wukong/auth/bk;->b(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 90
    .end local v1    # "index":I
    :cond_1
    invoke-static {p1}, Lcom/alibaba/wukong/auth/bk;->k(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit v3

    return-void

    .line 84
    :cond_2
    :try_start_1
    const-string/jumbo v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 80
    .end local v0    # "curDid":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static b(J)Ljava/lang/String;
    .locals 6
    .param p0, "number"    # J

    .prologue
    .line 192
    const/16 v2, 0x40

    new-array v0, v2, [C

    .line 193
    .local v0, "buf":[C
    const/16 v1, 0x40

    .line 197
    .local v1, "charPos":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/alibaba/wukong/auth/bk;->digits:[C

    const-wide/16 v4, 0x3f

    and-long/2addr v4, p0

    long-to-int v3, v4

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 198
    const/4 v2, 0x6

    ushr-long/2addr p0, v2

    .line 199
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-nez v2, :cond_0

    .line 200
    new-instance v2, Ljava/lang/String;

    rsub-int/lit8 v3, v1, 0x40

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method private static b(I)[B
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 182
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 184
    .local v0, "result":[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 185
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 186
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 187
    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 188
    return-object v0
.end method

.method private static b(Landroid/content/Context;)[B
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 120
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 121
    .local v4, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    long-to-int v7, v10

    .line 122
    .local v7, "timestamp":I
    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    invoke-virtual {v9}, Ljava/util/Random;->nextInt()I

    move-result v8

    .line 125
    .local v8, "uniqueID":I
    invoke-static {v7}, Lcom/alibaba/wukong/auth/bk;->b(I)[B

    move-result-object v2

    .line 126
    .local v2, "bTimestamp":[B
    invoke-static {v8}, Lcom/alibaba/wukong/auth/bk;->b(I)[B

    move-result-object v3

    .line 127
    .local v3, "bUniqueID":[B
    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-virtual {v4, v2, v9, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 128
    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-virtual {v4, v3, v9, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 129
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 130
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 131
    invoke-static {p0}, Lcom/alibaba/wukong/auth/bk;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 132
    .local v6, "imei":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-static {v9}, Lcom/alibaba/wukong/auth/bk;->b(I)[B

    move-result-object v1

    .line 133
    .local v1, "bHashCode":[B
    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-virtual {v4, v1, v9, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 134
    const-string/jumbo v9, "d6fc3a4a03adbde89223bvefedc12fecde188aaa2013"

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alibaba/wukong/auth/bk;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, "hmac":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-static {v9}, Lcom/alibaba/wukong/auth/bk;->b(I)[B

    move-result-object v0

    .line 136
    .local v0, "bCheckSum":[B
    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 137
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    return-object v9
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method public static declared-synchronized getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 41
    const-class v1, Lcom/alibaba/wukong/auth/bk;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/wukong/auth/bk;->bT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    sget-object v0, Lcom/alibaba/wukong/auth/bk;->bT:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :goto_0
    monitor-exit v1

    return-object v0

    .line 44
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/alibaba/wukong/auth/bk;->c(Landroid/content/Context;)Z

    .line 45
    invoke-static {p0}, Lcom/alibaba/wukong/auth/bk;->a(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    const/4 v1, 0x0

    .line 152
    .local v1, "imei":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 153
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 157
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    invoke-static {}, Lcom/alibaba/wukong/auth/bk;->getUniqueID()Ljava/lang/String;

    move-result-object v1

    .line 160
    :cond_0
    return-object v1

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getUniqueID()Ljava/lang/String;
    .locals 16
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v15, 0x4

    const/4 v14, 0x0

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    long-to-int v5, v10

    .line 166
    .local v5, "t1":I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    long-to-int v6, v10

    .line 167
    .local v6, "t2":I
    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    invoke-virtual {v9}, Ljava/util/Random;->nextInt()I

    move-result v7

    .line 168
    .local v7, "t3":I
    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    invoke-virtual {v9}, Ljava/util/Random;->nextInt()I

    move-result v8

    .line 169
    .local v8, "t4":I
    invoke-static {v5}, Lcom/alibaba/wukong/auth/bk;->b(I)[B

    move-result-object v0

    .line 170
    .local v0, "b1":[B
    invoke-static {v6}, Lcom/alibaba/wukong/auth/bk;->b(I)[B

    move-result-object v1

    .line 171
    .local v1, "b2":[B
    invoke-static {v7}, Lcom/alibaba/wukong/auth/bk;->b(I)[B

    move-result-object v2

    .line 172
    .local v2, "b3":[B
    invoke-static {v8}, Lcom/alibaba/wukong/auth/bk;->b(I)[B

    move-result-object v3

    .line 173
    .local v3, "b4":[B
    const/16 v9, 0x10

    new-array v4, v9, [B

    .line 174
    .local v4, "bUniqueID":[B
    invoke-static {v0, v14, v4, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    invoke-static {v1, v14, v4, v15, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    const/16 v9, 0x8

    invoke-static {v2, v14, v4, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    const/16 v9, 0xc

    invoke-static {v3, v14, v4, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    const/4 v9, 0x2

    invoke-static {v4, v9}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method private static getUtdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    const/4 v2, 0x0

    .line 96
    .local v2, "val":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/ta/utdid2/device/UTUtdid;->instance(Landroid/content/Context;)Lcom/ta/utdid2/device/UTUtdid;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ta/utdid2/device/UTUtdid;->getValue()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 100
    :goto_0
    invoke-static {v2}, Lcom/alibaba/wukong/auth/bk;->l(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 101
    const-string/jumbo v3, "[TAG] Device"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[Base] did illegal utdid, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "base"

    invoke-static {v3, v4, v5}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :try_start_1
    invoke-static {p0}, Lcom/alibaba/wukong/auth/bk;->b(Landroid/content/Context;)[B

    move-result-object v0

    .line 104
    .local v0, "d":[B
    const/4 v3, 0x2

    invoke-static {v0, v3}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-static {v2}, Lcom/alibaba/wukong/auth/bk;->l(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 106
    const-string/jumbo v3, "[TAG] Device"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[Base] did character gen, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "base"

    invoke-static {v3, v4, v5}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    .end local v0    # "d":[B
    :cond_0
    :goto_1
    sget-object v3, Lcom/alibaba/wukong/auth/bk;->bV:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/alibaba/wukong/auth/bk;->bV:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 115
    .end local v2    # "val":Ljava/lang/String;
    :cond_1
    return-object v2

    .line 97
    .restart local v2    # "val":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 108
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static k(Ljava/lang/String;)V
    .locals 3
    .param p0, "did"    # Ljava/lang/String;

    .prologue
    .line 72
    :try_start_0
    sput-object p0, Lcom/alibaba/wukong/auth/bk;->bT:Ljava/lang/String;

    .line 73
    invoke-static {p0}, Lcom/alibaba/wukong/auth/bl;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "encDid":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/wukong/auth/j;->e()Lcom/alibaba/wukong/auth/j;

    move-result-object v1

    const-string/jumbo v2, "DD_CS_ANDROID_FF"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/wukong/auth/j;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v0    # "encDid":Ljava/lang/String;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static l(Ljava/lang/String;)Z
    .locals 1
    .param p0, "did"    # Ljava/lang/String;

    .prologue
    .line 245
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    const/4 v0, 0x0

    .line 248
    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "[\\w+/=-]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static setDeviceIdExtension(Ljava/lang/String;)V
    .locals 0
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 36
    sput-object p0, Lcom/alibaba/wukong/auth/bk;->bV:Ljava/lang/String;

    .line 37
    return-void
.end method
