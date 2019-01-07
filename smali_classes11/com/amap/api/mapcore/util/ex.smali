.class public abstract Lcom/amap/api/mapcore/util/ex;
.super Lcom/amap/api/mapcore/util/hi;
.source "BasicHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amap/api/mapcore/util/hi;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected b:I

.field protected c:Ljava/lang/String;

.field protected d:Landroid/content/Context;

.field protected e:Ljava/lang/String;

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 41
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/hi;-><init>()V

    .line 35
    iput v1, p0, Lcom/amap/api/mapcore/util/ex;->b:I

    .line 36
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ex;->c:Ljava/lang/String;

    .line 38
    iput v1, p0, Lcom/amap/api/mapcore/util/ex;->i:I

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/ex;->a(Landroid/content/Context;Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v1, 0x7530

    .line 50
    iput-object p1, p0, Lcom/amap/api/mapcore/util/ex;->d:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/amap/api/mapcore/util/ex;->a:Ljava/lang/Object;

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/ex;->b:I

    .line 53
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/ex;->b(I)V

    .line 54
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/ex;->a(I)V

    .line 55
    return-void
.end method

.method private b([B)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/ew;
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/ex;->a([B)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private f()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/ew;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 88
    const/4 v1, 0x0

    .line 90
    :cond_0
    :goto_0
    iget v2, p0, Lcom/amap/api/mapcore/util/ex;->b:I

    if-ge v0, v2, :cond_6

    .line 92
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Lcom/amap/api/mapcore/util/hh;->a(Z)Lcom/amap/api/mapcore/util/hh;

    move-result-object v2

    .line 93
    iget-object v3, p0, Lcom/amap/api/mapcore/util/ex;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/fk;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/amap/api/mapcore/util/ex;->a(Ljava/net/Proxy;)V

    .line 94
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2, p0}, Lcom/amap/api/mapcore/util/ex;->a(ILcom/amap/api/mapcore/util/hh;Lcom/amap/api/mapcore/util/hi;)[B

    move-result-object v2

    .line 96
    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/util/ex;->b([B)Ljava/lang/Object;

    move-result-object v1

    .line 97
    iget v0, p0, Lcom/amap/api/mapcore/util/ex;->b:I
    :try_end_0
    .catch Lcom/amap/api/mapcore/util/fc; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/amap/api/mapcore/util/ew; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 98
    :catch_0
    move-exception v2

    .line 99
    add-int/lit8 v0, v0, 0x1

    .line 100
    iget v3, p0, Lcom/amap/api/mapcore/util/ex;->b:I

    if-ge v0, v3, :cond_3

    .line 102
    :try_start_1
    iget v3, p0, Lcom/amap/api/mapcore/util/ex;->i:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 104
    :catch_1
    move-exception v0

    const-string/jumbo v0, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    .line 105
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/fc;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    .line 107
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/fc;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25 - UnknownServiceException"

    .line 109
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/fc;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    :cond_1
    new-instance v0, Lcom/amap/api/mapcore/util/ew;

    const-string/jumbo v1, "http\u6216socket\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/ew;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_2
    new-instance v0, Lcom/amap/api/mapcore/util/ew;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/fc;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/ew;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_3
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ex;->e()Ljava/lang/Object;

    .line 117
    const-string/jumbo v0, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    .line 118
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/fc;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    .line 120
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/fc;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "\u672a\u77e5\u7684\u9519\u8bef"

    .line 122
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/fc;->a()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25 - UnknownServiceException"

    .line 124
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/fc;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 125
    :cond_4
    new-instance v0, Lcom/amap/api/mapcore/util/ew;

    const-string/jumbo v1, "http\u6216socket\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/ew;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_5
    new-instance v0, Lcom/amap/api/mapcore/util/ew;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/fc;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/ew;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :catch_2
    move-exception v2

    .line 131
    add-int/lit8 v0, v0, 0x1

    .line 132
    iget v3, p0, Lcom/amap/api/mapcore/util/ex;->b:I

    if-lt v0, v3, :cond_0

    .line 137
    new-instance v0, Lcom/amap/api/mapcore/util/ew;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ew;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/ew;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :catch_3
    move-exception v0

    new-instance v0, Lcom/amap/api/mapcore/util/ew;

    const-string/jumbo v1, "\u672a\u77e5\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/ew;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_6
    return-object v1
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/ew;
        }
    .end annotation
.end method

.method protected a([B)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/ew;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 60
    .line 63
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "utf-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    if-eqz v1, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    :cond_0
    :goto_1
    return-object v0

    .line 64
    :catch_0
    move-exception v1

    .line 65
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ex;->e:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/ez;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/ex;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method public a()Ljava/util/Map;
    .locals 1
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

    .prologue
    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(ILcom/amap/api/mapcore/util/hh;Lcom/amap/api/mapcore/util/hi;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/fc;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 149
    const/4 v0, 0x0

    .line 150
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 151
    invoke-virtual {p2, p3}, Lcom/amap/api/mapcore/util/hh;->b(Lcom/amap/api/mapcore/util/hi;)[B

    move-result-object v0

    .line 155
    :cond_0
    :goto_0
    return-object v0

    .line 152
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 153
    invoke-virtual {p2, p3}, Lcom/amap/api/mapcore/util/hh;->a(Lcom/amap/api/mapcore/util/hi;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public b()Ljava/util/Map;
    .locals 1
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

    .prologue
    .line 160
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/ew;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ex;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ex;->f()Ljava/lang/Object;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 173
    const/4 v0, 0x0

    return-object v0
.end method
