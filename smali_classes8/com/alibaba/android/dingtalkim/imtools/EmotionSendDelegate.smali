.class public Lcom/alibaba/android/dingtalkim/imtools/EmotionSendDelegate;
.super Ljava/lang/Object;
.source "EmotionSendDelegate.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doLogic(Landroid/app/Activity;[Ljava/lang/Object;)V
    .locals 27
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 19
    if-eqz p1, :cond_0

    .line 20
    invoke-static/range {p1 .. p1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v3, v0

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    aget-object v3, p2, v3

    instance-of v3, v3, Landroid/content/Intent;

    if-nez v3, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    const/4 v3, 0x0

    aget-object v2, p2, v3

    check-cast v2, Landroid/content/Intent;

    .line 28
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "intent_key_emotion_package_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 29
    .local v7, "emotionPackageId":Ljava/lang/String;
    const-string/jumbo v3, "intent_key_emotion_id"

    const-wide/16 v14, 0x0

    invoke-virtual {v2, v3, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 30
    .local v8, "emotionId":J
    const-string/jumbo v3, "intent_key_emotion_type"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 31
    .local v10, "emotionType":I
    const-string/jumbo v3, "intent_key_emotion_media_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 32
    .local v11, "emotionMediaId":Ljava/lang/String;
    const-string/jumbo v3, "intent_key_emotion_auth_media_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 33
    .local v12, "emotionAuthMediaId":Ljava/lang/String;
    const-string/jumbo v3, "intent_key_send_emotion_title"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    const-string/jumbo v3, "send_text"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 35
    .local v5, "appendText":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "conversation"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/im/Conversation;

    .line 36
    .local v6, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v6, :cond_6

    .line 37
    invoke-static {}, Ldjo;->a()Ldjo;

    move-result-object v4

    new-instance v13, Lcom/alibaba/android/dingtalkim/imtools/EmotionSendDelegate$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v13, v0, v1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionSendDelegate$1;-><init>(Lcom/alibaba/android/dingtalkim/imtools/EmotionSendDelegate;Landroid/app/Activity;)V

    .line 1069
    invoke-static/range {p1 .. p1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1073
    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v3

    const/4 v14, 0x1

    if-ne v3, v14, :cond_3

    .line 1074
    new-instance v3, Ldjo$2;

    move-object/from16 v14, p1

    invoke-direct/range {v3 .. v14}, Ldjo$2;-><init>(Ldjo;Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ldjo$a;Landroid/app/Activity;)V

    .line 1163
    if-eqz v6, :cond_0

    .line 1173
    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1174
    const/4 v14, 0x0

    aget-object v14, v13, v14

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v15

    invoke-virtual {v15}, Lcid;->b()Lchy;

    move-result-object v15

    invoke-virtual {v15}, Lchy;->getCurrentUid()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1175
    const/4 v14, 0x1

    aget-object v13, v13, v14

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 1180
    :goto_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v13

    new-instance v16, Ldjo$5;

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v3}, Ldjo$5;-><init>(Ldjo;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual/range {v13 .. v16}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto/16 :goto_0

    .line 1177
    :cond_2
    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    goto :goto_1

    .line 1106
    :cond_3
    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v3

    const/4 v14, 0x2

    if-ne v3, v14, :cond_0

    .line 1107
    if-eqz v5, :cond_4

    move-object v15, v4

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-wide/from16 v18, v8

    move/from16 v20, v10

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move-object/from16 v24, v5

    .line 1108
    invoke-virtual/range {v15 .. v24}, Ldjo;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ldjo$a;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1111
    :cond_4
    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v3

    .line 1112
    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_5

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->totalMembers()I

    move-result v14

    if-lez v14, :cond_5

    invoke-static {v6}, Ldjl;->C(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 1113
    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v3, v14, v15

    const/4 v3, 0x1

    const-string/jumbo v15, "("

    aput-object v15, v14, v3

    const/4 v3, 0x2

    sget v15, Lctk$i;->member_count:I

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->totalMembers()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v3

    const/4 v3, 0x3

    const-string/jumbo v15, ")"

    aput-object v15, v14, v3

    invoke-static {v14}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1115
    :cond_5
    new-instance v14, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1116
    sget v15, Lctk$i;->chat_forward_dialog_title:I

    invoke-virtual {v14, v15}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v25

    sget v26, Lctk$i;->chat_forward_yes:I

    new-instance v14, Ldjo$3;

    move-object v15, v4

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-wide/from16 v18, v8

    move/from16 v20, v10

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move-object/from16 v24, v5

    invoke-direct/range {v14 .. v24}, Ldjo$3;-><init>(Ldjo;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ldjo$a;Ljava/lang/String;)V

    .line 1117
    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v1, v14}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    sget v13, Lctk$i;->chat_forward_no:I

    const/4 v14, 0x0

    .line 1123
    invoke-virtual {v4, v13, v14}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 50
    :cond_6
    invoke-static/range {p1 .. p1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method
