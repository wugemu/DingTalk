.class final Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$19;
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
    .line 2441
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$19;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

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
    .line 2444
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$19;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-virtual {v5}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2445
    const-string/jumbo v5, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->f()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "No volume warning activity invalid"

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2461
    :cond_0
    :goto_0
    return-void

    .line 2448
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    const-string/jumbo v6, "audio"

    invoke-virtual {v5, v6}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2449
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 2450
    const/4 v3, 0x0

    .line 2451
    .local v3, "streamType":I
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$19;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ad(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2452
    const/4 v3, 0x6

    .line 2454
    :cond_2
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 2455
    .local v1, "callVolume":I
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 2456
    .local v2, "maxVolume":I
    div-int/lit8 v5, v2, 0x2

    if-ge v1, v5, :cond_0

    .line 2457
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    sget v6, Leuj$l;->dt_conference_low_volume_toast:I

    invoke-virtual {v5, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2458
    .local v4, "toast":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$19;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v5, v4}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->g(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Ljava/lang/String;)V

    goto :goto_0
.end method
