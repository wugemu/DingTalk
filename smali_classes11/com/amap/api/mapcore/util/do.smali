.class public Lcom/amap/api/mapcore/util/do;
.super Lcom/amap/api/mapcore/util/di;
.source "GLTranslateAnimation.java"


# instance fields
.field public a:D

.field public b:D

.field public c:D

.field public w:D

.field public x:D

.field public y:D


# direct methods
.method public constructor <init>(Lcom/amap/api/maps/model/LatLng;)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 15
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/di;-><init>()V

    .line 8
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/do;->a:D

    .line 9
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/do;->b:D

    .line 10
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/do;->c:D

    .line 11
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/do;->w:D

    .line 12
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/do;->x:D

    .line 13
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/do;->y:D

    .line 16
    iget-wide v0, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/do;->c:D

    .line 17
    iget-wide v0, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/do;->w:D

    .line 18
    return-void
.end method


# virtual methods
.method protected a(FLcom/amap/api/mapcore/util/dn;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/do;->a:D

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/do;->x:D

    .line 32
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/do;->b:D

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/do;->y:D

    .line 33
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/do;->a:D

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/do;->c:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 34
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/do;->a:D

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/do;->c:D

    iget-wide v4, p0, Lcom/amap/api/mapcore/util/do;->a:D

    sub-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/do;->x:D

    .line 36
    :cond_0
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/do;->b:D

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/do;->w:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    .line 37
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/do;->b:D

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/do;->w:D

    iget-wide v4, p0, Lcom/amap/api/mapcore/util/do;->b:D

    sub-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/do;->y:D

    .line 41
    :cond_1
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/do;->x:D

    iput-wide v0, p2, Lcom/amap/api/mapcore/util/dn;->a:D

    .line 42
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/do;->y:D

    iput-wide v0, p2, Lcom/amap/api/mapcore/util/dn;->b:D

    .line 43
    return-void
.end method
