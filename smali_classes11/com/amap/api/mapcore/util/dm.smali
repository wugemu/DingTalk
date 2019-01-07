.class public Lcom/amap/api/mapcore/util/dm;
.super Lcom/amap/api/mapcore/util/di;
.source "GLScaleAnimation.java"


# instance fields
.field private A:I

.field private B:F

.field private C:F

.field private a:F

.field private b:F

.field private c:F

.field private w:F

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(FFFF)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/di;-><init>()V

    .line 11
    iput v0, p0, Lcom/amap/api/mapcore/util/dm;->x:I

    .line 12
    iput v0, p0, Lcom/amap/api/mapcore/util/dm;->y:I

    .line 13
    iput v0, p0, Lcom/amap/api/mapcore/util/dm;->z:I

    .line 14
    iput v0, p0, Lcom/amap/api/mapcore/util/dm;->A:I

    .line 20
    iput p1, p0, Lcom/amap/api/mapcore/util/dm;->a:F

    .line 21
    iput p2, p0, Lcom/amap/api/mapcore/util/dm;->b:F

    .line 22
    iput p3, p0, Lcom/amap/api/mapcore/util/dm;->c:F

    .line 23
    iput p4, p0, Lcom/amap/api/mapcore/util/dm;->w:F

    .line 24
    iput v1, p0, Lcom/amap/api/mapcore/util/dm;->B:F

    .line 25
    iput v1, p0, Lcom/amap/api/mapcore/util/dm;->C:F

    .line 26
    return-void
.end method


# virtual methods
.method protected a(FLcom/amap/api/mapcore/util/dn;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 30
    .line 32
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/dm;->e()F

    .line 34
    iget v0, p0, Lcom/amap/api/mapcore/util/dm;->a:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore/util/dm;->b:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    .line 35
    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore/util/dm;->a:F

    iget v2, p0, Lcom/amap/api/mapcore/util/dm;->b:F

    iget v3, p0, Lcom/amap/api/mapcore/util/dm;->a:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    .line 37
    :goto_0
    iget v2, p0, Lcom/amap/api/mapcore/util/dm;->c:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_1

    iget v2, p0, Lcom/amap/api/mapcore/util/dm;->w:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_2

    .line 38
    :cond_1
    iget v1, p0, Lcom/amap/api/mapcore/util/dm;->c:F

    iget v2, p0, Lcom/amap/api/mapcore/util/dm;->w:F

    iget v3, p0, Lcom/amap/api/mapcore/util/dm;->c:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 46
    :cond_2
    iget v2, p0, Lcom/amap/api/mapcore/util/dm;->B:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p0, Lcom/amap/api/mapcore/util/dm;->C:F

    cmpl-float v2, v2, v4

    .line 50
    :cond_3
    float-to-double v2, v0

    iput-wide v2, p2, Lcom/amap/api/mapcore/util/dn;->e:D

    .line 51
    float-to-double v0, v1

    iput-wide v0, p2, Lcom/amap/api/mapcore/util/dn;->f:D

    .line 53
    return-void

    :cond_4
    move v0, v1

    goto :goto_0
.end method
