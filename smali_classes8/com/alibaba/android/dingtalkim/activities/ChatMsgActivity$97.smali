.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$97;
.super Landroid/content/BroadcastReceiver;
.source "ChatMsgActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 2989
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$97;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

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

    .line 2992
    if-eqz p2, :cond_0

    .line 2993
    const-string/jumbo v4, "user_id"

    invoke-virtual {p2, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2995
    .local v0, "targetUid":J
    cmp-long v4, v0, v6

    if-lez v4, :cond_0

    .line 2996
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$97;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->g(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 2997
    .local v2, "uid":J
    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string/jumbo v4, "friend_request_status"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    sget-object v5, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->ACCEPTED:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 2999
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$97;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->M(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 3004
    .end local v0    # "targetUid":J
    .end local v2    # "uid":J
    :cond_0
    return-void
.end method
