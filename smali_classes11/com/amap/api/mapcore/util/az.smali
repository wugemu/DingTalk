.class public Lcom/amap/api/mapcore/util/az;
.super Lcom/amap/api/mapcore/util/by;
.source "OfflineInitHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/mapcore/util/by",
        "<",
        "Ljava/lang/String;",
        "Lcom/amap/api/mapcore/util/ay;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/by;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 41
    const-string/jumbo v0, "update"

    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->d:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->e:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->f:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "version"

    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->g:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Lcom/amap/api/mapcore/util/ay;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 47
    new-instance v0, Lcom/amap/api/mapcore/util/ay;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/ay;-><init>()V

    .line 49
    if-nez p1, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 65
    :goto_0
    return-object v0

    .line 53
    :cond_0
    :try_start_0
    const-string/jumbo v1, "update"

    const-string/jumbo v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ay;->a(Z)V

    .line 59
    :cond_1
    :goto_1
    const-string/jumbo v1, "version"

    const-string/jumbo v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ay;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v1

    .line 62
    const-string/jumbo v2, "OfflineInitHandler"

    const-string/jumbo v3, "loadData parseJson"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_2
    :try_start_1
    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ay;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected a()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    const-string/jumbo v1, "010"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/amap/api/mapcore/util/fe$a;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p1, Lcom/amap/api/mapcore/util/fe$a;->o:Lorg/json/JSONObject;

    return-object v0
.end method

.method protected synthetic b(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/az;->a(Lorg/json/JSONObject;)Lcom/amap/api/mapcore/util/ay;

    move-result-object v0

    return-object v0
.end method

.method protected b()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    const-string/jumbo v1, "mapver"

    iget-object v2, p0, Lcom/amap/api/mapcore/util/az;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-object v0
.end method
