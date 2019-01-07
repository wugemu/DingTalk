.class final Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$2;
.super Ljava/lang/Object;
.source "MyGroupSearchPresenter.java"

# interfaces
.implements Lcca;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iput-object p2, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 13
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

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v12, 0x1

    const/4 v6, 0x0

    .line 290
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget-object v1, v1, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->c:Leoe;

    if-eqz v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget-object v1, v1, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->c:Leoe;

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->RECOMMEND_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    if-nez p2, :cond_2

    move v3, v6

    .line 292
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v9, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget-object v9, v9, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->c:Leoe;

    .line 1148
    iget-wide v10, v9, Leoe;->g:J

    .line 292
    sub-long/2addr v4, v10

    .line 291
    invoke-static/range {v1 .. v6}, Letb;->a(Leoe;Ljava/lang/String;IJZ)V

    .line 295
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget-object v1, v1, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->b:Leqp$b;

    invoke-interface {v1}, Leqp$b;->d()Z

    move-result v1

    if-nez v1, :cond_3

    .line 336
    :cond_1
    :goto_1
    return-void

    .line 292
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    .line 299
    :cond_3
    const-string/jumbo v1, "task_recommend_group"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget-object v2, v2, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alibaba/android/search/utils/SearchUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    if-eqz p2, :cond_4

    .line 308
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 309
    .local v0, "conversaionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->castToDisplay(Ljava/util/Map;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v7

    .line 310
    .local v7, "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    iget-object v2, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    .line 2087
    iget-object v2, v2, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->o:Ljava/util/List;

    .line 310
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 314
    .end local v0    # "conversaionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :cond_4
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_search_remote_recommend_group_search_enable"

    .line 3083
    invoke-virtual {v1, v2, v12}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v8

    .line 315
    .local v8, "searchRemoteRecommend":Z
    if-eqz v8, :cond_6

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    .line 3087
    iget-object v1, v1, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->o:Ljava/util/List;

    .line 315
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    .line 4087
    iget-object v1, v1, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->p:Ljava/lang/String;

    .line 315
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    .line 5087
    iget-object v1, v1, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->o:Ljava/util/List;

    .line 315
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v12, :cond_6

    .line 316
    :cond_5
    const-string/jumbo v1, "[Group]Empty group recommends, remote search"

    new-array v2, v6, [Ljava/lang/Object;

    .line 6050
    const-string/jumbo v3, "search"

    invoke-static {v3, v1, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    invoke-static {v1}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->a(Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;)V

    goto :goto_1

    .line 320
    :cond_6
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    invoke-static {v1}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->b(Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;)V

    .line 323
    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_8

    .line 324
    :cond_7
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    sget-object v2, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;->Local:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;

    .line 6087
    iput-object v2, v1, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->m:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;

    .line 325
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iput v6, v1, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->g:I

    .line 330
    :goto_3
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget v1, v1, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->h:I

    const/16 v2, 0x50

    if-le v1, v2, :cond_9

    .line 331
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iput v6, v1, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->h:I

    .line 332
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    invoke-virtual {v1}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->o()V

    goto/16 :goto_1

    .line 327
    :cond_8
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget v2, v1, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->g:I

    add-int/lit8 v2, v2, 0x64

    iput v2, v1, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->g:I

    goto :goto_3

    .line 334
    :cond_9
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    invoke-virtual {v1}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->a()V

    goto/16 :goto_1
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
    .line 339
    .local p1, "datas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "canLoad"    # Z

    .prologue
    .line 342
    return-void
.end method
