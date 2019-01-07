.class public Lcom/amap/api/services/a/de;
.super Ljava/lang/Object;
.source "StatisticsEntity.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/a/av;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_1

    .line 49
    :cond_0
    new-instance v0, Lcom/amap/api/services/a/av;

    const-string/jumbo v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/a/av;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/de;->a:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/amap/api/services/a/de;->c:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/amap/api/services/a/de;->d:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/amap/api/services/a/de;->b:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/a/av;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/high16 v1, 0x10000

    if-le v0, v1, :cond_1

    .line 63
    :cond_0
    new-instance v0, Lcom/amap/api/services/a/av;

    const-string/jumbo v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/a/av;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    iput-object p1, p0, Lcom/amap/api/services/a/de;->e:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public a()[B
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 104
    const/4 v3, 0x0

    .line 105
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 107
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/services/a/de;->c:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bf;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/amap/api/services/a/de;->d:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bf;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/amap/api/services/a/de;->b:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bf;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/amap/api/services/a/de;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/services/a/ba;->m(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bf;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 116
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "SSS"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 117
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 118
    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 119
    invoke-virtual {p0, v1}, Lcom/amap/api/services/a/de;->a(I)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 121
    iget-object v1, p0, Lcom/amap/api/services/a/de;->e:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/amap/api/services/a/de;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 122
    iget-object v1, p0, Lcom/amap/api/services/a/de;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/amap/api/services/a/bf;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 123
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 127
    if-eqz v2, :cond_0

    .line 129
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 137
    :cond_0
    :goto_0
    return-object v0

    .line 124
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 125
    :goto_1
    :try_start_3
    const-string/jumbo v3, "StatisticsEntity"

    const-string/jumbo v4, "toDatas"

    invoke-static {v1, v3, v4}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 127
    if-eqz v2, :cond_0

    .line 129
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 130
    :catch_1
    move-exception v1

    .line 131
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_3
    if-eqz v2, :cond_1

    .line 129
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    .line 127
    :cond_1
    :goto_4
    throw v0

    .line 130
    :catch_2
    move-exception v1

    .line 131
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 130
    :catch_3
    move-exception v1

    goto :goto_2

    .line 127
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 124
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public a(I)[B
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 77
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 78
    const/4 v1, 0x0

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 79
    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 80
    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 81
    const/4 v1, 0x3

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 82
    return-object v0
.end method

.method public b(Ljava/lang/String;)[B
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x2

    .line 91
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    new-array v0, v3, [B

    fill-array-data v0, :array_0

    .line 98
    :goto_0
    return-object v0

    .line 95
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 96
    div-int/lit16 v1, v0, 0x100

    int-to-byte v1, v1

    .line 97
    rem-int/lit16 v0, v0, 0x100

    int-to-byte v2, v0

    .line 98
    new-array v0, v3, [B

    const/4 v3, 0x0

    aput-byte v1, v0, v3

    const/4 v1, 0x1

    aput-byte v2, v0, v1

    goto :goto_0

    .line 92
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method
