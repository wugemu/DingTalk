.class Lcom/amap/api/mapcore/util/hh$1;
.super Lcom/amap/api/mapcore/util/hr;
.source "NetManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/hh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/hi;

.field final synthetic b:Lcom/amap/api/mapcore/util/hj;

.field final synthetic c:Lcom/amap/api/mapcore/util/hh;


# virtual methods
.method public a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/hh$1;->c:Lcom/amap/api/mapcore/util/hh;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/hh$1;->a:Lcom/amap/api/mapcore/util/hi;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/util/hh;->b(Lcom/amap/api/mapcore/util/hi;Z)Lcom/amap/api/mapcore/util/hk;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/amap/api/mapcore/util/hh$1;->c:Lcom/amap/api/mapcore/util/hh;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/hh$1;->b:Lcom/amap/api/mapcore/util/hj;

    invoke-static {v1, v0, v2}, Lcom/amap/api/mapcore/util/hh;->a(Lcom/amap/api/mapcore/util/hh;Lcom/amap/api/mapcore/util/hk;Lcom/amap/api/mapcore/util/hj;)V
    :try_end_0
    .catch Lcom/amap/api/mapcore/util/fc; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    iget-object v1, p0, Lcom/amap/api/mapcore/util/hh$1;->c:Lcom/amap/api/mapcore/util/hh;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/hh$1;->b:Lcom/amap/api/mapcore/util/hj;

    invoke-static {v1, v0, v2}, Lcom/amap/api/mapcore/util/hh;->a(Lcom/amap/api/mapcore/util/hh;Lcom/amap/api/mapcore/util/fc;Lcom/amap/api/mapcore/util/hj;)V

    goto :goto_0
.end method
