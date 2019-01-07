.class public Lcom/amap/api/services/a/by;
.super Ljava/lang/Object;
.source "LogDBOperation.java"


# instance fields
.field private a:Lcom/amap/api/services/a/bq;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    :try_start_0
    new-instance v0, Lcom/amap/api/services/a/bq;

    const-class v1, Lcom/amap/api/services/a/bx;

    invoke-static {v1}, Lcom/amap/api/services/a/bq;->a(Ljava/lang/Class;)Lcom/amap/api/services/a/bp;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/amap/api/services/a/bq;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/bp;)V

    iput-object v0, p0, Lcom/amap/api/services/a/by;->a:Lcom/amap/api/services/a/bq;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :goto_0
    return-void

    .line 15
    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/amap/api/services/a/bz;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 41
    invoke-static {p1}, Lcom/amap/api/services/a/bz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/amap/api/services/a/by;->a:Lcom/amap/api/services/a/bq;

    invoke-virtual {v1, v0, p2}, Lcom/amap/api/services/a/bq;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 45
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lcom/amap/api/services/a/bz;",
            ">;)",
            "Ljava/util/List",
            "<+",
            "Lcom/amap/api/services/a/bz;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 55
    :try_start_0
    invoke-static {p1}, Lcom/amap/api/services/a/bz;->c(I)Ljava/lang/String;

    move-result-object v1

    .line 56
    iget-object v2, p0, Lcom/amap/api/services/a/by;->a:Lcom/amap/api/services/a/bq;

    invoke-virtual {v2, v1, p2}, Lcom/amap/api/services/a/bq;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    .line 57
    :catch_0
    move-exception v1

    .line 59
    const-string/jumbo v2, "LogDB"

    const-string/jumbo v3, "ByState"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/services/a/bz;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 88
    if-nez p1, :cond_0

    .line 109
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/services/a/bz;->b()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0}, Lcom/amap/api/services/a/bz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    iget-object v0, p0, Lcom/amap/api/services/a/by;->a:Lcom/amap/api/services/a/bq;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/amap/api/services/a/bq;->a(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/a/by;->a:Lcom/amap/api/services/a/bq;

    invoke-virtual {v0, p1, v3}, Lcom/amap/api/services/a/bq;->a(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 99
    :cond_2
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/a/bz;

    .line 100
    invoke-virtual {p1}, Lcom/amap/api/services/a/bz;->a()I

    move-result v2

    if-nez v2, :cond_3

    .line 101
    invoke-virtual {v0}, Lcom/amap/api/services/a/bz;->c()I

    move-result v2

    .line 102
    add-int/lit8 v2, v2, 0x1

    .line 103
    invoke-virtual {v0, v2}, Lcom/amap/api/services/a/bz;->b(I)V

    .line 107
    :goto_1
    iget-object v2, p0, Lcom/amap/api/services/a/by;->a:Lcom/amap/api/services/a/bq;

    invoke-virtual {v2, v1, v0, v3}, Lcom/amap/api/services/a/bq;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 105
    :cond_3
    invoke-virtual {v0, v4}, Lcom/amap/api/services/a/bz;->b(I)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/amap/api/services/a/bz;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 23
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/a/by;->c(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 26
    const-string/jumbo v1, "LogDB"

    const-string/jumbo v2, "delLog"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcom/amap/api/services/a/bz;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 119
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/services/a/bz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/bz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/amap/api/services/a/by;->a:Lcom/amap/api/services/a/bq;

    invoke-virtual {v1, v0, p1}, Lcom/amap/api/services/a/bq;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 124
    const-string/jumbo v1, "LogDB"

    const-string/jumbo v2, "updateLogInfo"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/amap/api/services/a/bz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/a/by;->c(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
