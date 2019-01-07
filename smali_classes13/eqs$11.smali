.class final Leqs$11;
.super Lery;
.source "ContactSearchPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leqs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lery",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Leqs;


# direct methods
.method constructor <init>(Leqs;Leqq;Ljava/lang/String;Leoe;)V
    .locals 0
    .param p1, "this$0"    # Leqs;
    .param p2, "baseSearchPresenter"    # Leqq;
    .param p3, "keyWord"    # Ljava/lang/String;
    .param p4, "queryLog"    # Leoe;

    .prologue
    .line 481
    iput-object p1, p0, Leqs$11;->a:Leqs;

    invoke-direct {p0, p2, p3, p4}, Lery;-><init>(Leqq;Ljava/lang/String;Leoe;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 544
    return-void
.end method

.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 481
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    .line 2036
    iget-object v0, p0, Lery;->b:Lesa;

    invoke-virtual {v0}, Lesa;->a()Leoe;

    move-result-object v3

    .line 1485
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->RECOMMEND_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    if-nez v0, :cond_3

    :cond_0
    move v1, v2

    .line 1486
    :goto_0
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 1485
    :goto_1
    invoke-static {v3, v4, v1, v0, v5}, Letb;->a(Leoe;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 1488
    iget-object v0, p0, Leqs$11;->a:Leqs;

    iget-object v0, v0, Leqs;->b:Leqp$b;

    invoke-interface {v0}, Leqp$b;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2041
    iget-object v0, p0, Lery;->b:Lesa;

    invoke-virtual {v0}, Lesa;->b()Z

    move-result v0

    .line 1492
    if-eqz v0, :cond_2

    .line 1496
    iget-object v0, p0, Leqs$11;->a:Leqs;

    invoke-static {v0, p1}, Leqs;->a(Leqs;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;)V

    .line 1497
    iget-object v0, p0, Leqs$11;->a:Leqs;

    iget-object v1, p0, Leqs$11;->a:Leqs;

    invoke-static {v1}, Leqs;->b(Leqs;)Ljava/util/List;

    move-result-object v1

    .line 2046
    iget-object v3, p0, Lery;->b:Lesa;

    invoke-virtual {v3}, Lesa;->c()Ljava/lang/String;

    move-result-object v3

    .line 3036
    iget-object v4, p0, Lery;->b:Lesa;

    invoke-virtual {v4}, Lesa;->a()Leoe;

    move-result-object v4

    .line 1497
    invoke-static {v0, v1, v3, v4, v5}, Leqs;->a(Leqs;Ljava/util/List;Ljava/lang/String;Leoe;Z)V

    .line 1499
    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->hasMore:Z

    if-nez v0, :cond_5

    .line 1500
    :cond_1
    iget-object v0, p0, Leqs$11;->a:Leqs;

    invoke-static {v0, v2}, Leqs;->a(Leqs;I)I

    .line 1501
    iget-object v0, p0, Leqs$11;->a:Leqs;

    iput v2, v0, Leqs;->g:I

    .line 1502
    iget-object v0, p0, Leqs$11;->a:Leqs;

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Leqs;->a(Leqs;Ljava/lang/String;)Ljava/lang/String;

    .line 1508
    :goto_2
    const-string/jumbo v0, "[Contact]searchRemoteRecommendContact %d %d %d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Leqs$11;->a:Leqs;

    iget v3, v3, Leqs;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v3, p0, Leqs$11;->a:Leqs;

    iget v3, v3, Leqs;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    const/4 v3, 0x2

    iget-object v4, p0, Leqs$11;->a:Leqs;

    invoke-static {v4}, Leqs;->c(Leqs;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    .line 3050
    const-string/jumbo v3, "search"

    invoke-static {v3, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1509
    iget-object v0, p0, Leqs$11;->a:Leqs;

    iget v0, v0, Leqs;->h:I

    const/16 v1, 0x50

    if-le v0, v1, :cond_6

    .line 1510
    iget-object v0, p0, Leqs$11;->a:Leqs;

    iput v2, v0, Leqs;->h:I

    .line 1511
    iget-object v0, p0, Leqs$11;->a:Leqs;

    invoke-virtual {v0}, Leqs;->o()V

    :cond_2
    :goto_3
    return-void

    .line 1485
    :cond_3
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    .line 1486
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto/16 :goto_0

    :cond_4
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->logMap:Ljava/lang/String;

    goto/16 :goto_1

    .line 1504
    :cond_5
    iget-object v0, p0, Leqs$11;->a:Leqs;

    iget v1, v0, Leqs;->g:I

    add-int/lit8 v1, v1, 0x64

    iput v1, v0, Leqs;->g:I

    .line 1505
    iget-object v0, p0, Leqs$11;->a:Leqs;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->nextCursor:Ljava/lang/String;

    invoke-static {v0, v1}, Leqs;->a(Leqs;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 1513
    :cond_6
    iget-object v0, p0, Leqs$11;->a:Leqs;

    invoke-virtual {v0}, Leqs;->a()V

    goto :goto_3
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 524
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 525
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "code"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    const-string/jumbo v1, "message"

    const-string/jumbo v2, "searchRemoteRecommendContact: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    const-string/jumbo v1, "type"

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->RECOMMEND_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    invoke-static {v0}, Letb;->a(Ljava/util/Map;)V

    .line 530
    const-string/jumbo v1, "[Contact]remote contact recommend search exception %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    .line 1050
    const-string/jumbo v3, "search"

    invoke-static {v3, v1, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 532
    iget-object v1, p0, Leqs$11;->a:Leqs;

    iget-object v1, v1, Leqs;->b:Leqp$b;

    invoke-interface {v1}, Leqp$b;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 539
    :goto_0
    return-void

    .line 536
    :cond_0
    iget-object v1, p0, Leqs$11;->a:Leqs;

    invoke-static {v1, v6, v6, v6, v5}, Leqs;->a(Leqs;Ljava/util/List;Ljava/lang/String;Leoe;Z)V

    .line 537
    iget-object v1, p0, Leqs$11;->a:Leqs;

    invoke-static {v1, v4}, Leqs;->a(Leqs;I)I

    .line 538
    iget-object v1, p0, Leqs$11;->a:Leqs;

    invoke-virtual {v1}, Leqs;->a()V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 520
    return-void
.end method
