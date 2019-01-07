.class public Lcom/amap/api/services/a/ct;
.super Ljava/lang/Object;
.source "BaseNetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/a/ct$a;
    }
.end annotation


# static fields
.field private static a:Lcom/amap/api/services/a/ct;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amap/api/services/a/ct;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/amap/api/services/a/ct;->a:Lcom/amap/api/services/a/ct;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/amap/api/services/a/ct;

    invoke-direct {v0}, Lcom/amap/api/services/a/ct;-><init>()V

    sput-object v0, Lcom/amap/api/services/a/ct;->a:Lcom/amap/api/services/a/ct;

    .line 48
    :cond_0
    sget-object v0, Lcom/amap/api/services/a/ct;->a:Lcom/amap/api/services/a/ct;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amap/api/services/a/cz;Z)Lcom/amap/api/services/a/db;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/a/av;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 211
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/services/a/ct;->c(Lcom/amap/api/services/a/cz;)V

    .line 213
    iget-object v0, p1, Lcom/amap/api/services/a/cz;->g:Ljava/net/Proxy;

    if-nez v0, :cond_0

    .line 214
    const/4 v0, 0x0

    .line 218
    :goto_0
    new-instance v1, Lcom/amap/api/services/a/cw;

    iget v2, p1, Lcom/amap/api/services/a/cz;->e:I

    iget v3, p1, Lcom/amap/api/services/a/cz;->f:I

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/amap/api/services/a/cw;-><init>(IILjava/net/Proxy;Z)V

    .line 222
    invoke-virtual {p1}, Lcom/amap/api/services/a/cz;->k()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-virtual {p1}, Lcom/amap/api/services/a/cz;->c()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amap/api/services/a/cz;->l()[B

    move-result-object v3

    .line 222
    invoke-virtual {v1, v0, v2, v3}, Lcom/amap/api/services/a/cw;->a(Ljava/lang/String;Ljava/util/Map;[B)Lcom/amap/api/services/a/db;

    move-result-object v0

    .line 232
    return-object v0

    .line 216
    :cond_0
    iget-object v0, p1, Lcom/amap/api/services/a/cz;->g:Ljava/net/Proxy;
    :try_end_0
    .catch Lcom/amap/api/services/a/av; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 227
    throw v0

    .line 228
    :catch_1
    move-exception v0

    .line 229
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 230
    new-instance v0, Lcom/amap/api/services/a/av;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/services/a/av;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/amap/api/services/a/cz;)[B
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
    .line 110
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/amap/api/services/a/ct;->a(Lcom/amap/api/services/a/cz;Z)Lcom/amap/api/services/a/db;
    :try_end_0
    .catch Lcom/amap/api/services/a/av; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 116
    if-eqz v0, :cond_0

    .line 117
    iget-object v0, v0, Lcom/amap/api/services/a/db;->a:[B

    .line 119
    :goto_0
    return-object v0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    throw v0

    .line 114
    :catch_1
    move-exception v0

    new-instance v0, Lcom/amap/api/services/a/av;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/services/a/av;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/amap/api/services/a/cz;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/a/av;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 126
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/amap/api/services/a/ct;->a(Lcom/amap/api/services/a/cz;Z)Lcom/amap/api/services/a/db;
    :try_end_0
    .catch Lcom/amap/api/services/a/av; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 134
    if-eqz v0, :cond_0

    .line 135
    iget-object v0, v0, Lcom/amap/api/services/a/db;->a:[B

    .line 137
    :goto_0
    return-object v0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    throw v0

    .line 129
    :catch_1
    move-exception v0

    .line 130
    const-string/jumbo v1, "BaseNetManager"

    const-string/jumbo v2, "makeSyncPostRequest"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v0, Lcom/amap/api/services/a/av;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/services/a/av;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c(Lcom/amap/api/services/a/cz;)V
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
    .line 198
    if-nez p1, :cond_0

    .line 199
    new-instance v0, Lcom/amap/api/services/a/av;

    const-string/jumbo v1, "requeust is null"

    invoke-direct {v0, v1}, Lcom/amap/api/services/a/av;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/services/a/cz;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    invoke-virtual {p1}, Lcom/amap/api/services/a/cz;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    :cond_1
    new-instance v0, Lcom/amap/api/services/a/av;

    const-string/jumbo v1, "request url is empty"

    invoke-direct {v0, v1}, Lcom/amap/api/services/a/av;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_2
    return-void
.end method
