.class public Lcom/amap/api/mapcore/util/cc;
.super Lcom/amap/api/mapcore/util/ca;
.source "DefaultState.java"


# direct methods
.method public constructor <init>(ILcom/amap/api/mapcore/util/aw;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/ca;-><init>(ILcom/amap/api/mapcore/util/aw;)V

    .line 15
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 19
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->b:Lcom/amap/api/mapcore/util/aw;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/aw;->b:Lcom/amap/api/mapcore/util/ca;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/cc;->b(Lcom/amap/api/mapcore/util/ca;)V

    .line 21
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->b:Lcom/amap/api/mapcore/util/aw;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cc;->b:Lcom/amap/api/mapcore/util/aw;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/aw;->b:Lcom/amap/api/mapcore/util/ca;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/aw;->a(Lcom/amap/api/mapcore/util/ca;)V

    .line 24
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->b:Lcom/amap/api/mapcore/util/aw;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/aw;->d()V

    .line 27
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->b:Lcom/amap/api/mapcore/util/aw;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/aw;->c()Lcom/amap/api/mapcore/util/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ca;->c()V

    .line 29
    return-void
.end method
