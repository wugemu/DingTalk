.class final Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$12;
.super Ljava/lang/Object;
.source "TeleVoipConfRunningActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 226
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 231
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 232
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->k()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v0

    .line 233
    .local v0, "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    sget-object v4, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLED:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v0, v4, :cond_3

    .line 234
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->f()V

    .line 236
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->b()Z

    move-result v1

    .line 237
    .local v1, "success":Z
    if-eqz v1, :cond_2

    .line 238
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->f()V

    .line 244
    :cond_0
    :goto_0
    const-string/jumbo v4, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->h()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "Answer the call "

    aput-object v7, v6, v8

    .line 245
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 244
    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .end local v0    # "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    .end local v1    # "success":Z
    :cond_1
    :goto_1
    return-void

    .line 240
    .restart local v0    # "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    .restart local v1    # "success":Z
    :cond_2
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->i(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 241
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->finish()V

    goto :goto_0

    .line 246
    .end local v1    # "success":Z
    :cond_3
    sget-object v4, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-eq v0, v4, :cond_4

    sget-object v4, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->TALKING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v0, v4, :cond_1

    .line 248
    :cond_4
    invoke-static {}, Lewx;->c()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->n()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 249
    const-string/jumbo v4, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->h()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Show audio output mode dialog"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->j(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)V

    goto :goto_1

    .line 254
    :cond_5
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->p()Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    move-result-object v2

    .line 255
    .local v2, "voiceMode":Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;
    sget-object v4, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->Speaker:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    if-ne v2, v4, :cond_6

    .line 256
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    move-result-object v4

    sget-object v5, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->EarPhone:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    invoke-interface {v4, v5}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->a(Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;)V

    .line 257
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Leuj$l;->dt_conference_voip_close_hands_free_tips:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, "warnToast":Ljava/lang/String;
    :goto_2
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->k(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)V

    .line 263
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    const-string/jumbo v5, "200"

    invoke-virtual {v4, v5, v3}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string/jumbo v4, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->h()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/String;

    const-string/jumbo v7, "Turn on/off speaker"

    aput-object v7, v6, v8

    .line 265
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 264
    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 259
    .end local v3    # "warnToast":Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    move-result-object v4

    sget-object v5, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->Speaker:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    invoke-interface {v4, v5}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->a(Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;)V

    .line 260
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Leuj$l;->dt_conference_voip_hands_free_tips:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "warnToast":Ljava/lang/String;
    goto :goto_2
.end method
