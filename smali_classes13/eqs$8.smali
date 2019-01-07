.class final Leqs$8;
.super Lerz;
.source "ContactSearchPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leqs;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lerz",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
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
    .line 1642
    iput-object p1, p0, Leqs$8;->a:Leqs;

    invoke-direct {p0, p2, p3, p4}, Lerz;-><init>(Leqq;Ljava/lang/String;Leoe;)V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    .line 1642
    check-cast p1, Ljava/util/List;

    .line 2645
    iget-object v0, p0, Leqs$8;->a:Leqs;

    iget-object v0, v0, Leqs;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leqs$8;->a:Leqs;

    iget-object v0, v0, Leqs;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2677
    :cond_0
    :goto_0
    return-void

    .line 2648
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2651
    const/4 v2, 0x0

    .line 2652
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2653
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 2654
    if-eqz v0, :cond_2

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_2

    .line 2657
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2659
    :cond_3
    iget-object v0, p0, Leqs$8;->a:Leqs;

    invoke-static {v0}, Leqs;->k(Leqs;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Leqs$8;->a:Leqs;

    invoke-static {v0}, Leqs;->k(Leqs;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 2660
    iget-object v0, p0, Leqs$8;->a:Leqs;

    invoke-static {v0}, Leqs;->k(Leqs;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/model/BaseModel;

    .line 2661
    if-eqz v0, :cond_4

    instance-of v1, v0, Lcom/alibaba/android/search/model/RecommendContactModel;

    if-eqz v1, :cond_4

    .line 2664
    check-cast v0, Lcom/alibaba/android/search/model/RecommendContactModel;

    .line 2665
    invoke-virtual {v0}, Lcom/alibaba/android/search/model/RecommendContactModel;->getUid()J

    move-result-wide v6

    .line 2666
    cmp-long v1, v6, v10

    if-lez v1, :cond_5

    .line 2667
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/model/RecommendContactModel;->setUserProfileObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 2670
    :cond_5
    iget-object v1, p0, Leqs$8;->a:Leqs;

    invoke-static {v1}, Leqs;->f(Leqs;)J

    move-result-wide v8

    cmp-long v1, v8, v10

    if-lez v1, :cond_8

    iget-object v1, p0, Leqs$8;->a:Leqs;

    invoke-static {v1}, Leqs;->f(Leqs;)J

    move-result-wide v8

    cmp-long v1, v8, v6

    if-nez v1, :cond_8

    .line 2671
    invoke-virtual {v0}, Lcom/alibaba/android/search/model/RecommendContactModel;->getUserIntimacyPushObject()Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    move-result-object v0

    :goto_3
    move-object v2, v0

    .line 2673
    goto :goto_2

    .line 2676
    :cond_6
    if-eqz v2, :cond_7

    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_search_update_click_history_recommend_object"

    invoke-virtual {v0, v1}, Lchx;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2677
    iget-object v0, p0, Leqs$8;->a:Leqs;

    invoke-static {v0, v2}, Leqs;->a(Leqs;Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;)V

    goto/16 :goto_0

    .line 2679
    :cond_7
    iget-object v0, p0, Leqs$8;->a:Leqs;

    iget-object v0, v0, Leqs;->b:Leqp$b;

    iget-object v1, p0, Leqs$8;->a:Leqs;

    iget-object v1, v1, Leqs;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Leqp$b;->a(Ljava/util/List;)V

    .line 2680
    iget-object v0, p0, Leqs$8;->a:Leqs;

    iget-object v0, v0, Leqs;->b:Leqp$b;

    instance-of v0, v0, Leqr$b;

    if-eqz v0, :cond_0

    .line 2681
    iget-object v0, p0, Leqs$8;->a:Leqs;

    iget-object v0, v0, Leqs;->b:Leqp$b;

    check-cast v0, Leqr$b;

    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->RECOMMEND:Lcom/alibaba/android/search/SearchGroupType;

    iget-object v2, p0, Leqs$8;->a:Leqs;

    invoke-static {v2}, Leqs;->k(Leqs;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Leqr$b;->a(Lcom/alibaba/android/search/SearchGroupType;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_8
    move-object v0, v2

    goto :goto_3
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1694
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1689
    return-void
.end method
