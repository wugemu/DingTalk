.class public Lcom/amap/api/services/a/au;
.super Ljava/lang/Object;
.source "WeatherSearchCore.java"

# interfaces
.implements Lcom/amap/api/services/interfaces/IWeatherSearch;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/services/weather/WeatherSearchQuery;

.field private c:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

.field private d:Lcom/amap/api/services/weather/LocalWeatherLiveResult;

.field private e:Lcom/amap/api/services/weather/LocalWeatherForecastResult;

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/a/au;->f:Landroid/os/Handler;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/au;->a:Landroid/content/Context;

    .line 42
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/au;->f:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/amap/api/services/a/au;Lcom/amap/api/services/weather/LocalWeatherForecastResult;)Lcom/amap/api/services/weather/LocalWeatherForecastResult;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/amap/api/services/a/au;->e:Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    return-object p1
.end method

.method private a()Lcom/amap/api/services/weather/LocalWeatherLiveResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 126
    iget-object v0, p0, Lcom/amap/api/services/a/au;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/o;->a(Landroid/content/Context;)Lcom/amap/api/services/a/o;

    .line 127
    iget-object v0, p0, Lcom/amap/api/services/a/au;->b:Lcom/amap/api/services/weather/WeatherSearchQuery;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string/jumbo v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    new-instance v1, Lcom/amap/api/services/a/ag;

    iget-object v0, p0, Lcom/amap/api/services/a/au;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/services/a/au;->b:Lcom/amap/api/services/weather/WeatherSearchQuery;

    invoke-direct {v1, v0, v2}, Lcom/amap/api/services/a/ag;-><init>(Landroid/content/Context;Lcom/amap/api/services/weather/WeatherSearchQuery;)V

    .line 131
    invoke-virtual {v1}, Lcom/amap/api/services/a/ag;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/weather/WeatherSearchQuery;

    .line 132
    invoke-virtual {v1}, Lcom/amap/api/services/a/ag;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/weather/LocalWeatherLive;

    .line 131
    invoke-static {v0, v1}, Lcom/amap/api/services/weather/LocalWeatherLiveResult;->createPagedResult(Lcom/amap/api/services/weather/WeatherSearchQuery;Lcom/amap/api/services/weather/LocalWeatherLive;)Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/services/a/au;Lcom/amap/api/services/weather/LocalWeatherLiveResult;)Lcom/amap/api/services/weather/LocalWeatherLiveResult;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/amap/api/services/a/au;->d:Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/services/a/au;)Lcom/amap/api/services/weather/WeatherSearchQuery;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/amap/api/services/a/au;->b:Lcom/amap/api/services/weather/WeatherSearchQuery;

    return-object v0
.end method

.method private b()Lcom/amap/api/services/weather/LocalWeatherForecastResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 139
    iget-object v0, p0, Lcom/amap/api/services/a/au;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/o;->a(Landroid/content/Context;)Lcom/amap/api/services/a/o;

    .line 140
    iget-object v0, p0, Lcom/amap/api/services/a/au;->b:Lcom/amap/api/services/weather/WeatherSearchQuery;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string/jumbo v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    new-instance v1, Lcom/amap/api/services/a/af;

    iget-object v0, p0, Lcom/amap/api/services/a/au;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/services/a/au;->b:Lcom/amap/api/services/weather/WeatherSearchQuery;

    invoke-direct {v1, v0, v2}, Lcom/amap/api/services/a/af;-><init>(Landroid/content/Context;Lcom/amap/api/services/weather/WeatherSearchQuery;)V

    .line 144
    invoke-virtual {v1}, Lcom/amap/api/services/a/af;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/weather/WeatherSearchQuery;

    .line 145
    invoke-virtual {v1}, Lcom/amap/api/services/a/af;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/weather/LocalWeatherForecast;

    .line 144
    invoke-static {v0, v1}, Lcom/amap/api/services/weather/LocalWeatherForecastResult;->createPagedResult(Lcom/amap/api/services/weather/WeatherSearchQuery;Lcom/amap/api/services/weather/LocalWeatherForecast;)Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/services/a/au;)Lcom/amap/api/services/weather/LocalWeatherLiveResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/amap/api/services/a/au;->a()Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/services/a/au;)Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/amap/api/services/a/au;->c:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    return-object v0
.end method

.method static synthetic d(Lcom/amap/api/services/a/au;)Lcom/amap/api/services/weather/LocalWeatherLiveResult;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/amap/api/services/a/au;->d:Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    return-object v0
.end method

.method static synthetic e(Lcom/amap/api/services/a/au;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/amap/api/services/a/au;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/amap/api/services/a/au;)Lcom/amap/api/services/weather/LocalWeatherForecastResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/amap/api/services/a/au;->b()Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/amap/api/services/a/au;)Lcom/amap/api/services/weather/LocalWeatherForecastResult;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/amap/api/services/a/au;->e:Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    return-object v0
.end method


# virtual methods
.method public getQuery()Lcom/amap/api/services/weather/WeatherSearchQuery;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/amap/api/services/a/au;->b:Lcom/amap/api/services/weather/WeatherSearchQuery;

    return-object v0
.end method

.method public searchWeatherAsyn()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 68
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amap/api/services/a/au$1;

    invoke-direct {v1, p0}, Lcom/amap/api/services/a/au$1;-><init>(Lcom/amap/api/services/a/au;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 120
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 121
    return-void
.end method

.method public setOnWeatherSearchListener(Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/amap/api/services/a/au;->c:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    .line 155
    return-void
.end method

.method public setQuery(Lcom/amap/api/services/weather/WeatherSearchQuery;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/amap/api/services/a/au;->b:Lcom/amap/api/services/weather/WeatherSearchQuery;

    .line 61
    return-void
.end method
