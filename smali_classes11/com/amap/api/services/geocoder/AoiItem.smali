.class public Lcom/amap/api/services/geocoder/AoiItem;
.super Ljava/lang/Object;
.source "AoiItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/geocoder/AoiItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/amap/api/services/core/LatLonPoint;

.field private e:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcom/amap/api/services/geocoder/AoiItem$1;

    invoke-direct {v0}, Lcom/amap/api/services/geocoder/AoiItem$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/geocoder/AoiItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/geocoder/AoiItem;->a:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/geocoder/AoiItem;->b:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/geocoder/AoiItem;->c:Ljava/lang/String;

    .line 112
    const-class v0, Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    iput-object v0, p0, Lcom/amap/api/services/geocoder/AoiItem;->d:Lcom/amap/api/services/core/LatLonPoint;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/geocoder/AoiItem;->e:Ljava/lang/Float;

    .line 114
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public getAdCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/amap/api/services/geocoder/AoiItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getAoiArea()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/amap/api/services/geocoder/AoiItem;->e:Ljava/lang/Float;

    return-object v0
.end method

.method public getAoiCenterPoint()Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amap/api/services/geocoder/AoiItem;->d:Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method public getAoiId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/amap/api/services/geocoder/AoiItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getAoiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/amap/api/services/geocoder/AoiItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setAdcode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/amap/api/services/geocoder/AoiItem;->c:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setArea(Ljava/lang/Float;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/amap/api/services/geocoder/AoiItem;->e:Ljava/lang/Float;

    .line 103
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/amap/api/services/geocoder/AoiItem;->a:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setLocation(Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/amap/api/services/geocoder/AoiItem;->d:Lcom/amap/api/services/core/LatLonPoint;

    .line 95
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/amap/api/services/geocoder/AoiItem;->b:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/amap/api/services/geocoder/AoiItem;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/amap/api/services/geocoder/AoiItem;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/amap/api/services/geocoder/AoiItem;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/amap/api/services/geocoder/AoiItem;->d:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 147
    iget-object v0, p0, Lcom/amap/api/services/geocoder/AoiItem;->e:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 148
    return-void
.end method
