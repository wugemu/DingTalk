.class final Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$6;
.super Landroid/content/BroadcastReceiver;
.source "FriendRequestMoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    .prologue
    .line 448
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$6;->a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v10, 0x0

    .line 451
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$6;->a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    iget-object v6, v6, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->f:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    invoke-virtual {v6}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->isDestroyed()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    const-string/jumbo v6, "com.workapp.friend_request_change"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 455
    const-string/jumbo v6, "friend_request_position"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 456
    .local v1, "friendRequestPosition":I
    const-string/jumbo v6, "friend_request_status"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 457
    .local v3, "status":I
    if-ltz v1, :cond_0

    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$6;->a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    .line 1192
    iget-object v6, v6, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->c:Ljava/util/List;

    .line 457
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 458
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$6;->a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    .line 2192
    iget-object v6, v6, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->c:Ljava/util/List;

    .line 458
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    .line 459
    .local v2, "item":Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;
    if-eqz v2, :cond_0

    .line 460
    iput v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->status:I

    .line 461
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$6;->a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    iget-object v6, v6, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->f:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->c(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;)V

    goto :goto_0

    .line 464
    .end local v1    # "friendRequestPosition":I
    .end local v2    # "item":Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;
    .end local v3    # "status":I
    :cond_2
    const-string/jumbo v6, "action_friend_request_status_changed"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 465
    const-string/jumbo v6, "user_id"

    const-wide/16 v8, 0x0

    invoke-virtual {p2, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 466
    .local v4, "uid":J
    const-string/jumbo v6, "friend_request_status"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 467
    .restart local v3    # "status":I
    const/4 v0, 0x0

    .line 468
    .local v0, "changed":Z
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$6;->a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    .line 3192
    iget-object v6, v6, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->c:Ljava/util/List;

    .line 468
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    .line 469
    .restart local v2    # "item":Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;
    if-eqz v2, :cond_3

    iget-wide v8, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->id:J

    cmp-long v7, v8, v4

    if-nez v7, :cond_3

    .line 470
    iput v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->status:I

    .line 471
    const/4 v0, 0x1

    goto :goto_1

    .line 474
    .end local v2    # "item":Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;
    :cond_4
    if-eqz v0, :cond_0

    .line 475
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$6;->a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    iget-object v6, v6, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->f:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->c(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;)V

    goto/16 :goto_0
.end method
