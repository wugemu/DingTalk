.class public Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;
.super Ljava/lang/Object;
.source "GoogleLocationClient.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field public a:Lcin;

.field private c:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private d:Landroid/location/Geocoder;

.field private e:Landroid/content/Context;

.field private f:Lcom/google/android/gms/location/LocationRequest;

.field private g:Lcom/google/android/gms/location/LocationListener;

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v0, 0x1388

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->h:I

    .line 40
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->i:I

    .line 41
    const/16 v0, 0xa

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->j:I

    .line 44
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->e:Landroid/content/Context;

    .line 45
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 48
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->c:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;)Lcin;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->a:Lcin;

    return-object v0
.end method

.method private a(Landroid/location/Location;)Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;
    .locals 12
    .param p1, "location"    # Landroid/location/Location;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 102
    if-nez p1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-object v9

    .line 105
    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 106
    .local v2, "lantitude":D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 109
    .local v4, "longitude":D
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->d:Landroid/location/Geocoder;

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v7

    .line 110
    .local v7, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_3

    .line 111
    :cond_2
    sget-object v1, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->b:Ljava/lang/String;

    const-string/jumbo v6, "google address not found"

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v1, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;

    invoke-direct {v1, p1}, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;-><init>(Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v1

    goto :goto_0

    .line 114
    .end local v7    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :catch_0
    move-exception v8

    .line 115
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "lightapp"

    sget-object v6, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->b:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "address exception: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v6, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v7    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :cond_3
    new-instance v9, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;

    invoke-direct {v9, p1}, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;-><init>(Landroid/location/Location;)V

    .line 119
    .local v9, "mapLocation":Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 120
    .local v0, "address":Landroid/location/Address;
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0, v10}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->setAddress(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->setCountry(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->setCity(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->setStreet(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;Landroid/location/Location;)Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->a(Landroid/location/Location;)Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->c:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;)Lcom/google/android/gms/location/LocationRequest;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->f:Lcom/google/android/gms/location/LocationRequest;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;)Lcom/google/android/gms/location/LocationListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->g:Lcom/google/android/gms/location/LocationListener;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 52
    new-instance v0, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient$1;-><init>(Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->g:Lcom/google/android/gms/location/LocationListener;

    .line 60
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->c:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->c:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 63
    :cond_0
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const/16 v1, 0x64

    .line 64
    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->h:I

    int-to-long v2, v1

    .line 65
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->i:I

    int-to-long v2, v1

    .line 66
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->f:Lcom/google/android/gms/location/LocationRequest;

    .line 67
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->d:Landroid/location/Geocoder;

    .line 68
    return-void
.end method

.method public final b()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 79
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->c:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->blockingConnect()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    .line 80
    .local v0, "result":Lcom/google/android/gms/common/ConnectionResult;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    const-string/jumbo v1, "lightapp"

    sget-object v2, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "google client connect faild, errormsg="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/4 v1, 0x0

    .line 91
    :goto_0
    return v1

    .line 85
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient$2;-><init>(Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 91
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->c:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->c:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->g:Lcom/google/android/gms/location/LocationListener;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/location/FusedLocationProviderApi;->removeLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 97
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->c:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 99
    :cond_0
    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 141
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .param p1, "result"    # Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Connection failed: ConnectionResult.getErrorCode() = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->c:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 146
    return-void
.end method
