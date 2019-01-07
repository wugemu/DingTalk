.class public final Lcuk;
.super Lcuj;
.source "ConfResultToHolder.java"


# instance fields
.field private Y:Ldac;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isTo"    # Z

    .prologue
    .line 43
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcuj;-><init>(Z)V

    .line 44
    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    .line 53
    if-eqz p2, :cond_4

    instance-of v4, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v4, :cond_4

    move-object v4, p2

    .line 54
    check-cast v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    if-eqz v4, :cond_4

    move-object v4, p2

    check-cast v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v4, v4, Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;

    if-eqz v4, :cond_4

    .line 56
    sget v4, Lctk$i;->dt_im_chat_conf_click_redial:I

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "boldStr":Ljava/lang/String;
    move-object v4, p2

    .line 58
    check-cast v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v1, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;

    .line 59
    .local v1, "confStateDo":Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;
    iget v4, v1, Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;->state:I

    if-nez v4, :cond_6

    .line 60
    new-array v4, v8, [Ljava/lang/String;

    sget v5, Lctk$i;->dt_im_chat_conf_state_end:I

    invoke-virtual {p1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    iget-wide v6, v1, Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;->duration:J

    .line 61
    invoke-static {v6, v7}, Lcuk;->d(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 60
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "src":Ljava/lang/String;
    :cond_0
    :goto_0
    iget v4, v1, Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;->type:I

    if-nez v4, :cond_a

    .line 80
    iget-object v4, p0, Lcuk;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v5, Lctk$i;->icon_voip:I

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 91
    :cond_1
    :goto_1
    iget-object v5, p0, Lcuk;->b:Landroid/widget/TextView;

    .line 1111
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1112
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1113
    :cond_2
    const/4 v4, 0x0

    .line 91
    :cond_3
    :goto_2
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .end local v0    # "boldStr":Ljava/lang/String;
    .end local v1    # "confStateDo":Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;
    .end local v2    # "src":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcuk;->Y:Ldac;

    if-eqz v4, :cond_5

    .line 96
    iget-object v4, p0, Lcuk;->Y:Ldac;

    iget-boolean v5, p0, Lcuk;->T:Z

    invoke-virtual {v4, p1, p2, v5}, Ldac;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Z)V

    .line 98
    :cond_5
    return-void

    .line 63
    .restart local v0    # "boldStr":Ljava/lang/String;
    .restart local v1    # "confStateDo":Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;
    :cond_6
    sget v4, Lctk$i;->dt_im_chat_conf_state_missed:I

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 65
    .restart local v2    # "src":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v4

    iget v5, v1, Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;->errCode:I

    invoke-virtual {v4, v5}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(I)Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;

    move-result-object v3

    .line 66
    .local v3, "stateType":Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;
    if-eqz v3, :cond_0

    .line 67
    sget-object v4, Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;->STATE_CALLING_TIMEOUT:Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;

    if-ne v3, v4, :cond_7

    .line 68
    sget v4, Lctk$i;->dt_im_chat_conf_state_no_resp:I

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 69
    :cond_7
    sget-object v4, Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;->STATE_BUSY:Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;

    if-ne v3, v4, :cond_8

    .line 70
    sget v4, Lctk$i;->dt_im_chat_conf_state_busy:I

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 71
    :cond_8
    sget-object v4, Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;->STATE_REJECTED:Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;

    if-ne v3, v4, :cond_9

    .line 72
    sget v4, Lctk$i;->dt_im_chat_conf_state_rejected:I

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 73
    :cond_9
    sget-object v4, Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;->STATE_CANCELED:Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;

    if-ne v3, v4, :cond_0

    .line 74
    sget v4, Lctk$i;->dt_im_chat_conf_state_canceled:I

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 81
    .end local v3    # "stateType":Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;
    :cond_a
    iget v4, v1, Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;->type:I

    if-ne v4, v9, :cond_b

    .line 82
    iget-object v4, p0, Lcuk;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v5, Lctk$i;->icon_video_fill:I

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    goto :goto_1

    .line 83
    :cond_b
    iget v4, v1, Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;->type:I

    if-ne v4, v8, :cond_c

    .line 84
    iget-object v4, p0, Lcuk;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v5, Lctk$i;->icon_bizcall_fill:I

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    goto :goto_1

    .line 85
    :cond_c
    iget v4, v1, Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;->type:I

    if-ne v4, v11, :cond_1

    .line 86
    new-array v4, v11, [Ljava/lang/String;

    sget v5, Lctk$i;->dt_conference_single_normalcall:I

    invoke-virtual {p1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const-string/jumbo v5, " "

    aput-object v5, v4, v9

    aput-object v0, v4, v8

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    iget-object v4, p0, Lcuk;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v5, Lctk$i;->icon_mobilephone_fill:I

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    goto/16 :goto_1

    .line 1115
    :cond_d
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1116
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1117
    if-ltz v6, :cond_3

    .line 1118
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v6

    .line 1119
    new-instance v8, Landroid/text/style/StyleSpan;

    invoke-direct {v8, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v9, 0x21

    invoke-virtual {v4, v8, v6, v7, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 102
    sget v0, Lctk$g;->chatting_item_to:I

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 107
    sget v0, Lctk$g;->chatting_item_to_conf_result:I

    return v0
.end method

.method protected final c(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 48
    iget-object v0, p0, Lcuk;->P:Lcts$b;

    invoke-static {p1, v0}, Ldac;->a(Landroid/view/View;Lcts$b;)Ldac;

    move-result-object v0

    iput-object v0, p0, Lcuk;->Y:Ldac;

    .line 49
    return-void
.end method
