.class final Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "GroupTypeSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 90
    if-eqz p2, :cond_1

    const-string/jumbo v2, "action_group_type_selected"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    const-string/jumbo v2, "intent_key_conversation_tag"

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 92
    .local v0, "tag":J
    invoke-static {v0, v1}, Ldjl;->b(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->finish()V

    .line 98
    .end local v0    # "tag":J
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    if-eqz p2, :cond_0

    const-string/jumbo v2, "action_group_upgrade_success"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->finish()V

    goto :goto_0
.end method
