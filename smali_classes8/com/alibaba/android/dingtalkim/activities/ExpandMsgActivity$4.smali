.class final Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "ExpandMsgActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 108
    if-nez p2, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "action_ding_create_result"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "key_ding_create_result_seed"

    const-wide/16 v2, -0x1

    .line 112
    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;->finish()V

    goto :goto_0
.end method
