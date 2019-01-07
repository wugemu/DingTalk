.class final Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$23;
.super Ljava/lang/Object;
.source "TeleVoipWaitingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 311
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$23;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 315
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$23;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Lcom/alibaba/wukong/openav/external/IAVSession;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$23;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Liee;

    move-result-object v3

    if-nez v3, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$23;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->i(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 319
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$23;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Lcom/alibaba/wukong/openav/external/IAVSession;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/openav/external/IAVSession;->j()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v0

    .line 320
    .local v0, "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    sget-object v3, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLED:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v0, v3, :cond_2

    .line 321
    const-string/jumbo v3, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->f()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Accept call"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$23;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->j(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V

    goto :goto_0

    .line 323
    :cond_2
    sget-object v3, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-eq v0, v3, :cond_3

    sget-object v3, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->TALKING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v0, v3, :cond_0

    .line 325
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$23;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->k(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$23;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->l(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 326
    const-string/jumbo v3, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->f()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Show audio output mode dialog"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$23;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->m(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V

    goto :goto_0

    .line 332
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$23;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Liee;

    move-result-object v3

    invoke-interface {v3}, Liee;->k()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 333
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Leuj$l;->dt_conference_voip_close_hands_free_tips:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 334
    .local v2, "warnToast":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$23;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Liee;

    move-result-object v3

    invoke-interface {v3}, Liee;->h()V

    .line 336
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$23;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->n(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$SensorStatus;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$SensorStatus;->Running:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$SensorStatus;

    if-ne v3, v4, :cond_5

    .line 337
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$23;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->o(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lien;->a(Landroid/content/Context;)V

    .line 347
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$23;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->p(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V

    .line 348
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 349
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$23;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v3, v2}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Ljava/lang/String;)V

    .line 351
    :cond_6
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$23;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->q(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$23;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->q(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->toString()Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, "outMode":Ljava/lang/String;
    :goto_2
    const-string/jumbo v3, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->f()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "Turn on/off speaker : "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    .line 353
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 352
    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 340
    .end local v1    # "outMode":Ljava/lang/String;
    .end local v2    # "warnToast":Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "phone_calling_voip_handfree_click"

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 341
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Leuj$l;->dt_conference_voip_hands_free_tips:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 342
    .restart local v2    # "warnToast":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$23;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Liee;

    move-result-object v3

    invoke-interface {v3}, Liee;->i()V

    .line 344
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$23;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->o(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Landroid/content/Context;

    invoke-static {}, Lien;->a()V

    goto :goto_1

    .line 351
    :cond_8
    const-string/jumbo v1, ""

    goto :goto_2
.end method
