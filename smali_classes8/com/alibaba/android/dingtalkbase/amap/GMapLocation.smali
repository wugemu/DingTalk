.class public Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;
.super Landroid/location/Location;
.source "GMapLocation.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mCity:Ljava/lang/String;

.field private mCountry:Ljava/lang/String;

.field private mErrorCode:I

.field private mLatitude:D

.field private mLongitude:D

.field private mStreet:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const-wide/16 v2, 0x0

    .line 16
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 7
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->mCountry:Ljava/lang/String;

    .line 8
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->mAddress:Ljava/lang/String;

    .line 9
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->mCity:Ljava/lang/String;

    .line 10
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->mStreet:Ljava/lang/String;

    .line 11
    iput-wide v2, p0, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->mLatitude:D

    .line 12
    iput-wide v2, p0, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->mLongitude:D

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->mErrorCode:I

    .line 17
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->mLatitude:D

    .line 18
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->mLongitude:D

    .line 19
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->mErrorCode:I

    return v0
.end method

.method public getLatitude()D
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->mLongitude:D

    return-wide v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->mStreet:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAddress"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->mAddress:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCity"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->mCity:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCountry"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->mCountry:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setErrorCode(I)V
    .locals 0
    .param p1, "mErrorCode"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->mErrorCode:I

    .line 76
    return-void
.end method

.method public setLatitude(D)V
    .locals 1
    .param p1, "mLatitude"    # D

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->mLatitude:D

    .line 59
    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .param p1, "mLongitude"    # D

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->mLongitude:D

    .line 67
    return-void
.end method

.method public setStreet(Ljava/lang/String;)V
    .locals 0
    .param p1, "mStreet"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->mStreet:Ljava/lang/String;

    .line 51
    return-void
.end method
