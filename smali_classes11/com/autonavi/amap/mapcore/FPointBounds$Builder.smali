.class public final Lcom/autonavi/amap/mapcore/FPointBounds$Builder;
.super Ljava/lang/Object;
.source "FPointBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amap/mapcore/FPointBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mEast:F

.field private mNorth:F

.field private mSouth:F

.field private mWest:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput v1, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mSouth:F

    .line 170
    iput v0, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mNorth:F

    .line 171
    iput v1, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mWest:F

    .line 172
    iput v0, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mEast:F

    return-void
.end method

.method private containsx(D)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 199
    iget v2, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mWest:F

    iget v3, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mEast:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    .line 200
    iget v2, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mWest:F

    float-to-double v2, v2

    cmpg-double v2, v2, p1

    if-gtz v2, :cond_1

    iget v2, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mEast:F

    float-to-double v2, v2

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 200
    goto :goto_0

    .line 201
    :cond_2
    iget v2, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mWest:F

    float-to-double v2, v2

    cmpg-double v2, v2, p1

    if-lez v2, :cond_0

    iget v2, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mEast:F

    float-to-double v2, v2

    cmpg-double v2, p1, v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final build()Lcom/autonavi/amap/mapcore/FPointBounds;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 210
    new-instance v0, Lcom/autonavi/amap/mapcore/FPointBounds;

    new-instance v1, Lcom/autonavi/amap/mapcore/FPoint;

    iget v2, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mWest:F

    iget v3, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mSouth:F

    invoke-direct {v1, v2, v3}, Lcom/autonavi/amap/mapcore/FPoint;-><init>(FF)V

    new-instance v2, Lcom/autonavi/amap/mapcore/FPoint;

    iget v3, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mEast:F

    iget v4, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mNorth:F

    invoke-direct {v2, v3, v4}, Lcom/autonavi/amap/mapcore/FPoint;-><init>(FF)V

    invoke-direct {v0, v1, v2}, Lcom/autonavi/amap/mapcore/FPointBounds;-><init>(Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;)V

    return-object v0
.end method

.method public final include(Lcom/autonavi/amap/mapcore/FPoint;)Lcom/autonavi/amap/mapcore/FPointBounds$Builder;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 181
    iget v0, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mSouth:F

    iget v1, p1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mSouth:F

    .line 182
    iget v0, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mNorth:F

    iget v1, p1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mNorth:F

    .line 184
    iget v0, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mWest:F

    iget v1, p1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mWest:F

    .line 185
    iget v0, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mEast:F

    iget v1, p1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mEast:F

    .line 195
    return-object p0
.end method
