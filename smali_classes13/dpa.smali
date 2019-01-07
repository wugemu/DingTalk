.class public final Ldpa;
.super Ljava/lang/Object;
.source "MenuForwardHandler.java"

# interfaces
.implements Ldon;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;JLjava/lang/String;Lcom/alibaba/wukong/im/Message;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menuSeed"    # J
    .param p4, "content"    # Ljava/lang/String;
    .param p5, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 149
    if-eqz p1, :cond_0

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    const-wide/16 v12, 0x0

    .line 154
    .local v12, "timeStamp":J
    if-eqz p5, :cond_2

    .line 155
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v10, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    move-object/from16 v0, p5

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-static {}, Ldvi;->a()Ldvi;

    move-result-object v2

    invoke-virtual {v2, v10}, Ldvi;->a(Ljava/util/List;)J

    move-result-wide v12

    .line 159
    .end local v10    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    :cond_2
    move-wide v8, v12

    .line 160
    .local v8, "finalTimeStamp":J
    const-string/jumbo v2, "NAVIGATOR"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/navigator/Navigator;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v11

    const-string/jumbo v14, "https://qr.dingtalk.com/im/forward.html"

    new-instance v2, Ldpa$2;

    move-object/from16 v3, p0

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p2

    invoke-direct/range {v2 .. v9}, Ldpa$2;-><init>(Ldpa;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;JJ)V

    invoke-interface {v11, v14, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;JLeav;)V
    .locals 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p4, "menuSeed"    # J
    .param p6, "chatMsgMenuContext"    # Leav;

    .prologue
    .line 48
    if-nez p3, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v4

    sget-object v5, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-eq v4, v5, :cond_2

    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->iHaveRead()Z

    move-result v4

    if-nez v4, :cond_2

    .line 52
    sget v4, Lctk$i;->chat_menu_forward_forbidden:I

    invoke-static {v4}, Lcms;->a(I)V

    goto :goto_0

    .line 57
    :cond_2
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 58
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    instance-of v4, v4, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    if-eqz v4, :cond_0

    .line 59
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v18

    .line 60
    .local v18, "content":Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lcpt;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v18

    .line 61
    move-object/from16 v8, v18

    .local v8, "finalContent":Ljava/lang/String;
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v6, p4

    move-object/from16 v9, p3

    .line 62
    invoke-direct/range {v4 .. v9}, Ldpa;->a(Landroid/content/Context;JLjava/lang/String;Lcom/alibaba/wukong/im/Message;)V

    goto :goto_0

    .line 67
    .end local v8    # "finalContent":Ljava/lang/String;
    .end local v18    # "content":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "chat_trans_success"

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 69
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v4

    sget-object v5, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-ne v4, v5, :cond_5

    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 70
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0x12d

    if-eq v4, v5, :cond_4

    .line 71
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0x12c

    if-ne v4, v5, :cond_5

    :cond_4
    move-object/from16 v0, p3

    instance-of v4, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v4, :cond_5

    move-object/from16 v19, p3

    .line 73
    check-cast v19, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .line 74
    .local v19, "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    if-eqz v4, :cond_5

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v4, v4, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;

    if-eqz v4, :cond_5

    .line 75
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;

    .line 76
    .local v22, "oaDo":Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->bizType:Ljava/lang/String;

    const-string/jumbo v5, "space_collect_file"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 77
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "space_collect_file_message_forward_click"

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 82
    .end local v19    # "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    .end local v22    # "oaDo":Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;
    :cond_5
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    if-eqz v4, :cond_c

    move-object/from16 v0, p3

    instance-of v4, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v4, :cond_c

    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v4

    sget-object v5, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-ne v4, v5, :cond_c

    .line 83
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0x1f5

    if-eq v4, v5, :cond_6

    .line 84
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0x1f4

    if-eq v4, v5, :cond_6

    .line 85
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0x1f7

    if-eq v4, v5, :cond_6

    .line 86
    invoke-static/range {p3 .. p3}, Ldkc;->u(Lcom/alibaba/wukong/im/Message;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 88
    :cond_6
    invoke-static/range {p3 .. p3}, Ldkc;->M(Lcom/alibaba/wukong/im/Message;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    invoke-static {v4}, Ldjl;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 89
    sget v4, Lctk$i;->dt_cspace_no_forward_action_tip_in_read_only_group:I

    invoke-static {v4}, Lcms;->a(I)V

    goto/16 :goto_0

    .line 94
    :cond_7
    :try_start_0
    move-object/from16 v0, p3

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    move-object v4, v0

    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    move-object/from16 v24, v0

    .line 95
    .local v24, "space":Ljava/lang/Object;
    const/16 v25, 0x0

    .line 96
    .local v25, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    if-eqz v24, :cond_b

    move-object/from16 v0, v24

    instance-of v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v4, :cond_b

    .line 97
    move-object/from16 v0, v24

    check-cast v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-object/from16 v25, v0

    .line 103
    :cond_8
    :goto_1
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    .line 105
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput-object v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 108
    :cond_9
    if-eqz v25, :cond_0

    .line 109
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v4

    const-class v5, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    invoke-virtual {v4, v5}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    .line 110
    .local v26, "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    .line 111
    .local v17, "bundle":Landroid/os/Bundle;
    invoke-static/range {p2 .. p2}, Lgri;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v27

    .line 112
    .local v27, "src":Ljava/lang/String;
    const-string/jumbo v4, "space_statistic_key"

    const-string/jumbo v5, "space_im_trans_success_click"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string/jumbo v4, "space_transfer_src"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string/jumbo v4, "im_navigator_from"

    const-string/jumbo v5, "msg"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static/range {p3 .. p3}, Ldkc;->u(Lcom/alibaba/wukong/im/Message;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 117
    const-string/jumbo v4, "message"

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 119
    :cond_a
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 121
    .end local v17    # "bundle":Landroid/os/Bundle;
    .end local v24    # "space":Ljava/lang/Object;
    .end local v25    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .end local v26    # "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    .end local v27    # "src":Ljava/lang/String;
    :catch_0
    move-exception v20

    .line 122
    .local v20, "e":Ljava/lang/Exception;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 98
    .end local v20    # "e":Ljava/lang/Exception;
    .restart local v24    # "space":Ljava/lang/Object;
    .restart local v25    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_b
    :try_start_1
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    instance-of v4, v4, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;

    if-eqz v4, :cond_8

    .line 99
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v21

    check-cast v21, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;

    .line 100
    .local v21, "encryptContent":Lcom/alibaba/wukong/im/MessageContent$EncryptContent;
    invoke-static/range {v21 .. v21}, Ldkc;->a(Lcom/alibaba/wukong/im/MessageContent$EncryptContent;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v25

    goto :goto_1

    .line 124
    .end local v21    # "encryptContent":Lcom/alibaba/wukong/im/MessageContent$EncryptContent;
    .end local v24    # "space":Ljava/lang/Object;
    .end local v25    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_c
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    if-eqz v4, :cond_d

    move-object/from16 v0, p3

    instance-of v4, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v4, :cond_d

    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v4

    sget-object v5, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-ne v4, v5, :cond_d

    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0x2bc

    if-ne v4, v5, :cond_d

    move-object/from16 v4, p3

    .line 125
    check-cast v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    move-object/from16 v23, v0

    .line 126
    .local v23, "obj":Ljava/lang/Object;
    if-eqz v23, :cond_0

    move-object/from16 v0, v23

    instance-of v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;

    if-eqz v4, :cond_0

    move-object/from16 v16, v23

    .line 127
    check-cast v16, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;

    .line 128
    .local v16, "announce":Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;->text:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 129
    move-object/from16 v0, v16

    iget-object v14, v0, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;->text:Ljava/lang/String;

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-wide/from16 v12, p4

    move-object/from16 v15, p3

    invoke-direct/range {v10 .. v15}, Ldpa;->a(Landroid/content/Context;JLjava/lang/String;Lcom/alibaba/wukong/im/Message;)V

    goto/16 :goto_0

    .line 133
    .end local v16    # "announce":Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;
    .end local v23    # "obj":Ljava/lang/Object;
    :cond_d
    const-string/jumbo v4, "NAVIGATOR"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/navigator/Navigator;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v4

    const-string/jumbo v5, "https://qr.dingtalk.com/im/forward.html"

    new-instance v6, Ldpa$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-wide/from16 v2, p4

    invoke-direct {v6, v0, v1, v2, v3}, Ldpa$1;-><init>(Ldpa;Lcom/alibaba/wukong/im/Message;J)V

    invoke-interface {v4, v5, v6}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_0
.end method
