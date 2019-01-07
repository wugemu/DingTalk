.class final Lcom/alibaba/android/search/model/DingSearchResultModel$1;
.super Ljava/lang/Object;
.source "DingSearchResultModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/model/DingSearchResultModel;->a(Ljava/util/List;Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;ILcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/wukong/Callback;

.field final synthetic c:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

.field final synthetic d:I


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/alibaba/wukong/Callback;Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;I)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/android/search/model/DingSearchResultModel$1;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/alibaba/android/search/model/DingSearchResultModel$1;->b:Lcom/alibaba/wukong/Callback;

    iput-object p3, p0, Lcom/alibaba/android/search/model/DingSearchResultModel$1;->c:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    iput p4, p0, Lcom/alibaba/android/search/model/DingSearchResultModel$1;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/DingSearchResultModel;>;"
    iget-object v3, p0, Lcom/alibaba/android/search/model/DingSearchResultModel$1;->a:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/search/model/DingSearchResultModel$1;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 65
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/search/model/DingSearchResultModel$1;->b:Lcom/alibaba/wukong/Callback;

    invoke-static {v3, v2}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 80
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/search/model/DingSearchResultModel$1;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 69
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    .line 70
    new-instance v0, Lcom/alibaba/android/search/model/DingSearchResultModel;

    iget-object v4, p0, Lcom/alibaba/android/search/model/DingSearchResultModel$1;->c:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/search/model/DingSearchResultModel;-><init>(Ljava/util/Map;Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;)V

    .line 71
    .local v0, "dingSearchResultModel":Lcom/alibaba/android/search/model/DingSearchResultModel;
    invoke-static {v0}, Lcom/alibaba/android/search/model/DingSearchResultModel;->a(Lcom/alibaba/android/search/model/DingSearchResultModel;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 72
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    iget v5, p0, Lcom/alibaba/android/search/model/DingSearchResultModel$1;->d:I

    if-le v4, v5, :cond_2

    .line 79
    .end local v0    # "dingSearchResultModel":Lcom/alibaba/android/search/model/DingSearchResultModel;
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/search/model/DingSearchResultModel$1;->b:Lcom/alibaba/wukong/Callback;

    invoke-static {v3, v2}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    goto :goto_0
.end method
