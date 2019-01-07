.class public Lcom/amap/api/mapcore/util/dh;
.super Lcom/amap/api/mapcore/util/di;
.source "GLAlphaAnimation.java"


# instance fields
.field public a:F

.field public b:F

.field public c:F


# direct methods
.method public constructor <init>(FF)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/di;-><init>()V

    .line 4
    iput v1, p0, Lcom/amap/api/mapcore/util/dh;->a:F

    .line 5
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/mapcore/util/dh;->b:F

    .line 6
    iput v1, p0, Lcom/amap/api/mapcore/util/dh;->c:F

    .line 9
    iput p1, p0, Lcom/amap/api/mapcore/util/dh;->a:F

    .line 10
    iput p2, p0, Lcom/amap/api/mapcore/util/dh;->b:F

    .line 11
    return-void
.end method


# virtual methods
.method protected a(FLcom/amap/api/mapcore/util/dn;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 15
    iget v0, p0, Lcom/amap/api/mapcore/util/dh;->a:F

    .line 16
    iget v1, p0, Lcom/amap/api/mapcore/util/dh;->b:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/dh;->c:F

    .line 19
    iget v0, p0, Lcom/amap/api/mapcore/util/dh;->c:F

    float-to-double v0, v0

    iput-wide v0, p2, Lcom/amap/api/mapcore/util/dn;->c:D

    .line 20
    return-void
.end method
