.class final Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1$1;
.super Ljava/lang/Object;
.source "MsgForwardActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->run()V
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
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;)V
    .locals 0
    .param p1, "this$3"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;

    .prologue
    .line 1375
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1375
    check-cast p1, Ljava/util/List;

    .line 2378
    if-eqz p1, :cond_3

    .line 2379
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 2380
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 2381
    new-array v1, v11, [Ljava/lang/String;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v8

    const-string/jumbo v3, ":"

    aput-object v3, v1, v9

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v10

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2382
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->d:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 2383
    if-eqz v1, :cond_1

    .line 2384
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2385
    new-instance v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;

    invoke-direct {v6}, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;-><init>()V

    .line 2386
    iget-object v7, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v7, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->mediaId:Ljava/lang/String;

    .line 2387
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->nick:Ljava/lang/String;

    .line 2388
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2389
    iput-object v3, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    .line 2391
    :cond_1
    new-array v1, v11, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v8

    const-string/jumbo v3, ":"

    aput-object v3, v1, v9

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v10

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2392
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->d:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 2393
    if-eqz v1, :cond_0

    .line 2394
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2395
    new-instance v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;-><init>()V

    .line 2396
    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->mediaId:Ljava/lang/String;

    .line 2397
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->nick:Ljava/lang/String;

    .line 2398
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2399
    iput-object v3, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 2402
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->e:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->k:Lcvm;

    invoke-virtual {v0}, Lcvm;->notifyDataSetChanged()V

    .line 2403
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->e:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->n(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2404
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->e:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->C:Lcvm;

    invoke-virtual {v0}, Lcvm;->notifyDataSetChanged()V

    .line 1375
    :cond_3
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1417
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1412
    return-void
.end method
