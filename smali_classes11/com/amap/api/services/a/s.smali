.class public Lcom/amap/api/services/a/s;
.super Lcom/amap/api/services/a/b;
.source "NearbySearchHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/services/a/b",
        "<",
        "Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;",
        "Lcom/amap/api/services/nearby/NearbySearchResult;",
        ">;"
    }
.end annotation


# instance fields
.field private h:Landroid/content/Context;

.field private i:Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/a/b;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 42
    iput-object p1, p0, Lcom/amap/api/services/a/s;->h:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/amap/api/services/a/s;->i:Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;

    .line 45
    return-void
.end method


# virtual methods
.method protected synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/amap/api/services/a/s;->d(Ljava/lang/String;)Lcom/amap/api/services/nearby/NearbySearchResult;

    move-result-object v0

    return-object v0
.end method

.method protected d(Ljava/lang/String;)Lcom/amap/api/services/nearby/NearbySearchResult;
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
    const/4 v0, 0x1

    .line 69
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    iget-object v2, p0, Lcom/amap/api/services/a/s;->i:Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;

    invoke-virtual {v2}, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->getType()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v1, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 72
    new-instance v0, Lcom/amap/api/services/nearby/NearbySearchResult;

    invoke-direct {v0}, Lcom/amap/api/services/nearby/NearbySearchResult;-><init>()V

    .line 73
    invoke-virtual {v0, v1}, Lcom/amap/api/services/nearby/NearbySearchResult;->setNearbyInfoList(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_1
    return-object v0

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    const-string/jumbo v1, "NearbySearchHandler"

    const-string/jumbo v2, "paseJSON"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected e()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 50
    const-string/jumbo v1, "key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/services/a/s;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/services/a/aw;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    iget-object v1, p0, Lcom/amap/api/services/a/s;->i:Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->getCenterPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    .line 53
    const-string/jumbo v2, "&center="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 54
    const-string/jumbo v1, "&radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/services/a/s;->i:Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;

    invoke-virtual {v2}, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->getRadius()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 58
    const-string/jumbo v1, "&searchtype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/services/a/s;->i:Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;

    invoke-virtual {v2}, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 60
    const-string/jumbo v1, "&timerange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/services/a/s;->i:Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;

    invoke-virtual {v2}, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->getTimeRange()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amap/api/services/a/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/nearby/around"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
