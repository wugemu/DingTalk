.class public Lcom/amap/api/mapcore/util/y;
.super Lcom/amap/api/mapcore/util/x;
.source "ADGLAnimationParam1V.java"


# instance fields
.field private i:F

.field private j:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/x;-><init>()V

    .line 8
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/y;->a()V

    .line 9
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-super {p0}, Lcom/amap/api/mapcore/util/x;->a()V

    .line 15
    iput v0, p0, Lcom/amap/api/mapcore/util/y;->i:F

    .line 16
    iput v0, p0, Lcom/amap/api/mapcore/util/y;->j:F

    .line 17
    return-void
.end method

.method public c(F)V
    .locals 1

    .prologue
    .line 20
    iput p1, p0, Lcom/amap/api/mapcore/util/y;->i:F

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/y;->g:Z

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/y;->e:Z

    .line 23
    return-void
.end method

.method public d()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/y;->f:Z

    .line 46
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/y;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/y;->h:Z

    if-eqz v0, :cond_0

    .line 47
    iget v0, p0, Lcom/amap/api/mapcore/util/y;->j:F

    iget v1, p0, Lcom/amap/api/mapcore/util/y;->i:F

    sub-float/2addr v0, v1

    .line 48
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 49
    iput-boolean v4, p0, Lcom/amap/api/mapcore/util/y;->f:Z

    .line 52
    :cond_0
    iput-boolean v4, p0, Lcom/amap/api/mapcore/util/y;->e:Z

    .line 54
    return-void
.end method

.method public d(F)V
    .locals 1

    .prologue
    .line 26
    iput p1, p0, Lcom/amap/api/mapcore/util/y;->j:F

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/y;->h:Z

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/y;->e:Z

    .line 29
    return-void
.end method

.method public e()F
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/amap/api/mapcore/util/y;->i:F

    return v0
.end method

.method public f()F
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/amap/api/mapcore/util/y;->j:F

    return v0
.end method

.method public g()F
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 40
    iget v0, p0, Lcom/amap/api/mapcore/util/y;->i:F

    iget v1, p0, Lcom/amap/api/mapcore/util/y;->j:F

    iget v2, p0, Lcom/amap/api/mapcore/util/y;->i:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/amap/api/mapcore/util/y;->d:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method
