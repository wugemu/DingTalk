.class public Lcom/amap/api/mapcore/util/ch;
.super Lcom/amap/api/mapcore/util/ca;
.source "UnzipState.java"


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
.method public a(I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ch;->b:Lcom/amap/api/mapcore/util/aw;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/aw;->h:Lcom/amap/api/mapcore/util/ca;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/ch;->b(Lcom/amap/api/mapcore/util/ca;)V

    .line 47
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ch;->b:Lcom/amap/api/mapcore/util/aw;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ch;->b:Lcom/amap/api/mapcore/util/aw;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/aw;->h:Lcom/amap/api/mapcore/util/ca;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/aw;->a(Lcom/amap/api/mapcore/util/ca;)V

    .line 51
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ch;->b:Lcom/amap/api/mapcore/util/aw;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/aw;->c()Lcom/amap/api/mapcore/util/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ca;->c()V

    .line 52
    return-void
.end method

.method public c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 20
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ch;->b:Lcom/amap/api/mapcore/util/aw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/aw;->setCompleteCode(I)V

    .line 21
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ch;->b:Lcom/amap/api/mapcore/util/aw;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/aw;->d()V

    .line 23
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ch;->b:Lcom/amap/api/mapcore/util/aw;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/aw;->d()V

    .line 29
    return-void
.end method

.method public h()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 33
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ch;->b:Lcom/amap/api/mapcore/util/aw;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/aw;->f:Lcom/amap/api/mapcore/util/ca;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/ch;->b(Lcom/amap/api/mapcore/util/ca;)V

    .line 35
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ch;->b:Lcom/amap/api/mapcore/util/aw;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ch;->b:Lcom/amap/api/mapcore/util/aw;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/aw;->f:Lcom/amap/api/mapcore/util/ca;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/aw;->a(Lcom/amap/api/mapcore/util/ca;)V

    .line 38
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ch;->b:Lcom/amap/api/mapcore/util/aw;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/aw;->c()Lcom/amap/api/mapcore/util/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ca;->c()V

    .line 41
    return-void
.end method
