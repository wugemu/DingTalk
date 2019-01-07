.class public Lcom/amap/api/services/district/DistrictSearch;
.super Ljava/lang/Object;
.source "DistrictSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/services/interfaces/IDistrictSearch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/amap/api/services/a/h;->a(Z)Lcom/amap/api/services/a/be;

    move-result-object v1

    const-string/jumbo v2, "com.amap.api.services.dynamic.DistrictSearchWrapper"

    const-class v3, Lcom/amap/api/services/a/am;

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

    check-cast v0, Lcom/amap/api/services/interfaces/IDistrictSearch;

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;
    :try_end_0
    .catch Lcom/amap/api/services/a/av; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    if-nez v0, :cond_0

    .line 32
    :try_start_1
    new-instance v0, Lcom/amap/api/services/a/am;

    invoke-direct {v0, p1}, Lcom/amap/api/services/a/am;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;
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
.method public getQuery()Lcom/amap/api/services/district/DistrictSearchQuery;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IDistrictSearch;->getQuery()Lcom/amap/api/services/district/DistrictSearchQuery;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public searchDistrictAnsy()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IDistrictSearch;->searchDistrictAnsy()V

    .line 85
    :cond_0
    return-void
.end method

.method public searchDistrictAsyn()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IDistrictSearch;->searchDistrictAsyn()V

    .line 74
    :cond_0
    return-void
.end method

.method public setOnDistrictSearchListener(Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IDistrictSearch;->setOnDistrictSearchListener(Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;)V

    .line 97
    :cond_0
    return-void
.end method

.method public setQuery(Lcom/amap/api/services/district/DistrictSearchQuery;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IDistrictSearch;->setQuery(Lcom/amap/api/services/district/DistrictSearchQuery;)V

    .line 60
    :cond_0
    return-void
.end method
