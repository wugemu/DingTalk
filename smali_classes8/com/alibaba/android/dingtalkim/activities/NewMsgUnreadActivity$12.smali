.class final Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$12;
.super Ljava/lang/Object;
.source "NewMsgUnreadActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/MessageReceiver;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    .prologue
    .line 695
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 743
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->q(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)V

    .line 744
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 695
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 695
    check-cast p1, Ljava/util/List;

    .line 1698
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const-string/jumbo v2, "NewMsgUnreadActivity.messageReceivers complete"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1700
    new-instance v2, Ldrs;

    invoke-direct {v2}, Ldrs;-><init>()V

    .line 1701
    new-instance v3, Ldrs;

    invoke-direct {v3}, Ldrs;-><init>()V

    .line 1702
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1703
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1704
    iput-object v4, v2, Ldrs;->a:Ljava/util/List;

    .line 1705
    iput-object v5, v3, Ldrs;->a:Ljava/util/List;

    .line 1707
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1708
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1709
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageReceiver;

    .line 1710
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageReceiver;->user()Lcom/alibaba/wukong/im/User;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageReceiver;->readStatus()Lcom/alibaba/wukong/im/Message$ReadStatus;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1711
    new-instance v7, Ldsa;

    invoke-direct {v7}, Ldsa;-><init>()V

    .line 1712
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageReceiver;->readStatus()Lcom/alibaba/wukong/im/Message$ReadStatus;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alibaba/wukong/im/Message$ReadStatus;->typeValue()I

    move-result v9

    iput v9, v7, Ldsa;->b:I

    .line 1713
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageReceiver;->user()Lcom/alibaba/wukong/im/User;

    move-result-object v9

    invoke-interface {v9}, Lcom/alibaba/wukong/im/User;->openId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1714
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageReceiver;->user()Lcom/alibaba/wukong/im/User;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/User;->openId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1718
    :cond_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1719
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v9

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$12$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$12$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$12;Ldrs;Ldrs;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    const-class v1, Lcma;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-interface {v7, v0, v1, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v9, v8, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    .line 695
    :cond_2
    return-void
.end method
