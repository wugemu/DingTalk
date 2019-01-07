.class public final Lcom/amap/api/maps/model/CameraPosition$Builder;
.super Ljava/lang/Object;
.source "CameraPosition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/maps/model/CameraPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Lcom/amap/api/maps/model/LatLng;

.field private b:F

.field private c:F

.field private d:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps/model/CameraPosition;)V
    .locals 2

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iget-object v0, p1, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p0, v0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->target(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    iget v1, p1, Lcom/amap/api/maps/model/CameraPosition;->bearing:F

    .line 211
    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->bearing(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    iget v1, p1, Lcom/amap/api/maps/model/CameraPosition;->tilt:F

    .line 212
    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->tilt(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    iget v1, p1, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    .line 213
    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    .line 214
    return-void
.end method


# virtual methods
.method public final bearing(F)Lcom/amap/api/maps/model/CameraPosition$Builder;
    .locals 0

    .prologue
    .line 256
    iput p1, p0, Lcom/amap/api/maps/model/CameraPosition$Builder;->d:F

    .line 257
    return-object p0
.end method

.method public final build()Lcom/amap/api/maps/model/CameraPosition;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 267
    const-string/jumbo v2, "build"

    .line 269
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/CameraPosition$Builder;->a:Lcom/amap/api/maps/model/LatLng;

    if-nez v1, :cond_0

    .line 270
    const-string/jumbo v1, "CameraPosition"

    const-string/jumbo v3, "target is null"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_0
    return-object v0

    .line 273
    :cond_0
    new-instance v1, Lcom/amap/api/maps/model/CameraPosition;

    iget-object v3, p0, Lcom/amap/api/maps/model/CameraPosition$Builder;->a:Lcom/amap/api/maps/model/LatLng;

    iget v4, p0, Lcom/amap/api/maps/model/CameraPosition$Builder;->b:F

    iget v5, p0, Lcom/amap/api/maps/model/CameraPosition$Builder;->c:F

    iget v6, p0, Lcom/amap/api/maps/model/CameraPosition$Builder;->d:F

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/amap/api/maps/model/CameraPosition;-><init>(Lcom/amap/api/maps/model/LatLng;FFF)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 275
    :catch_0
    move-exception v1

    .line 276
    const-string/jumbo v3, "CameraPosition"

    invoke-static {v1, v3, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final target(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/CameraPosition$Builder;
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/amap/api/maps/model/CameraPosition$Builder;->a:Lcom/amap/api/maps/model/LatLng;

    .line 224
    return-object p0
.end method

.method public final tilt(F)Lcom/amap/api/maps/model/CameraPosition$Builder;
    .locals 0

    .prologue
    .line 245
    iput p1, p0, Lcom/amap/api/maps/model/CameraPosition$Builder;->c:F

    .line 246
    return-object p0
.end method

.method public final zoom(F)Lcom/amap/api/maps/model/CameraPosition$Builder;
    .locals 0

    .prologue
    .line 234
    iput p1, p0, Lcom/amap/api/maps/model/CameraPosition$Builder;->b:F

    .line 235
    return-object p0
.end method
