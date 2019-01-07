.class final Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$5;
.super Ljava/lang/Object;
.source "MyGroupSearchPresenter.java"

# interfaces
.implements Lcmb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcmb",
        "<",
        "Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    .prologue
    .line 476
    iput-object p1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$5;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iput-object p2, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 544
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$5;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->b:Leqp$b;

    invoke-interface {v0}, Leqp$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$5;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->b:Leqp$b;

    const-string/jumbo v1, "-408"

    invoke-interface {v0, v1, p2}, Leqp$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$5;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->a(Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;Z)V

    .line 548
    const-string/jumbo v0, "[Group] remote local timeout"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 2050
    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 550
    :cond_0
    return-void
.end method

.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x50

    const/4 v2, 0x0

    .line 476
    check-cast p1, Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;

    .line 2480
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$5;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget-object v3, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->c:Leoe;

    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MY_GROUP_SERVER:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;->conversationList:Ljava/util/List;

    if-nez v0, :cond_5

    :cond_0
    move v1, v2

    .line 2481
    :goto_0
    if-nez p1, :cond_6

    const/4 v0, 0x0

    .line 2480
    :goto_1
    invoke-static {v3, v4, v1, v0, v6}, Letb;->a(Leoe;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 2483
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$5;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->b:Leqp$b;

    invoke-interface {v0}, Leqp$b;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2487
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$5;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$5;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget-object v1, v1, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/search/utils/SearchUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2492
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p1, Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;->conversationList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;->conversationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_7

    .line 2493
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$5;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    sget-object v1, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;->None:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;

    .line 3087
    iput-object v1, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->m:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;

    .line 2494
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$5;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->g:I

    .line 2495
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$5;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->f:Z

    .line 2500
    :goto_2
    if-eqz p1, :cond_2

    .line 2501
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$5;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget-object v1, p1, Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;->conversationList:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$5;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->a(Ljava/util/List;Ljava/lang/String;Z)V

    .line 2503
    :cond_2
    const-string/jumbo v0, "[Group]searchRemoteGroups %d %d %d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$5;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget v4, v4, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$5;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget v4, v4, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$5;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    .line 4087
    iget-object v4, v4, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->m:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;

    .line 2503
    invoke-virtual {v4}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    .line 5050
    const-string/jumbo v3, "search"

    invoke-static {v3, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2509
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$5;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget-boolean v0, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$5;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget v0, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->h:I

    if-le v0, v5, :cond_9

    .line 2510
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$5;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iput v2, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->h:I

    .line 2511
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$5;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    invoke-virtual {v0}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->o()V

    .line 2516
    :cond_4
    :goto_3
    return-void

    .line 2480
    :cond_5
    iget-object v0, p1, Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;->conversationList:Ljava/util/List;

    .line 2481
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto/16 :goto_0

    :cond_6
    iget-object v0, p1, Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;->logMap:Ljava/lang/String;

    goto/16 :goto_1

    .line 2497
    :cond_7
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$5;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget v1, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->g:I

    add-int/lit8 v1, v1, 0x64

    iput v1, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->g:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 2505
    :catch_0
    move-exception v0

    .line 2506
    :try_start_2
    const-string/jumbo v1, "searchRemoteGroups"

    invoke-static {v1, v0}, Letc;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2509
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$5;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget-boolean v0, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->f:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$5;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget v0, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->h:I

    if-le v0, v5, :cond_a

    .line 2510
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$5;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iput v2, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->h:I

    .line 2511
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$5;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    invoke-virtual {v0}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->o()V

    goto :goto_3

    .line 2514
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$5;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    invoke-virtual {v0}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->a()V

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$5;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    invoke-virtual {v0}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->a()V

    goto :goto_3

    .line 2509
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$5;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget-boolean v1, v1, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->f:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$5;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget v1, v1, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->h:I

    if-le v1, v5, :cond_c

    .line 2510
    :cond_b
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$5;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iput v2, v1, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->h:I

    .line 2511
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$5;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    invoke-virtual {v1}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->o()V

    .line 2514
    :goto_4
    throw v0

    :cond_c
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$5;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    invoke-virtual {v1}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->a()V

    goto :goto_4
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 526
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 527
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "code"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    const-string/jumbo v1, "message"

    const-string/jumbo v2, "searchConversation: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    const-string/jumbo v1, "type"

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MY_GROUP_SERVER:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    invoke-static {v0}, Letb;->a(Ljava/util/Map;)V

    .line 532
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/statistics/Statistics;

    const/16 v2, 0x34be

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->commitFaultEvent(I)V

    .line 533
    const-string/jumbo v1, "[Group] remote exception %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    .line 1050
    const-string/jumbo v3, "search"

    invoke-static {v3, v1, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 535
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$5;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget-object v1, v1, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->b:Leqp$b;

    invoke-interface {v1}, Leqp$b;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 540
    :goto_0
    return-void

    .line 539
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$5;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    invoke-virtual {v1}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->o()V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 522
    return-void
.end method
