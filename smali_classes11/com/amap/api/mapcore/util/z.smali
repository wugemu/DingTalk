.class public Lcom/amap/api/mapcore/util/z;
.super Lcom/amap/api/mapcore/util/x;
.source "ADGLAnimationParam2V.java"


# instance fields
.field public i:F

.field public j:F

.field public k:F

.field public l:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/x;-><init>()V

    .line 14
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/z;->a()V

    .line 15
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-super {p0}, Lcom/amap/api/mapcore/util/x;->a()V

    .line 22
    iput v0, p0, Lcom/amap/api/mapcore/util/z;->i:F

    .line 23
    iput v0, p0, Lcom/amap/api/mapcore/util/z;->j:F

    .line 24
    iput v0, p0, Lcom/amap/api/mapcore/util/z;->k:F

    .line 25
    iput v0, p0, Lcom/amap/api/mapcore/util/z;->l:F

    .line 26
    return-void
.end method

.method public a(FF)V
    .locals 1

    .prologue
    .line 29
    iput p1, p0, Lcom/amap/api/mapcore/util/z;->i:F

    .line 30
    iput p2, p0, Lcom/amap/api/mapcore/util/z;->k:F

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/z;->g:Z

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/z;->e:Z

    .line 33
    return-void
.end method

.method public b(FF)V
    .locals 1

    .prologue
    .line 36
    iput p1, p0, Lcom/amap/api/mapcore/util/z;->j:F

    .line 37
    iput p2, p0, Lcom/amap/api/mapcore/util/z;->l:F

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/z;->h:Z

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/z;->e:Z

    .line 40
    return-void
.end method

.method public d()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/z;->f:Z

    .line 69
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/z;->g:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/z;->h:Z

    if-eqz v0, :cond_1

    .line 70
    iget v0, p0, Lcom/amap/api/mapcore/util/z;->j:F

    iget v1, p0, Lcom/amap/api/mapcore/util/z;->i:F

    sub-float/2addr v0, v1

    .line 71
    iget v1, p0, Lcom/amap/api/mapcore/util/z;->l:F

    iget v2, p0, Lcom/amap/api/mapcore/util/z;->k:F

    sub-float/2addr v1, v2

    .line 72
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v2, v0

    cmpl-double v0, v2, v4

    if-gtz v0, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_1

    .line 73
    :cond_0
    iput-boolean v6, p0, Lcom/amap/api/mapcore/util/z;->f:Z

    .line 76
    :cond_1
    iput-boolean v6, p0, Lcom/amap/api/mapcore/util/z;->e:Z

    .line 77
    return-void
.end method

.method public e()F
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/amap/api/mapcore/util/z;->i:F

    return v0
.end method

.method public f()F
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/amap/api/mapcore/util/z;->k:F

    return v0
.end method

.method public g()F
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/amap/api/mapcore/util/z;->j:F

    return v0
.end method

.method public h()F
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/amap/api/mapcore/util/z;->l:F

    return v0
.end method

.method public i()F
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 59
    iget v0, p0, Lcom/amap/api/mapcore/util/z;->i:F

    iget v1, p0, Lcom/amap/api/mapcore/util/z;->j:F

    iget v2, p0, Lcom/amap/api/mapcore/util/z;->i:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/amap/api/mapcore/util/z;->d:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public j()F
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    iget v0, p0, Lcom/amap/api/mapcore/util/z;->k:F

    iget v1, p0, Lcom/amap/api/mapcore/util/z;->l:F

    iget v2, p0, Lcom/amap/api/mapcore/util/z;->k:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/amap/api/mapcore/util/z;->d:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method
