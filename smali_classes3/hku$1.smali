.class final Lhku$1;
.super Ljava/lang/Object;
.source "SearchLocationAdapter.java"

# interfaces
.implements Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhku;->a(Landroid/content/Context;Ljava/lang/String;DDIIILjava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)Lhku;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/Callback;I)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lhku$1;->a:Lcom/alibaba/wukong/Callback;

    iput p2, p0, Lhku$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPoiItemSearched(Lcom/amap/api/services/core/PoiItem;I)V
    .locals 2
    .param p1, "poiItem"    # Lcom/amap/api/services/core/PoiItem;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 83
    iget-object v0, p0, Lhku$1;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lhku$1;->a:Lcom/alibaba/wukong/Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 86
    :cond_0
    return-void
.end method

.method public final onPoiSearched(Lcom/amap/api/services/poisearch/PoiResult;I)V
    .locals 7
    .param p1, "poiResult"    # Lcom/amap/api/services/poisearch/PoiResult;
    .param p2, "rCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 56
    const-string/jumbo v2, "lightapp"

    const-string/jumbo v3, ""

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "onPoiSearched "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "rCode:"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 57
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 56
    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v2, p0, Lhku$1;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v2, :cond_1

    .line 60
    packed-switch p2, :pswitch_data_0

    .line 77
    :cond_0
    iget-object v2, p0, Lhku$1;->a:Lcom/alibaba/wukong/Callback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 79
    :cond_1
    :goto_0
    return-void

    .line 62
    :pswitch_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/services/poisearch/PoiResult;->getQuery()Lcom/amap/api/services/poisearch/PoiSearch$Query;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 63
    new-instance v1, Lhku$a;

    invoke-direct {v1}, Lhku$a;-><init>()V

    .line 64
    .local v1, "result":Lhku$a;
    invoke-virtual {p1}, Lcom/amap/api/services/poisearch/PoiResult;->getPageCount()I

    move-result v2

    iput v2, v1, Lhku$a;->a:I

    .line 65
    invoke-virtual {p1}, Lcom/amap/api/services/poisearch/PoiResult;->getPois()Ljava/util/ArrayList;

    move-result-object v0

    .line 66
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/amap/api/services/core/PoiItem;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 67
    iget v3, p0, Lhku$1;->b:I

    .line 1171
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    if-gtz v3, :cond_4

    .line 68
    :cond_2
    :goto_1
    iput-object v0, v1, Lhku$a;->b:Ljava/util/List;

    .line 70
    :cond_3
    iget-object v2, p0, Lhku$1;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v2, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 1175
    :cond_4
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1176
    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1177
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/services/core/PoiItem;

    .line 1178
    if-eqz v2, :cond_5

    .line 1181
    invoke-virtual {v2}, Lcom/amap/api/services/core/PoiItem;->getDistance()I

    move-result v2

    if-le v2, v3, :cond_5

    .line 1182
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
