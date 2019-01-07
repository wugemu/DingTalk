.class final Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$13;
.super Ljava/lang/Object;
.source "TeleConfWaitingFragment.java"

# interfaces
.implements Lcjo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$13;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcjo$b;)V
    .locals 8
    .param p1, "message"    # Lcjo$b;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 438
    if-eqz p1, :cond_0

    iget v3, p1, Lcjo$b;->b:I

    const/16 v4, 0x7d4

    if-eq v3, v4, :cond_1

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    iget-object v3, p1, Lcjo$b;->a:Ljava/lang/Object;

    instance-of v3, v3, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatStatusChangedModel;

    if-eqz v3, :cond_0

    .line 445
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$13;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->F()Z

    move-result v3

    if-nez v3, :cond_0

    .line 449
    iget-object v1, p1, Lcjo$b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatStatusChangedModel;

    .line 450
    .local v1, "chatStatusChangedModel":Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatStatusChangedModel;
    iget-object v0, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatStatusChangedModel;->action:Ljava/lang/String;

    .line 451
    .local v0, "action":Ljava/lang/String;
    iget-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatStatusChangedModel;->uuid:Ljava/lang/String;

    .line 452
    .local v2, "uuid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 456
    const-string/jumbo v3, "tele_conf"

    const-string/jumbo v4, "free_call"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "receive a status notification: action "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", uuid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 458
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Leyr;->c(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 456
    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$13;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$13;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->l(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    const-string/jumbo v3, "caller-answer"

    .line 460
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "caller-hangup"

    .line 461
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "caller-bye"

    .line 462
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 463
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$13;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->k(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$13$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$13$1;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$13;)V

    const-wide/16 v6, 0x7d0

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
