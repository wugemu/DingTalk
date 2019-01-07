.class final Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$1;
.super Ljava/lang/Object;
.source "FriendShareListActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$1;->a:Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 75
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;

    .line 1079
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;->friendList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1080
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1081
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;->friendList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;

    .line 1082
    if-eqz v0, :cond_0

    .line 1084
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1087
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v2, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$1$1;

    invoke-direct {v2, p0, v1}, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$1$1;-><init>(Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$1;Ljava/util/List;)V

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 1101
    :goto_1
    return-void

    .line 1102
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$1;->a:Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->b(Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;)V

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$1;->a:Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->c(Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "get show mobile list err %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$1;->a:Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->b(Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;)V

    .line 114
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 108
    return-void
.end method
