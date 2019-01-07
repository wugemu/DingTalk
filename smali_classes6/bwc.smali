.class public final Lbwc;
.super Ljava/lang/Object;
.source "BarrageConvert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .param p0, "srcCid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 44
    :cond_0
    const/4 v1, 0x0

    .line 62
    :cond_1
    return-object v1

    .line 47
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    .local v1, "barrages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/Message;

    .line 49
    .local v2, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 52
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "msgCid":Ljava/lang/String;
    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz p1, :cond_3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1066
    :cond_4
    if-eqz v2, :cond_5

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    if-nez v4, :cond_7

    .line 1067
    :cond_5
    const/4 v0, 0x0

    .line 58
    .end local v2    # "message":Lcom/alibaba/wukong/im/Message;
    .local v0, "barrage":Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;
    :cond_6
    :goto_1
    if-eqz v0, :cond_3

    .line 59
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1069
    .end local v0    # "barrage":Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;
    .restart local v2    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_7
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->recallStatus()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_8

    .line 1071
    const/4 v0, 0x0

    goto :goto_1

    .line 1074
    :cond_8
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    .line 1075
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->creatorType()Lcom/alibaba/wukong/im/Message$CreatorType;

    move-result-object v6

    sget-object v7, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    if-ne v6, v7, :cond_a

    .line 1076
    invoke-static {p0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1078
    const/4 v0, 0x0

    goto :goto_1

    .line 1079
    :cond_9
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->tag()J

    move-result-wide v6

    const-wide/16 v8, 0x258

    cmp-long v4, v6, v8

    if-eqz v4, :cond_a

    .line 1081
    const/4 v0, 0x0

    goto :goto_1

    .line 1085
    :cond_a
    new-instance v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;-><init>()V

    .line 1086
    iput-object v2, v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->message:Lcom/alibaba/wukong/im/Message;

    .line 1087
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->timestamp:J

    .line 1089
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    .line 1090
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    .line 1091
    sparse-switch v4, :sswitch_data_0

    .line 1222
    sget v4, Lbtp$g;->dt_lst_msg_tip_error:I

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->liveContent:Ljava/lang/String;

    goto :goto_1

    .line 1093
    :sswitch_0
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v4

    .line 1094
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v6

    invoke-static {v4, v6}, Lcpt;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->liveContent:Ljava/lang/String;

    goto :goto_1

    .line 1100
    :sswitch_1
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getExtension()Ljava/util/Map;

    move-result-object v4

    .line 1101
    if-eqz v4, :cond_c

    const-string/jumbo v7, "e_id"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 1102
    const-string/jumbo v7, "p_id"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const-string/jumbo v7, "-10"

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1103
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "["

    aput-object v8, v4, v7

    const/4 v7, 0x1

    sget v8, Lbtp$g;->dt_chat_quick_message_praise:I

    .line 1104
    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    const/4 v6, 0x2

    const-string/jumbo v7, "]"

    aput-object v7, v4, v6

    .line 1103
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->liveContent:Ljava/lang/String;

    goto/16 :goto_1

    .line 1107
    :cond_b
    sget v4, Lbtp$g;->dt_lst_msg_tip_emotion:I

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->liveContent:Ljava/lang/String;

    goto/16 :goto_1

    .line 1110
    :cond_c
    sget v4, Lbtp$g;->and_lst_msg_tip_pic:I

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->liveContent:Ljava/lang/String;

    goto/16 :goto_1

    .line 1115
    :sswitch_2
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "["

    aput-object v8, v4, v7

    const/4 v7, 0x1

    sget v8, Lbtp$g;->dt_cspace_entrypt_file_type_image:I

    .line 1116
    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    const/4 v6, 0x2

    const-string/jumbo v7, "]"

    aput-object v7, v4, v6

    .line 1115
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->liveContent:Ljava/lang/String;

    goto/16 :goto_1

    .line 1122
    :sswitch_3
    sget v4, Lbtp$g;->and_lst_msg_tip_voice:I

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->liveContent:Ljava/lang/String;

    goto/16 :goto_1

    .line 1126
    :sswitch_4
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "["

    aput-object v8, v4, v7

    const/4 v7, 0x1

    sget v8, Lbtp$g;->dt_cspace_entrypt_file_type_amr:I

    .line 1127
    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    const/4 v6, 0x2

    const-string/jumbo v7, "]"

    aput-object v7, v4, v6

    .line 1126
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->liveContent:Ljava/lang/String;

    goto/16 :goto_1

    .line 1133
    :sswitch_5
    sget v4, Lbtp$g;->dt_im_lst_msg_tip_common_video:I

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->liveContent:Ljava/lang/String;

    goto/16 :goto_1

    .line 1138
    :sswitch_6
    sget v4, Lbtp$g;->and_lst_msg_tip_video:I

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->liveContent:Ljava/lang/String;

    goto/16 :goto_1

    .line 1142
    :sswitch_7
    sget v4, Lbtp$g;->and_lst_msg_tip_gis:I

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->liveContent:Ljava/lang/String;

    goto/16 :goto_1

    .line 1146
    :sswitch_8
    sget v4, Lbtp$g;->dt_im_quote_link:I

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->liveContent:Ljava/lang/String;

    goto/16 :goto_1

    .line 1155
    :sswitch_9
    sget v4, Lbtp$g;->and_lst_msg_tip_file:I

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->liveContent:Ljava/lang/String;

    goto/16 :goto_1

    .line 1159
    :sswitch_a
    sget v4, Lbtp$g;->dt_message_merge_robot_content:I

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->liveContent:Ljava/lang/String;

    goto/16 :goto_1

    .line 1164
    :sswitch_b
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "[OA"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    sget v8, Lbtp$g;->dt_common_message:I

    .line 1165
    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    const/4 v6, 0x2

    const-string/jumbo v7, "]"

    aput-object v7, v4, v6

    .line 1164
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->liveContent:Ljava/lang/String;

    goto/16 :goto_1

    .line 1174
    :sswitch_c
    sget v4, Lbtp$g;->and_lst_msg_tip_lucky_money:I

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->liveContent:Ljava/lang/String;

    goto/16 :goto_1

    .line 1179
    :sswitch_d
    sget v4, Lbtp$g;->dt_redenvelop_luckytime_conversation_content_title:I

    .line 1180
    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->liveContent:Ljava/lang/String;

    goto/16 :goto_1

    .line 1185
    :sswitch_e
    sget v4, Lbtp$g;->and_lst_msg_tip_pub:I

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->liveContent:Ljava/lang/String;

    goto/16 :goto_1

    .line 1189
    :sswitch_f
    sget v4, Lbtp$g;->and_lst_msg_tip_namecard:I

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->liveContent:Ljava/lang/String;

    goto/16 :goto_1

    .line 1193
    :sswitch_10
    sget v4, Lbtp$g;->and_lst_msg_tip_group_announce:I

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->liveContent:Ljava/lang/String;

    goto/16 :goto_1

    .line 1197
    :sswitch_11
    sget v4, Lbtp$g;->and_lst_msg_tip_mail:I

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->liveContent:Ljava/lang/String;

    goto/16 :goto_1

    .line 1201
    :sswitch_12
    sget v4, Lbtp$g;->dt_attachment_type_chat_record:I

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->liveContent:Ljava/lang/String;

    goto/16 :goto_1

    .line 1205
    :sswitch_13
    sget v4, Lbtp$g;->and_lst_msg_tip_ding:I

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->liveContent:Ljava/lang/String;

    goto/16 :goto_1

    .line 1209
    :sswitch_14
    sget v4, Lbtp$g;->dt_im_lst_msg_live_card_record:I

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->liveContent:Ljava/lang/String;

    .line 1210
    instance-of v4, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v4, :cond_6

    .line 1211
    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .end local v2    # "message":Lcom/alibaba/wukong/im/Message;
    iget-object v4, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 1212
    instance-of v6, v4, Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;

    if-eqz v6, :cond_6

    .line 1213
    check-cast v4, Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;

    .line 1214
    iget-object v6, v4, Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;->title:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1215
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->liveContent:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;->title:Ljava/lang/String;

    aput-object v4, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->liveContent:Ljava/lang/String;

    goto/16 :goto_1

    .line 1091
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x4 -> :sswitch_9
        0x65 -> :sswitch_e
        0x66 -> :sswitch_8
        0x67 -> :sswitch_6
        0x68 -> :sswitch_7
        0xc9 -> :sswitch_e
        0xca -> :sswitch_5
        0xcb -> :sswitch_2
        0xcc -> :sswitch_4
        0xcd -> :sswitch_9
        0xce -> :sswitch_9
        0xfb -> :sswitch_1
        0xfc -> :sswitch_3
        0xfd -> :sswitch_6
        0xfe -> :sswitch_5
        0x12c -> :sswitch_b
        0x12d -> :sswitch_b
        0x190 -> :sswitch_11
        0x1f4 -> :sswitch_9
        0x1f5 -> :sswitch_9
        0x1f6 -> :sswitch_9
        0x258 -> :sswitch_f
        0x2bc -> :sswitch_10
        0x384 -> :sswitch_c
        0x385 -> :sswitch_c
        0x386 -> :sswitch_c
        0x388 -> :sswitch_c
        0x389 -> :sswitch_c
        0x38a -> :sswitch_d
        0x38b -> :sswitch_d
        0x38c -> :sswitch_c
        0x4b0 -> :sswitch_a
        0x5dc -> :sswitch_12
        0x640 -> :sswitch_13
        0x960 -> :sswitch_14
    .end sparse-switch
.end method
