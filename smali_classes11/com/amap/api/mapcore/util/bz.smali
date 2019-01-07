.class public abstract Lcom/amap/api/mapcore/util/bz;
.super Lcom/amap/api/mapcore/util/ca;
.source "CanDeleteState.java"


# direct methods
.method public constructor <init>(ILcom/amap/api/mapcore/util/aw;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/ca;-><init>(ILcom/amap/api/mapcore/util/aw;)V

    .line 12
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 16
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bz;->b:Lcom/amap/api/mapcore/util/aw;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/aw;->a:Lcom/amap/api/mapcore/util/ca;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/bz;->b(Lcom/amap/api/mapcore/util/ca;)V

    .line 17
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bz;->b:Lcom/amap/api/mapcore/util/aw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/aw;->setCompleteCode(I)V

    .line 19
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bz;->b:Lcom/amap/api/mapcore/util/aw;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/bz;->b:Lcom/amap/api/mapcore/util/aw;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/aw;->a:Lcom/amap/api/mapcore/util/ca;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/aw;->a(Lcom/amap/api/mapcore/util/ca;)V

    .line 22
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bz;->b:Lcom/amap/api/mapcore/util/aw;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/aw;->d()V

    .line 26
    return-void
.end method
