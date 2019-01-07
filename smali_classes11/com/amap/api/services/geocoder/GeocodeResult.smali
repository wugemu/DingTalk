.class public Lcom/amap/api/services/geocoder/GeocodeResult;
.super Ljava/lang/Object;
.source "GeocodeResult.java"


# instance fields
.field private a:Lcom/amap/api/services/geocoder/GeocodeQuery;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/geocoder/GeocodeAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amap/api/services/geocoder/GeocodeQuery;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/services/geocoder/GeocodeQuery;",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/geocoder/GeocodeAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeResult;->b:Ljava/util/List;

    .line 23
    iput-object p1, p0, Lcom/amap/api/services/geocoder/GeocodeResult;->a:Lcom/amap/api/services/geocoder/GeocodeQuery;

    .line 24
    iput-object p2, p0, Lcom/amap/api/services/geocoder/GeocodeResult;->b:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method public getGeocodeAddressList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/geocoder/GeocodeAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeResult;->b:Ljava/util/List;

    return-object v0
.end method

.method public getGeocodeQuery()Lcom/amap/api/services/geocoder/GeocodeQuery;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeResult;->a:Lcom/amap/api/services/geocoder/GeocodeQuery;

    return-object v0
.end method

.method public setGeocodeAddressList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/geocoder/GeocodeAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    iput-object p1, p0, Lcom/amap/api/services/geocoder/GeocodeResult;->b:Ljava/util/List;

    .line 61
    return-void
.end method

.method public setGeocodeQuery(Lcom/amap/api/services/geocoder/GeocodeQuery;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/amap/api/services/geocoder/GeocodeResult;->a:Lcom/amap/api/services/geocoder/GeocodeQuery;

    .line 43
    return-void
.end method
