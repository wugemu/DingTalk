.class final Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "DingNotifyCenterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$6;->a:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 171
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$6;->a:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->b(Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    const-string/jumbo v2, "com.workapp.ding.update.ding.unread.count"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 175
    const-string/jumbo v2, "intent_key_refresh_ding_unread_count"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 176
    .local v1, "dingUnreadCount":I
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$6;->a:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;

    invoke-static {v2, v1}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->b(Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;I)V

    goto :goto_0

    .line 177
    .end local v1    # "dingUnreadCount":I
    :cond_2
    const-string/jumbo v2, "com.workapp.ding.update.ding.unread.comment.count"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    const-string/jumbo v2, "intent_key_refresh_ding_comment_unread_count"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 179
    .local v0, "dingCommentUnreadCount":I
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$6;->a:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;

    invoke-static {v2, v0}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->d(Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;I)V

    goto :goto_0
.end method
