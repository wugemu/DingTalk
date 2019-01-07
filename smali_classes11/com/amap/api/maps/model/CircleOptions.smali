.class public final Lcom/amap/api/maps/model/CircleOptions;
.super Ljava/lang/Object;
.source "CircleOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps/model/CircleOptionsCreator;


# instance fields
.field a:Ljava/lang/String;

.field private b:Lcom/amap/api/maps/model/LatLng;

.field private c:D

.field private d:F

.field private e:I

.field private f:I

.field private g:F

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/amap/api/maps/model/CircleOptionsCreator;

    invoke-direct {v0}, Lcom/amap/api/maps/model/CircleOptionsCreator;-><init>()V

    sput-object v0, Lcom/amap/api/maps/model/CircleOptions;->CREATOR:Lcom/amap/api/maps/model/CircleOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/maps/model/CircleOptions;->b:Lcom/amap/api/maps/model/LatLng;

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/maps/model/CircleOptions;->c:D

    .line 17
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/amap/api/maps/model/CircleOptions;->d:F

    .line 18
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/amap/api/maps/model/CircleOptions;->e:I

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/maps/model/CircleOptions;->f:I

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/maps/model/CircleOptions;->g:F

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/maps/model/CircleOptions;->h:Z

    return-void
.end method


# virtual methods
.method public final center(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/CircleOptions;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/amap/api/maps/model/CircleOptions;->b:Lcom/amap/api/maps/model/LatLng;

    .line 51
    return-object p0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public final fillColor(I)Lcom/amap/api/maps/model/CircleOptions;
    .locals 0

    .prologue
    .line 102
    iput p1, p0, Lcom/amap/api/maps/model/CircleOptions;->f:I

    .line 103
    return-object p0
.end method

.method public final getCenter()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/amap/api/maps/model/CircleOptions;->b:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method public final getFillColor()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/amap/api/maps/model/CircleOptions;->f:I

    return v0
.end method

.method public final getRadius()D
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 149
    iget-wide v0, p0, Lcom/amap/api/maps/model/CircleOptions;->c:D

    return-wide v0
.end method

.method public final getStrokeColor()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/amap/api/maps/model/CircleOptions;->e:I

    return v0
.end method

.method public final getStrokeWidth()F
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/amap/api/maps/model/CircleOptions;->d:F

    return v0
.end method

.method public final getZIndex()F
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/amap/api/maps/model/CircleOptions;->g:F

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/amap/api/maps/model/CircleOptions;->h:Z

    return v0
.end method

.method public final radius(D)Lcom/amap/api/maps/model/CircleOptions;
    .locals 1

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/amap/api/maps/model/CircleOptions;->c:D

    .line 64
    return-object p0
.end method

.method public final strokeColor(I)Lcom/amap/api/maps/model/CircleOptions;
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lcom/amap/api/maps/model/CircleOptions;->e:I

    .line 90
    return-object p0
.end method

.method public final strokeWidth(F)Lcom/amap/api/maps/model/CircleOptions;
    .locals 0

    .prologue
    .line 76
    iput p1, p0, Lcom/amap/api/maps/model/CircleOptions;->d:F

    .line 77
    return-object p0
.end method

.method public final visible(Z)Lcom/amap/api/maps/model/CircleOptions;
    .locals 0

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/amap/api/maps/model/CircleOptions;->h:Z

    .line 129
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 24
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 25
    iget-object v1, p0, Lcom/amap/api/maps/model/CircleOptions;->b:Lcom/amap/api/maps/model/LatLng;

    if-eqz v1, :cond_0

    .line 26
    const-string/jumbo v1, "lat"

    iget-object v2, p0, Lcom/amap/api/maps/model/CircleOptions;->b:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 27
    const-string/jumbo v1, "lng"

    iget-object v2, p0, Lcom/amap/api/maps/model/CircleOptions;->b:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 29
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 30
    iget-wide v0, p0, Lcom/amap/api/maps/model/CircleOptions;->c:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 31
    iget v0, p0, Lcom/amap/api/maps/model/CircleOptions;->d:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 32
    iget v0, p0, Lcom/amap/api/maps/model/CircleOptions;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    iget v0, p0, Lcom/amap/api/maps/model/CircleOptions;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget v0, p0, Lcom/amap/api/maps/model/CircleOptions;->g:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 35
    iget-boolean v0, p0, Lcom/amap/api/maps/model/CircleOptions;->h:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 36
    iget-object v0, p0, Lcom/amap/api/maps/model/CircleOptions;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    return-void

    .line 35
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zIndex(F)Lcom/amap/api/maps/model/CircleOptions;
    .locals 0

    .prologue
    .line 115
    iput p1, p0, Lcom/amap/api/maps/model/CircleOptions;->g:F

    .line 116
    return-object p0
.end method
