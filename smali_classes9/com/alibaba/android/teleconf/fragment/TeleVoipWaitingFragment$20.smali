.class final Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$20;
.super Ljava/lang/Object;
.source "TeleVoipWaitingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 2542
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$20;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2547
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$20;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ae(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2548
    const/4 v0, 0x0

    .line 2549
    .local v0, "goOnChecking":Z
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$20;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    sget v4, Leuj$l;->dt_conf_voip_network_exchange_tip:I

    invoke-static {v1, v4}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;I)V

    .line 2560
    :goto_0
    if-eqz v0, :cond_2

    .line 2561
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, p0, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2565
    :goto_1
    return-void

    .line 2552
    .end local v0    # "goOnChecking":Z
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2553
    .local v2, "now":J
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$20;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->af(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1388

    cmp-long v1, v4, v6

    if-ltz v1, :cond_1

    .line 2554
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$20;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    sget v4, Leuj$l;->dt_conf_voip_network_disconnect_tip:I

    invoke-static {v1, v4}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;I)V

    .line 2555
    const/4 v0, 0x0

    .restart local v0    # "goOnChecking":Z
    goto :goto_0

    .line 2557
    .end local v0    # "goOnChecking":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "goOnChecking":Z
    goto :goto_0

    .line 2563
    .end local v2    # "now":J
    :cond_2
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    invoke-virtual {v1, p0}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1
.end method
