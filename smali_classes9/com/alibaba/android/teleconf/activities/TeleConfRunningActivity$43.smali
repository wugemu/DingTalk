.class final Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$43;
.super Landroid/content/BroadcastReceiver;
.source "TeleConfRunningActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 652
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$43;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 655
    const-string/jumbo v2, "com.workapp.conversation.msg.add"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 656
    const-string/jumbo v2, "conversation_id"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 657
    .local v0, "cid":Ljava/lang/String;
    const-string/jumbo v2, "unread_msg_count"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 658
    .local v1, "count":I
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$43;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->e(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 659
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$43;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v2, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;I)V

    .line 662
    .end local v0    # "cid":Ljava/lang/String;
    .end local v1    # "count":I
    :cond_0
    return-void
.end method
