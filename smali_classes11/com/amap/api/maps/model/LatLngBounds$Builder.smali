.class public final Lcom/amap/api/maps/model/LatLngBounds$Builder;
.super Ljava/lang/Object;
.source "LatLngBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/maps/model/LatLngBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:D

.field private b:D

.field private c:D

.field private d:D


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->a:D

    .line 276
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->b:D

    .line 277
    iput-wide v2, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->c:D

    .line 278
    iput-wide v2, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->d:D

    return-void
.end method

.method private a(D)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 313
    iget-wide v2, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->c:D

    iget-wide v4, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->d:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_2

    .line 314
    iget-wide v2, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->c:D

    cmpg-double v2, v2, p1

    if-gtz v2, :cond_1

    iget-wide v2, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->d:D

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_1

    .line 315
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 314
    goto :goto_0

    .line 315
    :cond_2
    iget-wide v2, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->c:D

    cmpg-double v2, v2, p1

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->d:D

    cmpg-double v2, p1, v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final build()Lcom/amap/api/maps/model/LatLngBounds;
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 325
    iget-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->c:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    const-string/jumbo v0, "LatLngBounds"

    const-string/jumbo v1, "no included points"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const/4 v0, 0x0

    .line 329
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/amap/api/maps/model/LatLngBounds;

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->a:D

    iget-wide v4, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->c:D

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    new-instance v7, Lcom/amap/api/maps/model/LatLng;

    iget-wide v8, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->b:D

    iget-wide v10, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->d:D

    move v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    invoke-direct {v0, v1, v7}, Lcom/amap/api/maps/model/LatLngBounds;-><init>(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)V

    goto :goto_0
.end method

.method public final include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 291
    if-nez p1, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-object p0

    .line 294
    :cond_1
    iget-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->a:D

    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->a:D

    .line 295
    iget-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->b:D

    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->b:D

    .line 296
    iget-wide v0, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    .line 297
    iget-wide v2, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->c:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 298
    iput-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->c:D

    .line 306
    :cond_2
    iput-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->d:D

    goto :goto_0

    .line 300
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->a(D)Z

    move-result v2

    if-nez v2, :cond_0

    .line 301
    iget-wide v2, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->c:D

    invoke-static {v2, v3, v0, v1}, Lcom/amap/api/maps/model/LatLngBounds;->a(DD)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->d:D

    .line 302
    invoke-static {v4, v5, v0, v1}, Lcom/amap/api/maps/model/LatLngBounds;->b(DD)D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    .line 304
    iput-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->c:D

    goto :goto_0
.end method
