.class final Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment$5;
.super Landroid/content/BroadcastReceiver;
.source "LiveReplayListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment$5;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;

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
    .line 361
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 370
    :goto_1
    return-void

    .line 362
    :sswitch_0
    const-string/jumbo v3, "intent_action_replay_list_changed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "intent_action_live_title_changed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 364
    :pswitch_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment$5;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;

    invoke-static {v1, p2}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->a(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;Landroid/content/Intent;)V

    goto :goto_1

    .line 367
    :pswitch_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment$5;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;

    invoke-static {v1, p2}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->b(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;Landroid/content/Intent;)V

    goto :goto_1

    .line 362
    nop

    :sswitch_data_0
    .sparse-switch
        0x5034165 -> :sswitch_0
        0x75dcce80 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
