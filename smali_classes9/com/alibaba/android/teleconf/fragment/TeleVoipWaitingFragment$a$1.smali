.class final Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$a$1;
.super Ljava/lang/Object;
.source "TeleVoipWaitingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$a;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$a;

    .prologue
    .line 630
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$a$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 633
    iget-object v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$a$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$a;

    .line 1618
    iget-object v6, v6, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$a;->a:Ljava/lang/ref/WeakReference;

    .line 633
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .line 634
    .local v5, "voipFrag":Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;
    if-eqz v5, :cond_0

    .line 635
    invoke-virtual {v5}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 636
    const-string/jumbo v6, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->f()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "VoIP call focus change but activity inactive"

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    :cond_0
    :goto_0
    return-void

    .line 639
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    const-string/jumbo v7, "audio"

    invoke-virtual {v6, v7}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 640
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 643
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v2

    .line 644
    .local v2, "isSpeakerOn":Z
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    .line 645
    .local v1, "isScoConnected":Z
    const/4 v4, 0x0

    .line 646
    .local v4, "resetChange":Z
    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->q(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    move-result-object v6

    sget-object v7, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->Speaker:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    if-ne v6, v7, :cond_2

    if-eqz v2, :cond_4

    .line 647
    :cond_2
    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->q(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    move-result-object v6

    sget-object v7, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->EarPhone:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    if-ne v6, v7, :cond_3

    if-nez v2, :cond_4

    .line 648
    :cond_3
    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->q(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    move-result-object v6

    sget-object v7, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->BluetoothHeadset:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    if-ne v6, v7, :cond_5

    if-nez v1, :cond_5

    .line 649
    :cond_4
    const/4 v4, 0x1

    .line 651
    :cond_5
    if-eqz v4, :cond_0

    .line 652
    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Liee;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 653
    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->q(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->q(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->toString()Ljava/lang/String;

    move-result-object v3

    .line 654
    .local v3, "outMode":Ljava/lang/String;
    :goto_1
    const-string/jumbo v6, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->f()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "VoIP call focus "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    .line 655
    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 654
    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Liee;

    move-result-object v6

    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->q(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    move-result-object v7

    invoke-interface {v6, v7}, Liee;->a(Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;)V

    goto :goto_0

    .line 653
    .end local v3    # "outMode":Ljava/lang/String;
    :cond_6
    const-string/jumbo v3, ""

    goto :goto_1
.end method
