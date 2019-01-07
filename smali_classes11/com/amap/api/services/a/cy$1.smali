.class Lcom/amap/api/services/a/cy$1;
.super Lcom/amap/api/services/a/di;
.source "NetManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/a/cy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/a/cz;

.field final synthetic b:Lcom/amap/api/services/a/da;

.field final synthetic c:Lcom/amap/api/services/a/cy;


# virtual methods
.method public a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/cy$1;->c:Lcom/amap/api/services/a/cy;

    iget-object v1, p0, Lcom/amap/api/services/a/cy$1;->a:Lcom/amap/api/services/a/cz;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/services/a/cy;->b(Lcom/amap/api/services/a/cz;Z)Lcom/amap/api/services/a/db;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/amap/api/services/a/cy$1;->c:Lcom/amap/api/services/a/cy;

    iget-object v2, p0, Lcom/amap/api/services/a/cy$1;->b:Lcom/amap/api/services/a/da;

    invoke-static {v1, v0, v2}, Lcom/amap/api/services/a/cy;->a(Lcom/amap/api/services/a/cy;Lcom/amap/api/services/a/db;Lcom/amap/api/services/a/da;)V
    :try_end_0
    .catch Lcom/amap/api/services/a/av; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    iget-object v1, p0, Lcom/amap/api/services/a/cy$1;->c:Lcom/amap/api/services/a/cy;

    iget-object v2, p0, Lcom/amap/api/services/a/cy$1;->b:Lcom/amap/api/services/a/da;

    invoke-static {v1, v0, v2}, Lcom/amap/api/services/a/cy;->a(Lcom/amap/api/services/a/cy;Lcom/amap/api/services/a/av;Lcom/amap/api/services/a/da;)V

    goto :goto_0
.end method
