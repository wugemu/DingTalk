.class public final Lhum;
.super Ljava/lang/Object;
.source "BizRequest.java"


# static fields
.field static a:Z

.field static b:Ljava/lang/String;

.field private static c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lhum;->a:Z

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lhum;->b:Ljava/lang/String;

    .line 39
    const-wide/16 v0, 0x0

    sput-wide v0, Lhum;->c:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a([B)I
    .locals 12
    .param p0, "result"    # [B

    .prologue
    const/4 v11, 0x1

    const/16 v10, 0xc

    const/4 v7, 0x0

    .line 167
    if-eqz p0, :cond_0

    array-length v8, p0

    if-ge v8, v10, :cond_1

    .line 168
    :cond_0
    const/4 v0, -0x1

    .line 169
    .local v0, "errCode":I
    const-string/jumbo v7, "recv errCode UNKNOWN_ERROR"

    .line 4029
    const-string/jumbo v8, "RestApi"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "errCode:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    return v0

    .line 171
    .end local v0    # "errCode":I
    :cond_1
    array-length v8, p0

    int-to-long v8, v8

    sput-wide v8, Lhum;->c:J

    .line 172
    const/4 v8, 0x3

    invoke-static {p0, v11, v8}, Lhuv;->a([BII)I

    move-result v4

    .line 173
    .local v4, "len":I
    add-int/lit8 v8, v4, 0x8

    array-length v9, p0

    if-eq v8, v9, :cond_2

    .line 175
    const/4 v0, -0x1

    .line 176
    .restart local v0    # "errCode":I
    const-string/jumbo v7, "recv len error"

    .line 5029
    const-string/jumbo v8, "RestApi"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    .end local v0    # "errCode":I
    :cond_2
    const/4 v8, 0x5

    aget-byte v1, p0, v8

    .line 179
    .local v1, "flags":B
    const/4 v2, 0x0

    .line 180
    .local v2, "gzip":Z
    and-int/lit8 v8, v1, 0x1

    if-ne v11, v8, :cond_3

    .line 181
    const/4 v2, 0x1

    .line 183
    :cond_3
    const/16 v8, 0x8

    const/4 v9, 0x4

    invoke-static {p0, v8, v9}, Lhuv;->a([BII)I

    move-result v0

    .line 184
    .restart local v0    # "errCode":I
    array-length v8, p0

    add-int/lit8 v8, v8, -0xc

    if-ltz v8, :cond_4

    array-length v8, p0

    add-int/lit8 v3, v8, -0xc

    .line 185
    .local v3, "leftLen":I
    :goto_1
    if-lez v3, :cond_6

    .line 186
    if-eqz v2, :cond_5

    .line 187
    new-array v5, v3, [B

    .line 188
    .local v5, "rawData":[B
    invoke-static {p0, v10, v5, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    invoke-static {v5}, Lhux;->b([B)[B

    move-result-object v6

    .line 190
    .local v6, "unGzipData":[B
    new-instance v8, Ljava/lang/String;

    array-length v9, v6

    invoke-direct {v8, v6, v7, v9}, Ljava/lang/String;-><init>([BII)V

    sput-object v8, Lhum;->b:Ljava/lang/String;

    goto :goto_0

    .end local v3    # "leftLen":I
    .end local v5    # "rawData":[B
    .end local v6    # "unGzipData":[B
    :cond_4
    move v3, v7

    .line 184
    goto :goto_1

    .line 192
    .restart local v3    # "leftLen":I
    :cond_5
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p0, v10, v3}, Ljava/lang/String;-><init>([BII)V

    sput-object v7, Lhum;->b:Ljava/lang/String;

    goto :goto_0

    .line 195
    :cond_6
    const/4 v7, 0x0

    sput-object v7, Lhum;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "appKey"    # Ljava/lang/String;
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    .line 137
    invoke-static {}, Lhul;->a()Lhul;

    move-result-object v7

    iget-object v0, v7, Lhul;->e:Ljava/lang/String;

    .line 138
    .local v0, "appVersion":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 139
    const-string/jumbo v0, ""

    .line 142
    :cond_0
    const-string/jumbo v1, "Unknown"

    .line 144
    .local v1, "appVersionSys":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 145
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    invoke-static {}, Lhul;->a()Lhul;

    move-result-object v7

    iget-object v2, v7, Lhul;->f:Ljava/lang/String;

    .line 151
    .local v2, "channel":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 152
    const-string/jumbo v2, ""

    .line 154
    :cond_1
    invoke-static {p1}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 156
    .local v6, "utdid":Ljava/lang/String;
    const-string/jumbo v5, "6.5.1.3"

    .line 158
    .local v5, "sdkVersion":Ljava/lang/String;
    const-string/jumbo v7, "ak=%s&av=%s&avsys=%s&c=%s&d=%s&sv=%s"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p0, v8, v10

    const/4 v9, 0x1

    aput-object v0, v8, v9

    const/4 v9, 0x2

    aput-object v1, v8, v9

    const/4 v9, 0x3

    aput-object v2, v8, v9

    const/4 v9, 0x4

    aput-object v6, v8, v9

    const/4 v9, 0x5

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "head":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "send url :"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    return-object v3

    .end local v2    # "channel":Ljava/lang/String;
    .end local v3    # "head":Ljava/lang/String;
    .end local v5    # "sdkVersion":Ljava/lang/String;
    .end local v6    # "utdid":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)[B
    .locals 1
    .param p0, "appKey"    # Ljava/lang/String;
    .param p1, "aContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    .local p2, "eventMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lhum;->a(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;I)[B

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;I)[B
    .locals 9
    .param p0, "appKey"    # Ljava/lang/String;
    .param p1, "aContext"    # Landroid/content/Context;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "eventMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 64
    invoke-static {p0, p1, p2}, Lhum;->b(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)[B

    move-result-object v5

    invoke-static {v5}, Lhux;->a([B)[B

    move-result-object v4

    .line 68
    .local v4, "payload":[B
    if-eqz v4, :cond_0

    array-length v5, v4

    const/high16 v6, 0x1000000

    if-lt v5, v6, :cond_1

    .line 69
    :cond_0
    const/4 v1, 0x0

    .line 97
    :goto_0
    return-object v1

    .line 72
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 73
    .local v0, "baosRequest":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 74
    array-length v5, v4

    .line 1090
    const/4 v6, 0x3

    new-array v2, v6, [B

    .line 1091
    shr-int/lit8 v6, v5, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v7

    .line 1092
    shr-int/lit8 v6, v5, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v8

    .line 1093
    const/4 v6, 0x2

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v6

    .line 75
    .local v2, "bytelen":[B
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 76
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 85
    const/16 v5, 0x9

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 87
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 88
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 89
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 91
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 93
    .local v1, "buf":[B
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v3

    .line 95
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2029
    const-string/jumbo v6, "RestApi"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)[B
    .locals 12
    .param p0, "appKey"    # Ljava/lang/String;
    .param p1, "aContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "eventMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 101
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 102
    .local v0, "baosPayload":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, p1}, Lhum;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, "head":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 104
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    array-length v9, v9

    invoke-static {v9}, Lhuv;->a(I)[B

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 105
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 110
    :goto_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 111
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 112
    .local v6, "key":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 113
    .local v3, "eventId":I
    invoke-static {v3}, Lhuv;->b(I)[B

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 114
    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 115
    .local v4, "eventLogs":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 116
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    array-length v7, v10

    .line 117
    .local v7, "logLength":I
    invoke-static {v7}, Lhuv;->b(I)[B

    move-result-object v8

    .line 118
    .local v8, "logLengthByte":[B
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 119
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1

    .line 107
    .end local v3    # "eventId":I
    .end local v4    # "eventLogs":Ljava/lang/String;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "logLength":I
    .end local v8    # "logLengthByte":[B
    :cond_0
    invoke-static {v11}, Lhuv;->a(I)[B

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 121
    .restart local v3    # "eventId":I
    .restart local v4    # "eventLogs":Ljava/lang/String;
    .restart local v6    # "key":Ljava/lang/String;
    :cond_1
    invoke-static {v11}, Lhuv;->b(I)[B

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1

    .line 126
    .end local v3    # "eventId":I
    .end local v4    # "eventLogs":Ljava/lang/String;
    .end local v6    # "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 128
    .local v1, "buf":[B
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_2
    return-object v1

    .line 129
    :catch_0
    move-exception v2

    .line 130
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3029
    const-string/jumbo v10, "RestApi"

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
