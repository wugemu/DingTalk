.class final Lcom/alibaba/android/search/presenter/MsgSearchPresenter$7;
.super Ljava/lang/Object;
.source "MsgSearchPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/presenter/MsgSearchPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/presenter/MsgSearchPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    .prologue
    .line 1247
    iput-object p1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$7;->a:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1247
    check-cast p1, Ljava/util/List;

    .line 2251
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$7;->a:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$7;->a:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2256
    :cond_0
    :goto_0
    return-void

    .line 2255
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2259
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

    .line 2260
    if-eqz v0, :cond_2

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 2263
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 2264
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2265
    const-string/jumbo v5, "nick"

    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2266
    const-string/jumbo v5, "avatarMediaId"

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2267
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$7;->a:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    .line 3093
    iget-object v0, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->m:Ljava/util/Map;

    .line 2267
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2269
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$7;->a:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->b:Leqp$b;

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$7;->a:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iget-object v1, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Leqp$b;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1280
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1275
    return-void
.end method
