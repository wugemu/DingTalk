.class public Lcom/amap/api/services/weather/WeatherSearch;
.super Ljava/lang/Object;
.source "WeatherSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/services/interfaces/IWeatherSearch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/weather/WeatherSearch;->a:Lcom/amap/api/services/interfaces/IWeatherSearch;

    .line 25
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/amap/api/services/a/h;->a(Z)Lcom/amap/api/services/a/be;

    move-result-object v1

    const-string/jumbo v2, "com.amap.api.services.dynamic.WeatherSearchWrapper"

    const-class v3, Lcom/amap/api/services/a/au;

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

    check-cast v0, Lcom/amap/api/services/interfaces/IWeatherSearch;

    iput-object v0, p0, Lcom/amap/api/services/weather/WeatherSearch;->a:Lcom/amap/api/services/interfaces/IWeatherSearch;
    :try_end_0
    .catch Lcom/amap/api/services/a/av; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    iget-object v0, p0, Lcom/amap/api/services/weather/WeatherSearch;->a:Lcom/amap/api/services/interfaces/IWeatherSearch;

    if-nez v0, :cond_0

    .line 31
    :try_start_1
    new-instance v0, Lcom/amap/api/services/a/au;

    invoke-direct {v0, p1}, Lcom/amap/api/services/a/au;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/services/weather/WeatherSearch;->a:Lcom/amap/api/services/interfaces/IWeatherSearch;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 36
    :cond_0
    :goto_1
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Lcom/amap/api/services/a/av;->printStackTrace()V

    goto :goto_0

    .line 32
    :catch_1
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getQuery()Lcom/amap/api/services/weather/WeatherSearchQuery;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/amap/api/services/weather/WeatherSearch;->a:Lcom/amap/api/services/interfaces/IWeatherSearch;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/amap/api/services/weather/WeatherSearch;->a:Lcom/amap/api/services/interfaces/IWeatherSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IWeatherSearch;->getQuery()Lcom/amap/api/services/weather/WeatherSearchQuery;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public searchWeatherAsyn()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/amap/api/services/weather/WeatherSearch;->a:Lcom/amap/api/services/interfaces/IWeatherSearch;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/amap/api/services/weather/WeatherSearch;->a:Lcom/amap/api/services/interfaces/IWeatherSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IWeatherSearch;->searchWeatherAsyn()V

    .line 69
    :cond_0
    return-void
.end method

.method public setOnWeatherSearchListener(Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/amap/api/services/weather/WeatherSearch;->a:Lcom/amap/api/services/interfaces/IWeatherSearch;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/amap/api/services/weather/WeatherSearch;->a:Lcom/amap/api/services/interfaces/IWeatherSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IWeatherSearch;->setOnWeatherSearchListener(Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;)V

    .line 80
    :cond_0
    return-void
.end method

.method public setQuery(Lcom/amap/api/services/weather/WeatherSearchQuery;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/amap/api/services/weather/WeatherSearch;->a:Lcom/amap/api/services/interfaces/IWeatherSearch;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/amap/api/services/weather/WeatherSearch;->a:Lcom/amap/api/services/interfaces/IWeatherSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IWeatherSearch;->setQuery(Lcom/amap/api/services/weather/WeatherSearchQuery;)V

    .line 59
    :cond_0
    return-void
.end method
