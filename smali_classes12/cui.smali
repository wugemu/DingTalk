.class public final Lcui;
.super Lcuj;
.source "ConfResultFromHolder.java"


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isTo"    # Z

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcuj;-><init>(Z)V

    .line 44
    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
    .locals 13
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v12, 0x21

    const/4 v11, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v10, 0x1

    .line 52
    if-eqz p2, :cond_4

    instance-of v4, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v4, :cond_4

    move-object v4, p2

    .line 53
    check-cast v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    if-eqz v4, :cond_4

    move-object v4, p2

    check-cast v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v4, v4, Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;

    if-eqz v4, :cond_4

    .line 55
    sget v4, Lctk$i;->dt_im_chat_conf_click_dial:I

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "highStr":Ljava/lang/String;
    check-cast p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .end local p2    # "message":Lcom/alibaba/wukong/im/Message;
    iget-object v0, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;

    .line 57
    .local v0, "confStateDo":Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;
    iget v4, v0, Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;->state:I

    if-nez v4, :cond_5

    .line 58
    new-array v4, v8, [Ljava/lang/String;

    sget v5, Lctk$i;->dt_im_chat_conf_state_end:I

    invoke-virtual {p1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    iget-wide v6, v0, Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;->duration:J

    .line 59
    invoke-static {v6, v7}, Lcui;->d(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    .line 58
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "src":Ljava/lang/String;
    :cond_0
    :goto_0
    iget v4, v0, Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;->type:I

    if-nez v4, :cond_7

    .line 74
    iget-object v4, p0, Lcui;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v5, Lctk$i;->icon_voip:I

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 86
    :cond_1
    :goto_1
    iget-object v5, p0, Lcui;->b:Landroid/widget/TextView;

    .line 1102
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1103
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1104
    :cond_2
    const/4 v4, 0x0

    .line 86
    :cond_3
    :goto_2
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .end local v0    # "confStateDo":Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;
    .end local v1    # "highStr":Ljava/lang/String;
    .end local v2    # "src":Ljava/lang/String;
    :cond_4
    return-void

    .line 61
    .restart local v0    # "confStateDo":Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;
    .restart local v1    # "highStr":Ljava/lang/String;
    :cond_5
    sget v4, Lctk$i;->dt_im_chat_conf_state_missed_other:I

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 63
    .restart local v2    # "src":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v4

    iget v5, v0, Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;->errCode:I

    invoke-virtual {v4, v5}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(I)Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;

    move-result-object v3

    .line 64
    .local v3, "stateType":Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;
    if-eqz v3, :cond_0

    .line 65
    sget-object v4, Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;->STATE_REJECTED:Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;

    if-ne v3, v4, :cond_6

    .line 66
    sget v4, Lctk$i;->dt_im_chat_conf_state_rejected_other:I

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 67
    :cond_6
    sget-object v4, Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;->STATE_CANCELED:Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;

    if-ne v3, v4, :cond_0

    .line 68
    sget v4, Lctk$i;->dt_im_chat_conf_state_canceled_other:I

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 75
    .end local v3    # "stateType":Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;
    :cond_7
    iget v4, v0, Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;->type:I

    if-ne v4, v10, :cond_8

    .line 76
    iget-object v4, p0, Lcui;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v5, Lctk$i;->icon_video_fill:I

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    goto :goto_1

    .line 77
    :cond_8
    iget v4, v0, Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;->type:I

    if-ne v4, v8, :cond_9

    .line 78
    iget-object v4, p0, Lcui;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v5, Lctk$i;->icon_bizcall_fill:I

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    goto :goto_1

    .line 79
    :cond_9
    iget v4, v0, Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;->type:I

    if-ne v4, v11, :cond_1

    .line 80
    new-array v4, v11, [Ljava/lang/String;

    sget v5, Lctk$i;->dt_conference_single_normalcall:I

    invoke-virtual {p1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const-string/jumbo v5, " "

    aput-object v5, v4, v10

    aput-object v1, v4, v8

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    iget-object v4, p0, Lcui;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v5, Lctk$i;->icon_mobilephone_fill:I

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    goto :goto_1

    .line 1106
    :cond_a
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1107
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1108
    if-ltz v6, :cond_3

    .line 1109
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v6

    .line 1110
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->c()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lctk$c;->uidic_global_color_c2:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 1111
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v9, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4, v9, v6, v7, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1112
    new-instance v8, Landroid/text/style/StyleSpan;

    invoke-direct {v8, v10}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v4, v8, v6, v7, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 93
    sget v0, Lctk$g;->chatting_item_from:I

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 98
    sget v0, Lctk$g;->chatting_item_from_conf_result:I

    return v0
.end method

.method protected final c(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 48
    return-void
.end method
