.class final Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$6;
.super Ljava/lang/Object;
.source "DingSearchResultCategoryFragment.java"

# interfaces
.implements Lcca;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$6;->a:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v0, 0x1

    .line 243
    const-string/jumbo v1, "ding_body"

    if-ne p1, v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$6;->a:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    invoke-static {v1, v0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->a(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;Z)Z

    .line 245
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$6;->a:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    :goto_0
    invoke-static {v1, v0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->b(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;Z)Z

    .line 246
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$6;->a:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    invoke-static {v0, p2}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->b(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;Ljava/util/List;)V

    .line 248
    :cond_0
    return-void

    .line 245
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, "datas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "canLoad"    # Z

    .prologue
    .line 254
    return-void
.end method
