.class final Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$8;
.super Ljava/lang/Object;
.source "TeleVoipConfRunningActivity.java"

# interfaces
.implements Lewj$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    .prologue
    .line 1430
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$8;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

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
    .line 1438
    const/4 v0, 0x0

    .line 1439
    .local v0, "mode":Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;
    packed-switch p1, :pswitch_data_0

    .line 1450
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$8;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1451
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$8;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->p()Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1453
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$8;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->a(Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;)V

    .line 1455
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$8;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->k(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)V

    .line 1458
    :cond_0
    return-void

    .line 1441
    :pswitch_0
    sget-object v0, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->Speaker:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    .line 1442
    goto :goto_0

    .line 1444
    :pswitch_1
    sget-object v0, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->EarPhone:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    .line 1445
    goto :goto_0

    .line 1447
    :pswitch_2
    sget-object v0, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->BluetoothHeadset:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    goto :goto_0

    .line 1439
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
    .line 1434
    return-void
.end method
