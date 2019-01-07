.class public Lcom/amap/api/services/a/ar;
.super Ljava/lang/Object;
.source "RoutePOISearchCore.java"

# interfaces
.implements Lcom/amap/api/services/interfaces/IRoutePOISearch;


# instance fields
.field private a:Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

.field private b:Landroid/content/Context;

.field private c:Lcom/amap/api/services/routepoisearch/RoutePOISearch$OnRoutePOISearchListener;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/a/ar;->d:Landroid/os/Handler;

    .line 30
    iput-object p1, p0, Lcom/amap/api/services/a/ar;->b:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/amap/api/services/a/ar;->a:Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    .line 32
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ar;->d:Landroid/os/Handler;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/amap/api/services/a/ar;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/amap/api/services/a/ar;->d:Landroid/os/Handler;

    return-object v0
.end method

.method private a()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 88
    iget-object v1, p0, Lcom/amap/api/services/a/ar;->a:Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    if-nez v1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/amap/api/services/a/ar;->a:Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->getSearchType()Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/services/a/ar;->a:Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    .line 92
    invoke-virtual {v1}, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->getFrom()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/services/a/ar;->a:Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    .line 93
    invoke-virtual {v1}, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->getTo()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/amap/api/services/a/ar;)Lcom/amap/api/services/routepoisearch/RoutePOISearch$OnRoutePOISearchListener;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/amap/api/services/a/ar;->c:Lcom/amap/api/services/routepoisearch/RoutePOISearch$OnRoutePOISearchListener;

    return-object v0
.end method


# virtual methods
.method public getQuery()Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/amap/api/services/a/ar;->a:Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    return-object v0
.end method

.method public searchRoutePOI()Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;
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
    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ar;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/o;->a(Landroid/content/Context;)Lcom/amap/api/services/a/o;

    .line 75
    invoke-direct {p0}, Lcom/amap/api/services/a/ar;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string/jumbo v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    const-string/jumbo v1, "RoutePOISearchCore"

    const-string/jumbo v2, "searchRoutePOI"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    throw v0

    .line 78
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/services/a/ar;->a:Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->clone()Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    move-result-object v0

    .line 79
    new-instance v1, Lcom/amap/api/services/a/ac;

    iget-object v2, p0, Lcom/amap/api/services/a/ar;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/amap/api/services/a/ac;-><init>(Landroid/content/Context;Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;)V

    .line 80
    invoke-virtual {v1}, Lcom/amap/api/services/a/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0
.end method

.method public searchRoutePOIAsyn()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/amap/api/services/a/ar$1;

    invoke-direct {v0, p0}, Lcom/amap/api/services/a/ar$1;-><init>(Lcom/amap/api/services/a/ar;)V

    .line 61
    invoke-virtual {v0}, Lcom/amap/api/services/a/ar$1;->start()V

    .line 62
    return-void
.end method

.method public setQuery(Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/amap/api/services/a/ar;->a:Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    .line 66
    return-void
.end method

.method public setRoutePOISearchListener(Lcom/amap/api/services/routepoisearch/RoutePOISearch$OnRoutePOISearchListener;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/amap/api/services/a/ar;->c:Lcom/amap/api/services/routepoisearch/RoutePOISearch$OnRoutePOISearchListener;

    .line 37
    return-void
.end method
