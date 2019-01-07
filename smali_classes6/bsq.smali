.class public final Lbsq;
.super Ljava/lang/Object;
.source "BasicProtocol.java"


# static fields
.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/Object;

.field b:[B

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    sput-object v0, Lbsq;->c:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lbsq;->c:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lbsq;->c:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/dingbox/btinterface/BleInterface$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lbsq;->c:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 9
    .param p1, "msg"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v6, p0, Lbsq;->d:I

    .line 46
    const/4 v1, 0x0

    .line 47
    .local v1, "byteObject":[B
    :try_start_0
    iput p1, p0, Lbsq;->d:I

    .line 48
    iput-object p2, p0, Lbsq;->a:Ljava/lang/Object;

    .line 49
    iget-object v5, p0, Lbsq;->a:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 50
    iget-object v5, p0, Lbsq;->a:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 51
    iget-object v5, p0, Lbsq;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 58
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    array-length v5, v1

    :goto_1
    add-int/lit8 v3, v5, 0x5

    .line 1119
    .local v3, "length":I
    const/4 v5, 0x4

    new-array v0, v5, [B

    .line 1120
    const/4 v5, 0x0

    shr-int/lit8 v6, v3, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 1121
    const/4 v5, 0x1

    shr-int/lit8 v6, v3, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 1122
    const/4 v5, 0x2

    shr-int/lit8 v6, v3, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 1123
    const/4 v5, 0x3

    and-int/lit16 v6, v3, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 60
    .local v0, "byLength":[B
    new-array v5, v3, [B

    iput-object v5, p0, Lbsq;->b:[B

    .line 61
    const/4 v5, 0x0

    iget-object v6, p0, Lbsq;->b:[B

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-static {v0, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iget-object v5, p0, Lbsq;->b:[B

    const/4 v6, 0x4

    int-to-byte v7, p1

    aput-byte v7, v5, v6

    .line 63
    const/4 v5, 0x0

    iget-object v6, p0, Lbsq;->b:[B

    const/4 v7, 0x5

    add-int/lit8 v8, v3, -0x5

    invoke-static {v1, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    .end local v0    # "byLength":[B
    .end local v3    # "length":I
    :goto_2
    return-void

    .line 53
    :cond_1
    new-instance v4, Liyp;

    invoke-direct {v4}, Liyp;-><init>()V

    .line 54
    .local v4, "writer":Liyp;
    invoke-virtual {v4, p2}, Liyp;->a(Ljava/lang/Object;)V

    .line 1032
    iget-object v5, v4, Liyp;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 55
    goto :goto_0

    .end local v4    # "writer":Liyp;
    :cond_2
    move v5, v6

    .line 58
    goto :goto_1

    .line 65
    :catch_0
    move-exception v2

    .line 66
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public constructor <init>([B)V
    .locals 8
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v5, p0, Lbsq;->d:I

    .line 71
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 75
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    iput-object p1, p0, Lbsq;->b:[B

    .line 76
    iget-object v4, p0, Lbsq;->b:[B

    invoke-static {v4, v5, v6}, Lbsr;->a([BII)I

    move-result v3

    .line 77
    .local v3, "length":I
    array-length v4, p1

    if-eq v3, v4, :cond_0

    .line 95
    :goto_0
    return-void

    .line 79
    :cond_0
    aget-byte v4, p1, v6

    iput v4, p0, Lbsq;->d:I

    .line 80
    sget-object v4, Lbsq;->c:Ljava/util/Map;

    iget v5, p0, Lbsq;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 81
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_1

    .line 82
    const/4 v4, 0x0

    iput-object v4, p0, Lbsq;->a:Ljava/lang/Object;

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "java.lang.String"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 86
    new-instance v4, Ljava/lang/String;

    add-int/lit8 v5, v3, -0x5

    invoke-direct {v4, p1, v7, v5}, Ljava/lang/String;-><init>([BII)V

    iput-object v4, p0, Lbsq;->a:Ljava/lang/Object;

    goto :goto_0

    .line 89
    :cond_2
    const/4 v4, 0x5

    add-int/lit8 v5, v3, -0x5

    :try_start_0
    invoke-virtual {v0, p1, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 90
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v1, v4}, Liym;->a(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lbsq;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_0

    .line 91
    :catch_0
    move-exception v2

    .line 92
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    throw v4
.end method
