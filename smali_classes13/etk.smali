.class public final Letk;
.super Ljava/lang/Object;
.source "DingSearchResultHolderFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/android/search/model/DingSearchResultModel;)I
    .locals 3
    .param p0, "dingSearchResultModel"    # Lcom/alibaba/android/search/model/DingSearchResultModel;

    .prologue
    const/4 v0, 0x0

    .line 34
    .line 1144
    iget-object v1, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->e:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    .line 34
    sget-object v2, Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;->SENDER:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    if-ne v1, v2, :cond_1

    .line 39
    :cond_0
    :goto_0
    return v0

    .line 2144
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->e:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    .line 36
    sget-object v2, Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;->BODY:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    if-ne v1, v2, :cond_0

    .line 37
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lemw;I)Letj;
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "adapter"    # Lemw;
    .param p2, "itemViewType"    # I

    .prologue
    .line 44
    if-nez p2, :cond_0

    .line 45
    new-instance v0, Letl;

    invoke-direct {v0, p0, p1}, Letl;-><init>(Landroid/app/Activity;Lemw;)V

    .line 49
    :goto_0
    return-object v0

    .line 46
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 47
    new-instance v0, Leth;

    invoke-direct {v0, p0, p1}, Leth;-><init>(Landroid/app/Activity;Lemw;)V

    goto :goto_0

    .line 49
    :cond_1
    new-instance v0, Letl;

    invoke-direct {v0, p0, p1}, Letl;-><init>(Landroid/app/Activity;Lemw;)V

    goto :goto_0
.end method
