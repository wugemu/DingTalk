.class final Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "MsgUnreadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    .prologue
    .line 483
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    .line 486
    const-string/jumbo v5, "user_id"

    invoke-virtual {p2, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 487
    .local v2, "changedId":J
    const-string/jumbo v5, "user_alias"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, "alias":Ljava/lang/String;
    const-string/jumbo v5, "user_aliaspinyin"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 489
    .local v1, "aliasPinyin":Ljava/lang/String;
    cmp-long v5, v2, v6

    if-nez v5, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->g(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 493
    .local v4, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-wide v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v6, v6, v2

    if-nez v6, :cond_2

    .line 494
    iput-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 495
    iput-object v1, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    .line 496
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->b(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)Lcwh;

    move-result-object v5

    invoke-virtual {v5}, Lcwh;->notifyDataSetChanged()V

    goto :goto_0

    .line 500
    .end local v4    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_3
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->i(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 501
    .restart local v4    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-wide v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v6, v6, v2

    if-nez v6, :cond_4

    .line 502
    iput-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 503
    iput-object v1, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    .line 504
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->c(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)Lcwh;

    move-result-object v5

    invoke-virtual {v5}, Lcwh;->notifyDataSetChanged()V

    goto :goto_0
.end method
