.class final Lewv$6;
.super Ljava/lang/Object;
.source "TeleFloatingVoipManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewv;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lewv;


# direct methods
.method constructor <init>(Lewv;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lewv;

    .prologue
    .line 456
    iput-object p1, p0, Lewv$6;->b:Lewv;

    iput-object p2, p0, Lewv$6;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v14, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 459
    iget-object v8, p0, Lewv$6;->b:Lewv;

    invoke-static {v8}, Lewv;->g(Lewv;)Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    move-result-object v8

    if-nez v8, :cond_3

    .line 460
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 461
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v8, "user_id"

    iget-object v11, p0, Lewv$6;->b:Lewv;

    invoke-static {v11}, Lewv;->j(Lewv;)J

    move-result-wide v12

    invoke-virtual {v2, v8, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 462
    const-string/jumbo v8, "user_name"

    iget-object v11, p0, Lewv$6;->b:Lewv;

    invoke-static {v11}, Lewv;->k(Lewv;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v8, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string/jumbo v8, "media_id"

    iget-object v11, p0, Lewv$6;->b:Lewv;

    invoke-static {v11}, Lewv;->l(Lewv;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v8, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string/jumbo v8, "from"

    iget-object v11, p0, Lewv$6;->b:Lewv;

    invoke-static {v11}, Lewv;->m(Lewv;)Z

    move-result v11

    invoke-virtual {v2, v8, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 465
    const-string/jumbo v8, "conf_voip_to_pstn"

    iget-object v11, p0, Lewv$6;->b:Lewv;

    invoke-static {v11}, Lewv;->n(Lewv;)Z

    move-result v11

    invoke-virtual {v2, v8, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 467
    iget-object v8, p0, Lewv$6;->b:Lewv;

    new-instance v11, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    iget-object v12, p0, Lewv$6;->a:Landroid/content/Context;

    invoke-direct {v11, v12}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;-><init>(Landroid/content/Context;)V

    invoke-static {v8, v11}, Lewv;->a(Lewv;Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;)Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    .line 468
    iget-object v8, p0, Lewv$6;->b:Lewv;

    invoke-static {v8}, Lewv;->g(Lewv;)Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    move-result-object v11

    iget-object v8, p0, Lewv$6;->b:Lewv;

    invoke-static {v8}, Lewv;->b(Lewv;)Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    move-result-object v8

    sget-object v12, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_VOIP:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    if-ne v8, v12, :cond_4

    move v8, v9

    :goto_0
    invoke-virtual {v11, v8}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->setCallOrConf(Z)V

    .line 469
    iget-object v8, p0, Lewv$6;->b:Lewv;

    invoke-static {v8}, Lewv;->g(Lewv;)Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    move-result-object v8

    iget-object v11, p0, Lewv$6;->b:Lewv;

    invoke-static {v11}, Lewv;->o(Lewv;)Landroid/view/View$OnClickListener;

    move-result-object v11

    .line 1141
    check-cast v2, Landroid/os/Bundle;

    .end local v2    # "bundle":Landroid/os/Bundle;
    iput-object v2, v8, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->a:Landroid/os/Bundle;

    .line 1142
    iput-object v11, v8, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->b:Landroid/view/View$OnClickListener;

    .line 1144
    iget-object v11, v8, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->a:Landroid/os/Bundle;

    const-string/jumbo v12, "user_name"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1145
    iget-object v12, v8, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->a:Landroid/os/Bundle;

    const-string/jumbo v13, "media_id"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2110
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 2113
    :cond_0
    iget-object v13, v8, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    if-eqz v13, :cond_1

    .line 2114
    invoke-static {}, Leyu;->a()Z

    move-result v13

    .line 2115
    if-nez v13, :cond_1

    .line 2116
    iget-object v8, v8, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v8, v11, v12}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    :cond_1
    iget-object v8, p0, Lewv$6;->b:Lewv;

    invoke-static {v8}, Lewv;->g(Lewv;)Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->a()V

    .line 472
    const/4 v6, 0x0

    .line 473
    .local v6, "showUpdate":Z
    iget-object v8, p0, Lewv$6;->b:Lewv;

    invoke-static {v8}, Lewv;->a(Lewv;)Lcom/alibaba/wukong/openav/external/IAVSession;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 474
    iget-object v8, p0, Lewv$6;->b:Lewv;

    invoke-static {v8}, Lewv;->a(Lewv;)Lcom/alibaba/wukong/openav/external/IAVSession;

    move-result-object v8

    invoke-interface {v8}, Lcom/alibaba/wukong/openav/external/IAVSession;->j()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v3

    .line 475
    .local v3, "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    sget-object v8, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLED:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v3, v8, :cond_5

    .line 476
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->c()Landroid/app/Application;

    move-result-object v8

    sget v11, Leuj$l;->dt_conference_voip_waiting_accept:I

    invoke-virtual {v8, v11}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 477
    .local v7, "stateTxt":Ljava/lang/String;
    iget-object v8, p0, Lewv$6;->b:Lewv;

    invoke-static {v8}, Lewv;->g(Lewv;)Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    move-result-object v8

    invoke-virtual {v8, v7, v9}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->a(Ljava/lang/String;I)V

    .line 478
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->c()Landroid/app/Application;

    move-result-object v8

    sget v11, Leuj$l;->conf_txt_voip_answer:I

    invoke-virtual {v8, v11}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "acceptTxt":Ljava/lang/String;
    iget-object v8, p0, Lewv$6;->b:Lewv;

    invoke-static {v8}, Lewv;->g(Lewv;)Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    move-result-object v8

    invoke-virtual {v8, v0, v14, v9}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->a(Ljava/lang/String;IZ)V

    .line 481
    const/4 v6, 0x1

    .line 496
    .end local v0    # "acceptTxt":Ljava/lang/String;
    .end local v3    # "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    .end local v7    # "stateTxt":Ljava/lang/String;
    :cond_2
    :goto_1
    const-string/jumbo v8, "tele_conf"

    invoke-static {}, Lewv;->f()Ljava/lang/String;

    move-result-object v11

    new-array v12, v14, [Ljava/lang/String;

    const-string/jumbo v13, "Real show control btn "

    aput-object v13, v12, v10

    .line 497
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v9

    invoke-static {v12}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 496
    invoke-static {v8, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-static {}, Lewx;->b()Z

    move-result v8

    if-eqz v8, :cond_7

    if-eqz v6, :cond_7

    move v1, v9

    .line 499
    .local v1, "bePowerfulEnabled":Z
    :goto_2
    iget-object v8, p0, Lewv$6;->b:Lewv;

    invoke-static {v8}, Lewv;->g(Lewv;)Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    move-result-object v8

    if-eqz v1, :cond_8

    .line 2161
    :goto_3
    iget-object v11, v8, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->d:Landroid/view/View;

    if-eqz v11, :cond_3

    .line 2162
    iget-object v8, v8, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->d:Landroid/view/View;

    if-eqz v9, :cond_9

    :goto_4
    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 501
    .end local v1    # "bePowerfulEnabled":Z
    .end local v6    # "showUpdate":Z
    :cond_3
    return-void

    .restart local v2    # "bundle":Landroid/os/Bundle;
    :cond_4
    move v8, v10

    .line 468
    goto/16 :goto_0

    .line 482
    .end local v2    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    .restart local v6    # "showUpdate":Z
    :cond_5
    sget-object v8, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v3, v8, :cond_6

    .line 483
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->c()Landroid/app/Application;

    move-result-object v8

    sget v11, Leuj$l;->dt_conference_voip_waiting_remote_accept:I

    invoke-virtual {v8, v11}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 484
    .restart local v7    # "stateTxt":Ljava/lang/String;
    iget-object v8, p0, Lewv$6;->b:Lewv;

    invoke-static {v8}, Lewv;->g(Lewv;)Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    move-result-object v8

    invoke-virtual {v8, v7, v9}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->a(Ljava/lang/String;I)V

    .line 485
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->c()Landroid/app/Application;

    move-result-object v8

    sget v11, Leuj$l;->cancel:I

    invoke-virtual {v8, v11}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 486
    .local v4, "cancelTxt":Ljava/lang/String;
    iget-object v8, p0, Lewv$6;->b:Lewv;

    invoke-static {v8}, Lewv;->g(Lewv;)Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    move-result-object v8

    invoke-virtual {v8, v4, v9, v10}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->a(Ljava/lang/String;IZ)V

    .line 488
    const/4 v6, 0x1

    .line 489
    goto :goto_1

    .end local v4    # "cancelTxt":Ljava/lang/String;
    .end local v7    # "stateTxt":Ljava/lang/String;
    :cond_6
    sget-object v8, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->TALKING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v3, v8, :cond_2

    .line 490
    iget-object v8, p0, Lewv$6;->b:Lewv;

    invoke-static {v8}, Lewv;->h(Lewv;)Ljava/lang/String;

    move-result-object v5

    .line 491
    .local v5, "hangupTxt":Ljava/lang/String;
    iget-object v8, p0, Lewv$6;->b:Lewv;

    invoke-static {v8}, Lewv;->g(Lewv;)Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    move-result-object v8

    const/4 v11, 0x3

    invoke-virtual {v8, v5, v11, v10}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->a(Ljava/lang/String;IZ)V

    .line 493
    const/4 v6, 0x1

    goto/16 :goto_1

    .end local v3    # "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    .end local v5    # "hangupTxt":Ljava/lang/String;
    :cond_7
    move v1, v10

    .line 498
    goto :goto_2

    .restart local v1    # "bePowerfulEnabled":Z
    :cond_8
    move v9, v10

    .line 499
    goto :goto_3

    .line 2162
    :cond_9
    const/16 v10, 0x8

    goto :goto_4
.end method
