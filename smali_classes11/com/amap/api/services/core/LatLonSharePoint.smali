.class public Lcom/amap/api/services/core/LatLonSharePoint;
.super Lcom/amap/api/services/core/LatLonPoint;
.source "LatLonSharePoint.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/core/LatLonSharePoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/amap/api/services/core/LatLonSharePoint$1;

    invoke-direct {v0}, Lcom/amap/api/services/core/LatLonSharePoint$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/core/LatLonSharePoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DDLjava/lang/String;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amap/api/services/core/LatLonPoint;-><init>(DD)V

    .line 22
    iput-object p5, p0, Lcom/amap/api/services/core/LatLonSharePoint;->a:Ljava/lang/String;

    .line 24
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/amap/api/services/core/LatLonPoint;-><init>(Landroid/os/Parcel;)V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/LatLonSharePoint;->a:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 87
    if-ne p0, p1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    invoke-super {p0, p1}, Lcom/amap/api/services/core/LatLonPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 90
    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 92
    goto :goto_0

    .line 93
    :cond_3
    check-cast p1, Lcom/amap/api/services/core/LatLonSharePoint;

    .line 94
    iget-object v2, p0, Lcom/amap/api/services/core/LatLonSharePoint;->a:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 95
    iget-object v2, p1, Lcom/amap/api/services/core/LatLonSharePoint;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 96
    goto :goto_0

    .line 97
    :cond_4
    iget-object v2, p0, Lcom/amap/api/services/core/LatLonSharePoint;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/core/LatLonSharePoint;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 98
    goto :goto_0
.end method

.method public getSharePointName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/amap/api/services/core/LatLonSharePoint;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 73
    invoke-super {p0}, Lcom/amap/api/services/core/LatLonPoint;->hashCode()I

    move-result v0

    .line 74
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/core/LatLonSharePoint;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 75
    :goto_0
    add-int/2addr v0, v1

    .line 76
    return v0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/core/LatLonSharePoint;->a:Ljava/lang/String;

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setSharePointName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/amap/api/services/core/LatLonSharePoint;->a:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/amap/api/services/core/LatLonPoint;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/services/core/LatLonSharePoint;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lcom/amap/api/services/core/LatLonPoint;->writeToParcel(Landroid/os/Parcel;I)V

    .line 67
    iget-object v0, p0, Lcom/amap/api/services/core/LatLonSharePoint;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    return-void
.end method
