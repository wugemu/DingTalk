.class public Lcom/amap/api/services/busline/BusStationSearch;
.super Ljava/lang/Object;
.source "BusStationSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/services/interfaces/IBusStationSearch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/busline/BusStationQuery;)V
    .locals 6

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/amap/api/services/a/h;->a(Z)Lcom/amap/api/services/a/be;

    move-result-object v1

    const-string/jumbo v2, "com.amap.api.services.dynamic.BusStationSearchWrapper"

    const-class v3, Lcom/amap/api/services/a/ak;

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    const-class v5, Lcom/amap/api/services/busline/BusStationQuery;

    aput-object v5, v4, v0

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 v0, 0x1

    aput-object p2, v5, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/amap/api/services/a/cf;->a(Landroid/content/Context;Lcom/amap/api/services/a/be;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/interfaces/IBusStationSearch;

    iput-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->a:Lcom/amap/api/services/interfaces/IBusStationSearch;
    :try_end_0
    .catch Lcom/amap/api/services/a/av; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->a:Lcom/amap/api/services/interfaces/IBusStationSearch;

    if-nez v0, :cond_0

    .line 32
    :try_start_1
    new-instance v0, Lcom/amap/api/services/a/ak;

    invoke-direct {v0, p1, p2}, Lcom/amap/api/services/a/ak;-><init>(Landroid/content/Context;Lcom/amap/api/services/busline/BusStationQuery;)V

    iput-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->a:Lcom/amap/api/services/interfaces/IBusStationSearch;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 37
    :cond_0
    :goto_1
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Lcom/amap/api/services/a/av;->printStackTrace()V

    goto :goto_0

    .line 33
    :catch_1
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getQuery()Lcom/amap/api/services/busline/BusStationQuery;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->a:Lcom/amap/api/services/interfaces/IBusStationSearch;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->a:Lcom/amap/api/services/interfaces/IBusStationSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IBusStationSearch;->getQuery()Lcom/amap/api/services/busline/BusStationQuery;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public searchBusStation()Lcom/amap/api/services/busline/BusStationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->a:Lcom/amap/api/services/interfaces/IBusStationSearch;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->a:Lcom/amap/api/services/interfaces/IBusStationSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IBusStationSearch;->searchBusStation()Lcom/amap/api/services/busline/BusStationResult;

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public searchBusStationAsyn()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->a:Lcom/amap/api/services/interfaces/IBusStationSearch;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->a:Lcom/amap/api/services/interfaces/IBusStationSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IBusStationSearch;->searchBusStationAsyn()V

    .line 74
    :cond_0
    return-void
.end method

.method public setOnBusStationSearchListener(Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->a:Lcom/amap/api/services/interfaces/IBusStationSearch;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->a:Lcom/amap/api/services/interfaces/IBusStationSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IBusStationSearch;->setOnBusStationSearchListener(Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;)V

    .line 63
    :cond_0
    return-void
.end method

.method public setQuery(Lcom/amap/api/services/busline/BusStationQuery;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->a:Lcom/amap/api/services/interfaces/IBusStationSearch;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->a:Lcom/amap/api/services/interfaces/IBusStationSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IBusStationSearch;->setQuery(Lcom/amap/api/services/busline/BusStationQuery;)V

    .line 85
    :cond_0
    return-void
.end method
