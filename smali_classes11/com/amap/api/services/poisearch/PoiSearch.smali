.class public Lcom/amap/api/services/poisearch/PoiSearch;
.super Ljava/lang/Object;
.source "PoiSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;,
        Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;,
        Lcom/amap/api/services/poisearch/PoiSearch$Query;
    }
.end annotation


# static fields
.field public static final CHINESE:Ljava/lang/String; = "zh-CN"

.field public static final ENGLISH:Ljava/lang/String; = "en"


# instance fields
.field private a:Lcom/amap/api/services/interfaces/IPoiSearch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/poisearch/PoiSearch$Query;)V
    .locals 6

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    .line 48
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/amap/api/services/a/h;->a(Z)Lcom/amap/api/services/a/be;

    move-result-object v1

    const-string/jumbo v2, "com.amap.api.services.dynamic.PoiSearchWrapper"

    const-class v3, Lcom/amap/api/services/a/aq;

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    const-class v5, Lcom/amap/api/services/poisearch/PoiSearch$Query;

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

    check-cast v0, Lcom/amap/api/services/interfaces/IPoiSearch;

    iput-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;
    :try_end_0
    .catch Lcom/amap/api/services/a/av; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    if-nez v0, :cond_0

    .line 54
    :try_start_1
    new-instance v0, Lcom/amap/api/services/a/aq;

    invoke-direct {v0, p1, p2}, Lcom/amap/api/services/a/aq;-><init>(Landroid/content/Context;Lcom/amap/api/services/poisearch/PoiSearch$Query;)V

    iput-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 59
    :cond_0
    :goto_1
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Lcom/amap/api/services/a/av;->printStackTrace()V

    goto :goto_0

    .line 55
    :catch_1
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 22
    invoke-static {p0, p1}, Lcom/amap/api/services/poisearch/PoiSearch;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 746
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 747
    const/4 v0, 0x1

    .line 752
    :goto_0
    return v0

    .line 749
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 750
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 752
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBound()Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IPoiSearch;->getBound()Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    move-result-object v0

    .line 202
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IPoiSearch;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getQuery()Lcom/amap/api/services/poisearch/PoiSearch$Query;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IPoiSearch;->getQuery()Lcom/amap/api/services/poisearch/PoiSearch$Query;

    move-result-object v0

    .line 190
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public searchPOI()Lcom/amap/api/services/poisearch/PoiResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IPoiSearch;->searchPOI()Lcom/amap/api/services/poisearch/PoiResult;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public searchPOIAsyn()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IPoiSearch;->searchPOIAsyn()V

    .line 128
    :cond_0
    return-void
.end method

.method public searchPOIId(Ljava/lang/String;)Lcom/amap/api/services/core/PoiItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IPoiSearch;->searchPOIId(Ljava/lang/String;)Lcom/amap/api/services/core/PoiItem;

    .line 142
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public searchPOIIdAsyn(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IPoiSearch;->searchPOIIdAsyn(Ljava/lang/String;)V

    .line 155
    :cond_0
    return-void
.end method

.method public setBound(Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;)V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IPoiSearch;->setBound(Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;)V

    .line 179
    :cond_0
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IPoiSearch;->setLanguage(Ljava/lang/String;)V

    .line 86
    :cond_0
    return-void
.end method

.method public setOnPoiSearchListener(Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IPoiSearch;->setOnPoiSearchListener(Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;)V

    .line 72
    :cond_0
    return-void
.end method

.method public setQuery(Lcom/amap/api/services/poisearch/PoiSearch$Query;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IPoiSearch;->setQuery(Lcom/amap/api/services/poisearch/PoiSearch$Query;)V

    .line 167
    :cond_0
    return-void
.end method
