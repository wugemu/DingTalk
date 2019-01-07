.class public abstract Lcom/amap/api/services/a/a;
.super Lcom/amap/api/services/a/cz;
.source "BasicHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amap/api/services/a/cz;"
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

.field private h:I


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

    .line 40
    invoke-direct {p0}, Lcom/amap/api/services/a/cz;-><init>()V

    .line 35
    iput v1, p0, Lcom/amap/api/services/a/a;->b:I

    .line 36
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/amap/api/services/a/a;->c:Ljava/lang/String;

    .line 38
    iput v1, p0, Lcom/amap/api/services/a/a;->h:I

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/a/a;->a(Landroid/content/Context;Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 49
    iput-object p1, p0, Lcom/amap/api/services/a/a;->d:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/amap/api/services/a/a;->a:Ljava/lang/Object;

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/services/a/a;->b:I

    .line 52
    invoke-static {}, Lcom/amap/api/services/core/ServiceSettings;->getInstance()Lcom/amap/api/services/core/ServiceSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/core/ServiceSettings;->getSoTimeOut()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/services/a/a;->b(I)V

    .line 53
    invoke-static {}, Lcom/amap/api/services/core/ServiceSettings;->getInstance()Lcom/amap/api/services/core/ServiceSettings;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/amap/api/services/core/ServiceSettings;->getConnectionTimeOut()I

    move-result v0

    .line 53
    invoke-virtual {p0, v0}, Lcom/amap/api/services/a/a;->a(I)V

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
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/amap/api/services/a/a;->a([B)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private e()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 84
    const/4 v1, 0x0

    .line 86
    :cond_0
    :goto_0
    iget v2, p0, Lcom/amap/api/services/a/a;->b:I

    if-ge v0, v2, :cond_6

    .line 88
    :try_start_0
    invoke-static {}, Lcom/amap/api/services/core/ServiceSettings;->getInstance()Lcom/amap/api/services/core/ServiceSettings;

    move-result-object v2

    .line 89
    invoke-virtual {v2}, Lcom/amap/api/services/core/ServiceSettings;->getProtocol()I

    move-result v2

    .line 90
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/amap/api/services/a/cy;->a(Z)Lcom/amap/api/services/a/cy;

    move-result-object v3

    .line 91
    iget-object v4, p0, Lcom/amap/api/services/a/a;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/amap/api/services/a/bd;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/amap/api/services/a/a;->a(Ljava/net/Proxy;)V

    .line 92
    invoke-virtual {p0, v2, v3, p0}, Lcom/amap/api/services/a/a;->a(ILcom/amap/api/services/a/cy;Lcom/amap/api/services/a/cz;)[B

    move-result-object v2

    .line 93
    invoke-direct {p0, v2}, Lcom/amap/api/services/a/a;->b([B)Ljava/lang/Object;

    move-result-object v1

    .line 94
    iget v0, p0, Lcom/amap/api/services/a/a;->b:I
    :try_end_0
    .catch Lcom/amap/api/services/a/av; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 95
    :catch_0
    move-exception v2

    .line 96
    add-int/lit8 v0, v0, 0x1

    .line 97
    iget v3, p0, Lcom/amap/api/services/a/a;->b:I

    if-ge v0, v3, :cond_3

    .line 99
    :try_start_1
    iget v3, p0, Lcom/amap/api/services/a/a;->h:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 101
    :catch_1
    move-exception v0

    const-string/jumbo v0, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-virtual {v2}, Lcom/amap/api/services/a/av;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    .line 102
    invoke-virtual {v2}, Lcom/amap/api/services/a/av;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25 - UnknownServiceException"

    .line 103
    invoke-virtual {v2}, Lcom/amap/api/services/a/av;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    :cond_1
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string/jumbo v1, "http\u6216socket\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_2
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    invoke-virtual {v2}, Lcom/amap/api/services/a/av;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_3
    invoke-virtual {p0}, Lcom/amap/api/services/a/a;->d()Ljava/lang/Object;

    .line 110
    const-string/jumbo v0, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-virtual {v2}, Lcom/amap/api/services/a/av;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    .line 111
    invoke-virtual {v2}, Lcom/amap/api/services/a/av;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "\u672a\u77e5\u7684\u9519\u8bef"

    .line 112
    invoke-virtual {v2}, Lcom/amap/api/services/a/av;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25 - UnknownServiceException"

    .line 113
    invoke-virtual {v2}, Lcom/amap/api/services/a/av;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 114
    :cond_4
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string/jumbo v1, "http\u6216socket\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_5
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    invoke-virtual {v2}, Lcom/amap/api/services/a/av;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :catch_2
    move-exception v2

    .line 119
    add-int/lit8 v0, v0, 0x1

    .line 120
    iget v3, p0, Lcom/amap/api/services/a/a;->b:I

    if-lt v0, v3, :cond_0

    .line 125
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    invoke-virtual {v2}, Lcom/amap/api/services/core/AMapException;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :catch_3
    move-exception v0

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string/jumbo v1, "\u672a\u77e5\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_6
    return-object v1
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/amap/api/services/a/a;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/amap/api/services/a/a;->e()Ljava/lang/Object;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

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
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation
.end method

.method protected a([B)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

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

    .line 71
    :cond_0
    :goto_1
    return-object v0

    .line 64
    :catch_0
    move-exception v1

    .line 65
    const-string/jumbo v2, "ProtocalHandler"

    const-string/jumbo v3, "loadData"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0

    .line 70
    :cond_1
    invoke-static {v1}, Lcom/amap/api/services/a/i;->b(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, v1}, Lcom/amap/api/services/a/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method protected a(ILcom/amap/api/services/a/cy;Lcom/amap/api/services/a/cz;)[B
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
    .line 136
    const/4 v0, 0x0

    .line 137
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 138
    invoke-virtual {p2, p3}, Lcom/amap/api/services/a/cy;->b(Lcom/amap/api/services/a/cz;)[B

    move-result-object v0

    .line 142
    :cond_0
    :goto_0
    return-object v0

    .line 139
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 140
    invoke-virtual {p2, p3}, Lcom/amap/api/services/a/cy;->a(Lcom/amap/api/services/a/cz;)[B

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
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/util/Map;
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
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method protected d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 160
    const/4 v0, 0x0

    return-object v0
.end method
