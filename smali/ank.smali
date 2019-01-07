.class public final Lank;
.super Ljava/lang/Object;
.source "ZipDictUtils.java"


# static fields
.field private static a:I

.field private static b:I

.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    sput v0, Lank;->a:I

    .line 19
    sput v0, Lank;->b:I

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lank;->c:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()V
    .locals 2

    .prologue
    .line 97
    const-class v1, Lank;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lank;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 98
    const/4 v0, 0x0

    sput v0, Lank;->a:I

    .line 99
    const/4 v0, 0x0

    sput v0, Lank;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit v1

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(I)[B
    .locals 1
    .param p0, "length"    # I

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lank;->a(II)[B

    move-result-object v0

    return-object v0
.end method

.method private static a(II)[B
    .locals 9
    .param p0, "n"    # I
    .param p1, "length"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 108
    rsub-int/lit8 v5, p0, 0x8

    shl-int v5, v8, v5

    int-to-byte v0, v5

    .line 109
    .local v0, "b":B
    rsub-int/lit8 v5, p0, 0x8

    shl-int v5, v8, v5

    add-int/lit8 v3, v5, -0x1

    .line 110
    .local v3, "x":I
    if-ge p1, v3, :cond_0

    .line 111
    or-int v6, p1, v0

    .line 1073
    new-array v5, v8, [B

    .line 1074
    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v7

    .line 125
    :goto_0
    return-object v5

    .line 113
    :cond_0
    const/4 v5, 0x4

    new-array v2, v5, [B

    .line 114
    .local v2, "tempbyte":[B
    or-int v5, v3, v0

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v7

    .line 115
    sub-int/2addr p1, v3

    .line 116
    const/4 v1, 0x1

    .line 117
    .local v1, "i":I
    :goto_1
    const/16 v5, 0x80

    if-lt p1, v5, :cond_1

    .line 118
    rem-int/lit16 v4, p1, 0x80

    .line 119
    .local v4, "y":I
    or-int/lit16 v5, v4, 0x80

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v1

    .line 120
    div-int/lit16 p1, p1, 0x80

    .line 121
    add-int/lit8 v1, v1, 0x1

    .line 122
    goto :goto_1

    .line 123
    .end local v4    # "y":I
    :cond_1
    and-int/lit8 v5, p1, 0x7f

    int-to-byte v5, v5

    aput-byte v5, v2, v1

    .line 124
    add-int/lit8 v1, v1, 0x1

    .line 125
    invoke-static {v2, v7, v1}, Lamo;->b([BII)[B

    move-result-object v5

    goto :goto_0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)[B
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    const-class v0, Lank;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, v1}, Lank;->a(Ljava/lang/String;Z)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized a(Ljava/lang/String;Z)[B
    .locals 8
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "isHead"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    const-class v6, Lank;

    monitor-enter v6

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 32
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, p1}, Lank;->b(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 33
    sget-object v5, Lank;->c:Ljava/util/HashMap;

    invoke-virtual {v5, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .local v4, "value":Ljava/lang/String;
    const/4 v3, -0x1

    .line 36
    .local v3, "index":I
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 40
    :goto_0
    if-ltz v3, :cond_0

    .line 41
    const/4 v5, 0x1

    :try_start_2
    invoke-static {v5, v3}, Lank;->a(II)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 57
    .end local v3    # "index":I
    .end local v4    # "value":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 59
    .local v1, "buf":[B
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 64
    :goto_2
    monitor-exit v6

    return-object v1

    .line 43
    .end local v1    # "buf":[B
    .restart local v3    # "index":I
    .restart local v4    # "value":Ljava/lang/String;
    :cond_0
    :try_start_4
    invoke-static {p0}, Lank;->c(Ljava/lang/String;)V

    .line 45
    const/4 v5, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    invoke-static {v5, v7}, Lank;->a(II)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 31
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "index":I
    .end local v4    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 49
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_1
    :try_start_5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 50
    const/4 v5, 0x3

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lank;->a(II)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1

    .line 52
    :cond_2
    const/4 v5, 0x3

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    invoke-static {v5, v7}, Lank;->a(II)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 53
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1

    .line 60
    .restart local v1    # "buf":[B
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .end local v1    # "buf":[B
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "index":I
    .restart local v4    # "value":Ljava/lang/String;
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method private static declared-synchronized b(Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "isHead"    # Z

    .prologue
    const/4 v0, 0x0

    .line 69
    const-class v1, Lank;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    :cond_0
    :goto_0
    monitor-exit v1

    return v0

    .line 73
    :cond_1
    if-eqz p1, :cond_3

    .line 74
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x400

    if-gt v2, v3, :cond_0

    .line 83
    :cond_2
    sget v2, Lank;->a:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    const v3, 0x8000

    if-gt v2, v3, :cond_0

    .line 87
    const/4 v0, 0x1

    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    const/16 v3, 0x100

    if-le v2, v3, :cond_2

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Ljava/lang/String;)[B
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    const-class v0, Lank;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lank;->a(Ljava/lang/String;Z)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized c(Ljava/lang/String;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 91
    const-class v1, Lank;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lank;->c:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lank;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget v0, Lank;->a:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    sput v0, Lank;->a:I

    .line 93
    sget v0, Lank;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lank;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit v1

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
