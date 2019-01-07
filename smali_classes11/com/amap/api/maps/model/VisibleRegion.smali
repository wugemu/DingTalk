.class public final Lcom/amap/api/maps/model/VisibleRegion;
.super Ljava/lang/Object;
.source "VisibleRegion.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps/model/VisibleRegionCreator;


# instance fields
.field private final a:I

.field public final farLeft:Lcom/amap/api/maps/model/LatLng;

.field public final farRight:Lcom/amap/api/maps/model/LatLng;

.field public final latLngBounds:Lcom/amap/api/maps/model/LatLngBounds;

.field public final nearLeft:Lcom/amap/api/maps/model/LatLng;

.field public final nearRight:Lcom/amap/api/maps/model/LatLng;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/amap/api/maps/model/VisibleRegionCreator;

    invoke-direct {v0}, Lcom/amap/api/maps/model/VisibleRegionCreator;-><init>()V

    sput-object v0, Lcom/amap/api/maps/model/VisibleRegion;->CREATOR:Lcom/amap/api/maps/model/VisibleRegionCreator;

    return-void
.end method

.method constructor <init>(ILcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLngBounds;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/amap/api/maps/model/VisibleRegion;->a:I

    .line 46
    iput-object p2, p0, Lcom/amap/api/maps/model/VisibleRegion;->nearLeft:Lcom/amap/api/maps/model/LatLng;

    .line 47
    iput-object p3, p0, Lcom/amap/api/maps/model/VisibleRegion;->nearRight:Lcom/amap/api/maps/model/LatLng;

    .line 48
    iput-object p4, p0, Lcom/amap/api/maps/model/VisibleRegion;->farLeft:Lcom/amap/api/maps/model/LatLng;

    .line 49
    iput-object p5, p0, Lcom/amap/api/maps/model/VisibleRegion;->farRight:Lcom/amap/api/maps/model/LatLng;

    .line 50
    iput-object p6, p0, Lcom/amap/api/maps/model/VisibleRegion;->latLngBounds:Lcom/amap/api/maps/model/LatLngBounds;

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLngBounds;)V
    .locals 7

    .prologue
    .line 68
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/maps/model/VisibleRegion;-><init>(ILcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLngBounds;)V

    .line 69
    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/amap/api/maps/model/VisibleRegion;->a:I

    return v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 78
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

    .line 99
    if-ne p0, p1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    instance-of v2, p1, Lcom/amap/api/maps/model/VisibleRegion;

    if-nez v2, :cond_2

    move v0, v1

    .line 102
    goto :goto_0

    .line 103
    :cond_2
    check-cast p1, Lcom/amap/api/maps/model/VisibleRegion;

    .line 104
    iget-object v2, p0, Lcom/amap/api/maps/model/VisibleRegion;->nearLeft:Lcom/amap/api/maps/model/LatLng;

    iget-object v3, p1, Lcom/amap/api/maps/model/VisibleRegion;->nearLeft:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v2, v3}, Lcom/amap/api/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amap/api/maps/model/VisibleRegion;->nearRight:Lcom/amap/api/maps/model/LatLng;

    iget-object v3, p1, Lcom/amap/api/maps/model/VisibleRegion;->nearRight:Lcom/amap/api/maps/model/LatLng;

    .line 105
    invoke-virtual {v2, v3}, Lcom/amap/api/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amap/api/maps/model/VisibleRegion;->farLeft:Lcom/amap/api/maps/model/LatLng;

    iget-object v3, p1, Lcom/amap/api/maps/model/VisibleRegion;->farLeft:Lcom/amap/api/maps/model/LatLng;

    .line 106
    invoke-virtual {v2, v3}, Lcom/amap/api/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amap/api/maps/model/VisibleRegion;->farRight:Lcom/amap/api/maps/model/LatLng;

    iget-object v3, p1, Lcom/amap/api/maps/model/VisibleRegion;->farRight:Lcom/amap/api/maps/model/LatLng;

    .line 107
    invoke-virtual {v2, v3}, Lcom/amap/api/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amap/api/maps/model/VisibleRegion;->latLngBounds:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v3, p1, Lcom/amap/api/maps/model/VisibleRegion;->latLngBounds:Lcom/amap/api/maps/model/LatLngBounds;

    .line 108
    invoke-virtual {v2, v3}, Lcom/amap/api/maps/model/LatLngBounds;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 82
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/maps/model/VisibleRegion;->nearLeft:Lcom/amap/api/maps/model/LatLng;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/amap/api/maps/model/VisibleRegion;->nearRight:Lcom/amap/api/maps/model/LatLng;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/amap/api/maps/model/VisibleRegion;->farLeft:Lcom/amap/api/maps/model/LatLng;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/amap/api/maps/model/VisibleRegion;->farRight:Lcom/amap/api/maps/model/LatLng;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/amap/api/maps/model/VisibleRegion;->latLngBounds:Lcom/amap/api/maps/model/LatLngBounds;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/amap/api/mapcore/util/en;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 112
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "nearLeft"

    iget-object v3, p0, Lcom/amap/api/maps/model/VisibleRegion;->nearLeft:Lcom/amap/api/maps/model/LatLng;

    .line 113
    invoke-static {v2, v3}, Lcom/amap/api/mapcore/util/en;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "nearRight"

    iget-object v3, p0, Lcom/amap/api/maps/model/VisibleRegion;->nearRight:Lcom/amap/api/maps/model/LatLng;

    .line 114
    invoke-static {v2, v3}, Lcom/amap/api/mapcore/util/en;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "farLeft"

    iget-object v3, p0, Lcom/amap/api/maps/model/VisibleRegion;->farLeft:Lcom/amap/api/maps/model/LatLng;

    .line 115
    invoke-static {v2, v3}, Lcom/amap/api/mapcore/util/en;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "farRight"

    iget-object v3, p0, Lcom/amap/api/maps/model/VisibleRegion;->farRight:Lcom/amap/api/maps/model/LatLng;

    .line 116
    invoke-static {v2, v3}, Lcom/amap/api/mapcore/util/en;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "latLngBounds"

    iget-object v3, p0, Lcom/amap/api/maps/model/VisibleRegion;->latLngBounds:Lcom/amap/api/maps/model/LatLngBounds;

    .line 117
    invoke-static {v2, v3}, Lcom/amap/api/mapcore/util/en;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 112
    invoke-static {v0}, Lcom/amap/api/mapcore/util/en;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 73
    invoke-static {p0, p1, p2}, Lcom/amap/api/maps/model/VisibleRegionCreator;->a(Lcom/amap/api/maps/model/VisibleRegion;Landroid/os/Parcel;I)V

    .line 74
    return-void
.end method
