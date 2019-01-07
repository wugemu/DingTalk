.class final Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$21;
.super Ljava/lang/Object;
.source "TeleVoipWaitingFragment.java"

# interfaces
.implements Lewj$b;


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
    .line 2636
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$21;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .param p1, "menuId"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2644
    const/4 v0, 0x0

    .line 2645
    .local v0, "mode":Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;
    packed-switch p1, :pswitch_data_0

    .line 2656
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$21;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->q(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$21;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Liee;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2658
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$21;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Liee;

    move-result-object v1

    invoke-interface {v1, v0}, Liee;->a(Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;)V

    .line 2660
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$21;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->p(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V

    .line 2662
    :cond_0
    return-void

    .line 2647
    :pswitch_0
    sget-object v0, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->Speaker:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    .line 2648
    goto :goto_0

    .line 2650
    :pswitch_1
    sget-object v0, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->EarPhone:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    .line 2651
    goto :goto_0

    .line 2653
    :pswitch_2
    sget-object v0, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->BluetoothHeadset:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    goto :goto_0

    .line 2645
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a([Ljava/lang/CharSequence;I)V
    .locals 0
    .param p1, "menuItems"    # [Ljava/lang/CharSequence;
    .param p2, "menuId"    # I

    .prologue
    .line 2640
    return-void
.end method
