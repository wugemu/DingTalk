.class public final Lcom/amap/api/services/geocoder/GeocodeSearch;
.super Ljava/lang/Object;
.source "GeocodeSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;
    }
.end annotation


# static fields
.field public static final AMAP:Ljava/lang/String; = "autonavi"

.field public static final GPS:Ljava/lang/String; = "gps"


# instance fields
.field private a:Lcom/amap/api/services/interfaces/IGeocodeSearch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/amap/api/services/a/h;->a(Z)Lcom/amap/api/services/a/be;

    move-result-object v1

    const-string/jumbo v2, "com.amap.api.services.dynamic.GeocodeSearchWrapper"

    const-class v3, Lcom/amap/api/services/a/an;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/amap/api/services/a/cf;->a(Landroid/content/Context;Lcom/amap/api/services/a/be;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/interfaces/IGeocodeSearch;

    iput-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeSearch;->a:Lcom/amap/api/services/interfaces/IGeocodeSearch;
    :try_end_0
    .catch Lcom/amap/api/services/a/av; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeSearch;->a:Lcom/amap/api/services/interfaces/IGeocodeSearch;

    if-nez v0, :cond_0

    .line 53
    :try_start_1
    new-instance v0, Lcom/amap/api/services/a/an;

    invoke-direct {v0, p1}, Lcom/amap/api/services/a/an;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeSearch;->a:Lcom/amap/api/services/interfaces/IGeocodeSearch;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 58
    :cond_0
    :goto_1
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Lcom/amap/api/services/a/av;->printStackTrace()V

    goto :goto_0

    .line 54
    :catch_1
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public final getFromLocation(Lcom/amap/api/services/geocoder/RegeocodeQuery;)Lcom/amap/api/services/geocoder/RegeocodeAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeSearch;->a:Lcom/amap/api/services/interfaces/IGeocodeSearch;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeSearch;->a:Lcom/amap/api/services/interfaces/IGeocodeSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IGeocodeSearch;->getFromLocation(Lcom/amap/api/services/geocoder/RegeocodeQuery;)Lcom/amap/api/services/geocoder/RegeocodeAddress;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getFromLocationAsyn(Lcom/amap/api/services/geocoder/RegeocodeQuery;)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeSearch;->a:Lcom/amap/api/services/interfaces/IGeocodeSearch;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeSearch;->a:Lcom/amap/api/services/interfaces/IGeocodeSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IGeocodeSearch;->getFromLocationAsyn(Lcom/amap/api/services/geocoder/RegeocodeQuery;)V

    .line 112
    :cond_0
    return-void
.end method

.method public final getFromLocationName(Lcom/amap/api/services/geocoder/GeocodeQuery;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/services/geocoder/GeocodeQuery;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/geocoder/GeocodeAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeSearch;->a:Lcom/amap/api/services/interfaces/IGeocodeSearch;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeSearch;->a:Lcom/amap/api/services/interfaces/IGeocodeSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IGeocodeSearch;->getFromLocationName(Lcom/amap/api/services/geocoder/GeocodeQuery;)Ljava/util/List;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getFromLocationNameAsyn(Lcom/amap/api/services/geocoder/GeocodeQuery;)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeSearch;->a:Lcom/amap/api/services/interfaces/IGeocodeSearch;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeSearch;->a:Lcom/amap/api/services/interfaces/IGeocodeSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IGeocodeSearch;->getFromLocationNameAsyn(Lcom/amap/api/services/geocoder/GeocodeQuery;)V

    .line 124
    :cond_0
    return-void
.end method

.method public final setOnGeocodeSearchListener(Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeSearch;->a:Lcom/amap/api/services/interfaces/IGeocodeSearch;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeSearch;->a:Lcom/amap/api/services/interfaces/IGeocodeSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IGeocodeSearch;->setOnGeocodeSearchListener(Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;)V

    .line 100
    :cond_0
    return-void
.end method
