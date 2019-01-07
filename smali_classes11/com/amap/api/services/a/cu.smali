.class public abstract Lcom/amap/api/services/a/cu;
.super Lcom/amap/api/services/a/cz;
.source "BinaryRequest.java"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/amap/api/services/a/be;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/a/be;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/amap/api/services/a/cz;-><init>()V

    .line 37
    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/cu;->a:Landroid/content/Context;

    .line 40
    :cond_0
    iput-object p2, p0, Lcom/amap/api/services/a/cu;->b:Lcom/amap/api/services/a/be;

    .line 42
    return-void
.end method

.method private m()[B
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 99
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 101
    :try_start_0
    const-string/jumbo v0, "PANDORA$"

    invoke-static {v0}, Lcom/amap/api/services/a/bf;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 103
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 105
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-byte v3, v0, v2

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 107
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-byte v3, v0, v2

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 108
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 113
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 118
    :goto_0
    return-object v0

    .line 114
    :catch_0
    move-exception v1

    .line 115
    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getBinaryHead"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :catch_1
    move-exception v0

    .line 110
    :try_start_2
    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getBinaryHead"

    invoke-static {v0, v2, v3}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 118
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 114
    :catch_2
    move-exception v0

    .line 115
    const-string/jumbo v1, "BinaryRequest"

    const-string/jumbo v2, "getBinaryHead"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 112
    :catchall_0
    move-exception v0

    .line 113
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 116
    :goto_2
    throw v0

    .line 114
    :catch_3
    move-exception v1

    .line 115
    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getBinaryHead"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private n()[B
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 203
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 205
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/services/a/cu;->a()[B

    move-result-object v0

    .line 206
    if-eqz v0, :cond_0

    array-length v2, v0

    if-nez v2, :cond_1

    .line 207
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-byte v3, v0, v2

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 208
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 220
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 226
    :goto_0
    return-object v0

    .line 221
    :catch_0
    move-exception v1

    .line 222
    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getRequestRawData"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_1
    const/4 v2, 0x1

    :try_start_2
    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-byte v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 211
    invoke-virtual {p0, v0}, Lcom/amap/api/services/a/cu;->a([B)[B

    move-result-object v2

    .line 212
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 213
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 214
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 220
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 221
    :catch_1
    move-exception v1

    .line 222
    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getRequestRawData"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :catch_2
    move-exception v0

    .line 217
    :try_start_4
    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getRequestRawData"

    invoke-static {v0, v2, v3}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 220
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 226
    :goto_1
    new-array v0, v6, [B

    aput-byte v5, v0, v5

    goto :goto_0

    .line 221
    :catch_3
    move-exception v0

    .line 222
    const-string/jumbo v1, "BinaryRequest"

    const-string/jumbo v2, "getRequestRawData"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 219
    :catchall_0
    move-exception v0

    .line 220
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 223
    :goto_2
    throw v0

    .line 221
    :catch_4
    move-exception v1

    .line 222
    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getRequestRawData"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private o()[B
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 233
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 235
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/services/a/cu;->d()[B

    move-result-object v0

    .line 236
    if-eqz v0, :cond_0

    array-length v2, v0

    if-nez v2, :cond_1

    .line 237
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-byte v3, v0, v2

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 238
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 251
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 256
    :goto_0
    return-object v0

    .line 252
    :catch_0
    move-exception v1

    .line 253
    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getRequestEncryptData"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :cond_1
    const/4 v2, 0x1

    :try_start_2
    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-byte v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 241
    iget-object v2, p0, Lcom/amap/api/services/a/cu;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/amap/api/services/a/az;->a(Landroid/content/Context;[B)[B

    move-result-object v0

    .line 242
    invoke-virtual {p0, v0}, Lcom/amap/api/services/a/cu;->a([B)[B

    move-result-object v2

    .line 244
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 245
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 246
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 251
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 252
    :catch_1
    move-exception v1

    .line 253
    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getRequestEncryptData"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :catch_2
    move-exception v0

    .line 248
    :try_start_4
    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getRequestEncryptData"

    invoke-static {v0, v2, v3}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 251
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 256
    :goto_1
    new-array v0, v6, [B

    aput-byte v5, v0, v5

    goto :goto_0

    .line 252
    :catch_3
    move-exception v0

    .line 253
    const-string/jumbo v1, "BinaryRequest"

    const-string/jumbo v2, "getRequestEncryptData"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 250
    :catchall_0
    move-exception v0

    .line 251
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 254
    :goto_2
    throw v0

    .line 252
    :catch_4
    move-exception v1

    .line 253
    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getRequestEncryptData"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public abstract a()[B
.end method

.method protected a([B)[B
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 194
    array-length v0, p1

    .line 195
    div-int/lit16 v1, v0, 0x100

    int-to-byte v1, v1

    .line 196
    rem-int/lit16 v0, v0, 0x100

    int-to-byte v0, v0

    .line 197
    const/4 v2, 0x2

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v1, v2, v3

    const/4 v1, 0x1

    aput-byte v0, v2, v1

    return-object v2
.end method

.method public b()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amap/api/services/a/cu;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/aw;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {}, Lcom/amap/api/services/a/az;->a()Ljava/lang/String;

    move-result-object v1

    .line 56
    iget-object v2, p0, Lcom/amap/api/services/a/cu;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "key="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/amap/api/services/a/az;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 58
    const-string/jumbo v4, "ts"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string/jumbo v1, "key"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string/jumbo v0, "scode"

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-object v3
.end method

.method public abstract d()[B
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    const-string/jumbo v0, "2.1"

    return-object v0
.end method

.method public final f()[B
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 73
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/services/a/cu;->m()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 74
    invoke-virtual {p0}, Lcom/amap/api/services/a/cu;->i()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 75
    invoke-direct {p0}, Lcom/amap/api/services/a/cu;->n()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 76
    invoke-direct {p0}, Lcom/amap/api/services/a/cu;->o()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 77
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 87
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    :goto_0
    return-object v0

    .line 88
    :catch_0
    move-exception v1

    .line 89
    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getEntityBytes"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :catch_1
    move-exception v0

    .line 84
    :try_start_2
    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getEntityBytes"

    invoke-static {v0, v2, v3}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 94
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 88
    :catch_2
    move-exception v0

    .line 89
    const-string/jumbo v1, "BinaryRequest"

    const-string/jumbo v2, "getEntityBytes"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 90
    :goto_2
    throw v0

    .line 88
    :catch_3
    move-exception v1

    .line 89
    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getEntityBytes"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method public i()[B
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 124
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 127
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x3

    aput-byte v3, v0, v2

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 128
    invoke-virtual {p0}, Lcom/amap/api/services/a/cu;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/amap/api/services/a/cu;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/amap/api/services/a/az;->a(Landroid/content/Context;Z)[B

    move-result-object v0

    .line 130
    invoke-virtual {p0, v0}, Lcom/amap/api/services/a/cu;->a([B)[B

    move-result-object v2

    .line 132
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 133
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 139
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/services/a/cu;->e()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {v0}, Lcom/amap/api/services/a/bf;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 141
    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    .line 142
    invoke-virtual {p0, v0}, Lcom/amap/api/services/a/cu;->a([B)[B

    move-result-object v2

    .line 143
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 144
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 149
    :goto_1
    invoke-virtual {p0}, Lcom/amap/api/services/a/cu;->j()Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {v0}, Lcom/amap/api/services/a/bf;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 153
    if-eqz v0, :cond_2

    array-length v2, v0

    if-lez v2, :cond_2

    .line 154
    invoke-virtual {p0, v0}, Lcom/amap/api/services/a/cu;->a([B)[B

    move-result-object v2

    .line 155
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 156
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 162
    :goto_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 167
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 172
    :goto_3
    return-object v0

    .line 135
    :cond_0
    const/4 v0, 0x2

    :try_start_2
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    :try_start_3
    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getPublicData"

    invoke-static {v0, v2, v3}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 167
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 172
    :goto_4
    new-array v0, v5, [B

    aput-byte v4, v0, v4

    goto :goto_3

    .line 146
    :cond_1
    const/4 v0, 0x2

    :try_start_5
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 166
    :catchall_0
    move-exception v0

    .line 167
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 170
    :goto_5
    throw v0

    .line 158
    :cond_2
    const/4 v0, 0x2

    :try_start_7
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 168
    :catch_1
    move-exception v1

    .line 169
    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getRequestEncryptData"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 168
    :catch_2
    move-exception v0

    .line 169
    const-string/jumbo v1, "BinaryRequest"

    const-string/jumbo v2, "getRequestEncryptData"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 168
    :catch_3
    move-exception v1

    .line 169
    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getRequestEncryptData"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 135
    .line 146
    .line 158
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public j()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 179
    const-string/jumbo v0, "platform=Android&sdkversion=%s&product=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amap/api/services/a/cu;->b:Lcom/amap/api/services/a/be;

    .line 181
    invoke-virtual {v3}, Lcom/amap/api/services/a/be;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/amap/api/services/a/cu;->b:Lcom/amap/api/services/a/be;

    invoke-virtual {v3}, Lcom/amap/api/services/a/be;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 179
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
