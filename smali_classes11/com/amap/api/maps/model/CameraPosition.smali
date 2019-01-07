.class public final Lcom/amap/api/maps/model/CameraPosition;
.super Ljava/lang/Object;
.source "CameraPosition.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps/model/CameraPosition$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/amap/api/maps/model/CameraPositionCreator;


# instance fields
.field public final bearing:F

.field public final isAbroad:Z

.field public final target:Lcom/amap/api/maps/model/LatLng;

.field public final tilt:F

.field public final zoom:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/amap/api/maps/model/CameraPositionCreator;

    invoke-direct {v0}, Lcom/amap/api/maps/model/CameraPositionCreator;-><init>()V

    sput-object v0, Lcom/amap/api/maps/model/CameraPosition;->CREATOR:Lcom/amap/api/maps/model/CameraPositionCreator;

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps/model/LatLng;FFF)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/high16 v6, 0x43b40000    # 360.0f

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-nez p1, :cond_0

    .line 51
    const-string/jumbo v1, "CameraPosition"

    const-string/jumbo v2, "\u6784\u5efaCameraPosition\u65f6,\u4f4d\u7f6e(target)\u4e0d\u80fd\u4e3anull"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    iput-object p1, p0, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    .line 54
    iput p2, p0, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    .line 55
    iput p3, p0, Lcom/amap/api/maps/model/CameraPosition;->tilt:F

    .line 56
    float-to-double v2, p4

    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_1

    rem-float v1, p4, v6

    add-float p4, v1, v6

    :cond_1
    rem-float v1, p4, v6

    iput v1, p0, Lcom/amap/api/maps/model/CameraPosition;->bearing:F

    .line 57
    if-eqz p1, :cond_3

    .line 58
    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/amap/api/mapcore/util/ek;->a(DD)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/amap/api/maps/model/CameraPosition;->isAbroad:Z

    .line 67
    :goto_0
    return-void

    .line 60
    :cond_3
    iput-boolean v0, p0, Lcom/amap/api/maps/model/CameraPosition;->isAbroad:Z

    goto :goto_0
.end method

.method public static builder()Lcom/amap/api/maps/model/CameraPosition$Builder;
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcom/amap/api/maps/model/CameraPosition$Builder;

    invoke-direct {v0}, Lcom/amap/api/maps/model/CameraPosition$Builder;-><init>()V

    return-object v0
.end method

.method public static builder(Lcom/amap/api/maps/model/CameraPosition;)Lcom/amap/api/maps/model/CameraPosition$Builder;
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/amap/api/maps/model/CameraPosition$Builder;

    invoke-direct {v0, p0}, Lcom/amap/api/maps/model/CameraPosition$Builder;-><init>(Lcom/amap/api/maps/model/CameraPosition;)V

    return-object v0
.end method

.method public static final fromLatLngZoom(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/maps/model/CameraPosition;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    new-instance v0, Lcom/amap/api/maps/model/CameraPosition;

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/amap/api/maps/model/CameraPosition;-><init>(Lcom/amap/api/maps/model/LatLng;FFF)V

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 127
    if-ne p0, p1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v0

    .line 130
    :cond_1
    instance-of v2, p1, Lcom/amap/api/maps/model/CameraPosition;

    if-nez v2, :cond_2

    move v0, v1

    .line 131
    goto :goto_0

    .line 133
    :cond_2
    check-cast p1, Lcom/amap/api/maps/model/CameraPosition;

    .line 134
    iget-object v2, p0, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    iget-object v3, p1, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v2, v3}, Lcom/amap/api/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    .line 135
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    .line 136
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/amap/api/maps/model/CameraPosition;->tilt:F

    .line 137
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/amap/api/maps/model/CameraPosition;->tilt:F

    .line 138
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/amap/api/maps/model/CameraPosition;->bearing:F

    .line 139
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/amap/api/maps/model/CameraPosition;->bearing:F

    .line 140
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 148
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "target"

    iget-object v3, p0, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    invoke-static {v2, v3}, Lcom/amap/api/mapcore/util/en;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "zoom"

    iget v3, p0, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    .line 149
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amap/api/mapcore/util/en;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "tilt"

    iget v3, p0, Lcom/amap/api/maps/model/CameraPosition;->tilt:F

    .line 150
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amap/api/mapcore/util/en;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "bearing"

    iget v3, p0, Lcom/amap/api/maps/model/CameraPosition;->bearing:F

    .line 151
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amap/api/mapcore/util/en;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 148
    invoke-static {v0}, Lcom/amap/api/mapcore/util/en;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 72
    iget v0, p0, Lcom/amap/api/maps/model/CameraPosition;->bearing:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 73
    iget-object v0, p0, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 74
    iget-object v0, p0, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 75
    iget v0, p0, Lcom/amap/api/maps/model/CameraPosition;->tilt:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 76
    iget v0, p0, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 77
    return-void
.end method
