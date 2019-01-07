.class public Lekh;
.super Ljava/lang/Object;
.source "MessageNotificationTextBuilder.java"


# static fields
.field private static a:Lekh;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static a()Lekh;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lekh;->a:Lekh;

    if-nez v0, :cond_1

    .line 41
    const-class v1, Lekh;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lekh;->a:Lekh;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lekh;

    invoke-direct {v0}, Lekh;-><init>()V

    sput-object v0, Lekh;->a:Lekh;

    .line 45
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_1
    sget-object v0, Lekh;->a:Lekh;

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lekh;Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;ZILcom/alibaba/wukong/Callback;)V
    .locals 13
    .param p0, "x0"    # Lekh;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/alibaba/wukong/im/Message;
    .param p4, "x4"    # Z
    .param p5, "x5"    # I
    .param p6, "x6"    # Lcom/alibaba/wukong/Callback;

    .prologue
    .line 35
    .line 1095
    if-eqz p6, :cond_0

    .line 1099
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v8

    .line 1100
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    .line 1101
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    .line 1103
    :goto_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->D()Lccq;

    move-result-object v4

    invoke-virtual {v4}, Lccq;->b()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1104
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_11

    .line 1106
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->messageType()Lcom/alibaba/wukong/im/Message$MessageType;

    move-result-object v4

    sget-object v5, Lcom/alibaba/wukong/im/Message$MessageType;->ENCRYPT:Lcom/alibaba/wukong/im/Message$MessageType;

    if-ne v4, v5, :cond_4

    .line 1107
    if-eqz v3, :cond_2

    .line 1108
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const v4, 0x7f091f3a

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 1333
    .end local p3    # "x3":Lcom/alibaba/wukong/im/Message;
    :cond_0
    :goto_1
    return-void

    .line 1101
    .restart local p3    # "x3":Lcom/alibaba/wukong/im/Message;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1110
    :cond_2
    const/4 v2, 0x1

    move/from16 v0, p5

    if-le v0, v2, :cond_3

    .line 1111
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const v4, 0x7f0902b1

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const v7, 0x7f091ee7

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    invoke-virtual {p1, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 1113
    :cond_3
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const v4, 0x7f091ee7

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 1117
    :cond_4
    const-string/jumbo v7, ""

    .line 1118
    const-string/jumbo v4, ""

    .line 1119
    const/4 v6, 0x0

    .line 1120
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_5
    move-object v2, v7

    .line 1306
    .end local p3    # "x3":Lcom/alibaba/wukong/im/Message;
    :goto_2
    if-eqz v3, :cond_a

    .line 1307
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1308
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const v4, 0x7f091f38

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1122
    .restart local p3    # "x3":Lcom/alibaba/wukong/im/Message;
    :sswitch_0
    check-cast v2, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    .line 1123
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v5

    .line 1124
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 1125
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lcpt;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v7

    goto :goto_2

    .line 1130
    :sswitch_1
    const v2, 0x7f091e06

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v7

    .line 1131
    goto :goto_2

    .line 1135
    :sswitch_2
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/MessageContent;)Ljava/lang/String;

    move-result-object v4

    .line 1136
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1137
    const v2, 0x7f091e06

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v7

    goto :goto_2

    .line 1142
    :sswitch_3
    const v2, 0x7f091e08

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v7

    .line 1143
    goto :goto_2

    .line 1148
    :sswitch_4
    const v2, 0x7f091e0b

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v7

    .line 1149
    goto :goto_2

    .line 1155
    :sswitch_5
    const v2, 0x7f091dfe

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v7

    .line 1156
    goto/16 :goto_2

    .line 1159
    :sswitch_6
    const v2, 0x7f091e04

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v7

    .line 1160
    goto/16 :goto_2

    .line 1163
    :sswitch_7
    const v2, 0x7f091e03

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v7

    .line 1164
    goto/16 :goto_2

    .line 1167
    :sswitch_8
    move-object/from16 v0, p3

    instance-of v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v2, :cond_5

    .line 1168
    check-cast p3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .end local p3    # "x3":Lcom/alibaba/wukong/im/Message;
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 1169
    if-eqz v2, :cond_15

    instance-of v5, v2, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;

    if-eqz v5, :cond_15

    .line 1170
    check-cast v2, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;

    .line 1171
    iget-object v5, v2, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;->text:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 1172
    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;->text:Ljava/lang/String;

    :goto_3
    move-object v4, v2

    move-object v2, v7

    .line 1175
    goto/16 :goto_2

    .line 1179
    .restart local p3    # "x3":Lcom/alibaba/wukong/im/Message;
    :sswitch_9
    move-object/from16 v0, p3

    instance-of v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v2, :cond_5

    move-object/from16 v2, p3

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    if-eqz v2, :cond_5

    .line 1180
    check-cast p3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .end local p3    # "x3":Lcom/alibaba/wukong/im/Message;
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    .line 1181
    const v4, 0x7f092047

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1182
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v4

    iget-object v7, v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->congrats:Ljava/lang/String;

    iget v2, v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->type:I

    invoke-virtual {v4, v7, v2}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v5

    .line 1183
    goto/16 :goto_2

    .line 1187
    .restart local p3    # "x3":Lcom/alibaba/wukong/im/Message;
    :sswitch_a
    move-object/from16 v0, p3

    instance-of v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v2, :cond_5

    move-object/from16 v2, p3

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    if-eqz v2, :cond_5

    .line 1188
    check-cast p3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .end local p3    # "x3":Lcom/alibaba/wukong/im/Message;
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    .line 1189
    const v4, 0x7f091916

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1190
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v4

    iget-object v7, v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->congrats:Ljava/lang/String;

    iget v2, v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->type:I

    invoke-virtual {v4, v7, v2}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v5

    .line 1191
    goto/16 :goto_2

    .line 1196
    .restart local p3    # "x3":Lcom/alibaba/wukong/im/Message;
    :sswitch_b
    move-object/from16 v0, p3

    instance-of v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v2, :cond_5

    move-object/from16 v2, p3

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    if-eqz v2, :cond_5

    .line 1197
    check-cast p3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .end local p3    # "x3":Lcom/alibaba/wukong/im/Message;
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    .line 1198
    const v4, 0x7f09204a

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1199
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v4

    iget-object v7, v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->congrats:Ljava/lang/String;

    iget v2, v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->type:I

    invoke-virtual {v4, v7, v2}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v5

    .line 1200
    goto/16 :goto_2

    .line 1204
    .restart local p3    # "x3":Lcom/alibaba/wukong/im/Message;
    :sswitch_c
    move-object/from16 v0, p3

    instance-of v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v2, :cond_5

    move-object/from16 v2, p3

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkim/base/model/AlipayRedPacketsMessageBodyDo;

    if-eqz v2, :cond_5

    .line 1205
    check-cast p3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .end local p3    # "x3":Lcom/alibaba/wukong/im/Message;
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/AlipayRedPacketsMessageBodyDo;

    .line 1206
    const v4, 0x7f092046

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1207
    iget-object v4, v2, Lcom/alibaba/android/dingtalkim/base/model/AlipayRedPacketsMessageBodyDo;->title:Ljava/lang/String;

    move-object v2, v5

    .line 1208
    goto/16 :goto_2

    .line 1212
    .restart local p3    # "x3":Lcom/alibaba/wukong/im/Message;
    :sswitch_d
    move-object/from16 v0, p3

    instance-of v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v2, :cond_5

    move-object/from16 v2, p3

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    if-eqz v2, :cond_5

    .line 1213
    check-cast p3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .end local p3    # "x3":Lcom/alibaba/wukong/im/Message;
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    .line 1214
    const v4, 0x7f091922

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1215
    const/4 v6, 0x1

    .line 1216
    iget-wide v10, v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->timePlan:J

    invoke-static {p2, v10, v11}, Ldrp;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    move-object v2, v5

    .line 1217
    goto/16 :goto_2

    .line 1221
    .restart local p3    # "x3":Lcom/alibaba/wukong/im/Message;
    :sswitch_e
    move-object/from16 v0, p3

    instance-of v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v2, :cond_5

    move-object/from16 v2, p3

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkim/base/model/LuckyTimeRedPacketsRemindDo;

    if-eqz v2, :cond_5

    .line 1222
    check-cast p3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .end local p3    # "x3":Lcom/alibaba/wukong/im/Message;
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/LuckyTimeRedPacketsRemindDo;

    .line 1223
    const v4, 0x7f091922

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1224
    const/4 v6, 0x1

    .line 1225
    iget-object v4, v2, Lcom/alibaba/android/dingtalkim/base/model/LuckyTimeRedPacketsRemindDo;->content:Ljava/lang/String;

    move-object v2, v5

    .line 1226
    goto/16 :goto_2

    .line 1230
    .restart local p3    # "x3":Lcom/alibaba/wukong/im/Message;
    :sswitch_f
    move-object/from16 v0, p3

    instance-of v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v2, :cond_5

    move-object/from16 v2, p3

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    if-eqz v2, :cond_5

    .line 1231
    check-cast p3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .end local p3    # "x3":Lcom/alibaba/wukong/im/Message;
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    .line 1232
    const v4, 0x7f091a68

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1233
    iget-object v5, v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->packageName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1234
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1237
    :cond_6
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v5

    iget-object v7, v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->congrats:Ljava/lang/String;

    iget v2, v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->type:I

    invoke-virtual {v5, v7, v2}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    move-object v2, v4

    move-object v4, v12

    .line 1238
    goto/16 :goto_2

    .line 1244
    .restart local p3    # "x3":Lcom/alibaba/wukong/im/Message;
    :sswitch_10
    const v2, 0x7f091e0a

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v7

    .line 1245
    goto/16 :goto_2

    .line 1248
    :sswitch_11
    const v2, 0x7f091e00    # 1.8226E38f

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v7

    .line 1249
    goto/16 :goto_2

    .line 1254
    :sswitch_12
    const v2, 0x7f0912d5

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v7

    .line 1255
    goto/16 :goto_2

    .line 1260
    :sswitch_13
    instance-of v5, v2, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;

    if-eqz v5, :cond_5

    .line 1261
    check-cast v2, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;

    .line 1262
    const/4 v5, 0x0

    .line 1263
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;->title()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_14

    .line 1264
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;->title()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v5

    invoke-static {v2, v5}, Lcpt;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 1266
    :goto_4
    invoke-static/range {p3 .. p3}, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->isSupportedMarkdown(Lcom/alibaba/wukong/im/Message;)Z

    move-result v5

    .line 1267
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    if-eqz v5, :cond_5

    .line 1270
    const/4 v4, 0x0

    .line 1271
    move-object/from16 v0, p3

    instance-of v5, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v5, :cond_7

    .line 1272
    check-cast p3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .end local p3    # "x3":Lcom/alibaba/wukong/im/Message;
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->msgDisplayType:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    sget-object v9, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->RobotMarkdownNoAvatarExText:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    if-ne v5, v9, :cond_7

    .line 1273
    const/4 v4, 0x1

    .line 1276
    :cond_7
    if-eqz v4, :cond_13

    .line 1277
    const/4 v4, 0x1

    :goto_5
    move v6, v4

    move-object v4, v2

    move-object v2, v7

    .line 1283
    goto/16 :goto_2

    .line 1287
    .restart local p3    # "x3":Lcom/alibaba/wukong/im/Message;
    :sswitch_14
    instance-of v5, v2, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    if-eqz v5, :cond_5

    .line 1288
    check-cast v2, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    .line 1289
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 1290
    const/4 v5, 0x0

    .line 1291
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    if-eqz v9, :cond_12

    .line 1292
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    .line 1294
    :goto_6
    if-eqz v2, :cond_5

    .line 1295
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->title()Ljava/lang/String;

    move-result-object v2

    .line 1296
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    move-object v4, v2

    move-object v2, v7

    .line 1297
    goto/16 :goto_2

    .line 1310
    .end local p3    # "x3":Lcom/alibaba/wukong/im/Message;
    :cond_8
    const/4 v3, 0x1

    move/from16 v0, p5

    if-le v0, v3, :cond_9

    .line 1311
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const v6, 0x7f0902b1

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v8

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    const/4 v2, 0x1

    aput-object p2, v3, v2

    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1313
    :cond_9
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    const/4 v2, 0x1

    aput-object p2, v3, v2

    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1317
    :cond_a
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1318
    const/4 v2, 0x1

    move/from16 v0, p5

    if-le v0, v2, :cond_b

    .line 1319
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const v4, 0x7f0902b1

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const v7, 0x7f091ee9

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    invoke-virtual {p1, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1321
    :cond_b
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const v4, 0x7f091ee9

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1324
    :cond_c
    const/4 v3, 0x1

    move/from16 v0, p5

    if-le v0, v3, :cond_e

    .line 1325
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const v7, 0x7f0902b1

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v6, :cond_d

    const-string/jumbo v2, ""

    :goto_7
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v10

    invoke-virtual {p1, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    const/4 v2, 0x1

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 1327
    :cond_e
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v6, :cond_f

    const-string/jumbo v2, ""

    :goto_8
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    const/4 v2, 0x1

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    .line 1332
    .restart local p3    # "x3":Lcom/alibaba/wukong/im/Message;
    :cond_10
    if-eqz p4, :cond_11

    .line 1333
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const v4, 0x7f091f3a

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1335
    :cond_11
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const v4, 0x7f091f38

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_12
    move-object v2, v5

    goto/16 :goto_6

    .end local p3    # "x3":Lcom/alibaba/wukong/im/Message;
    :cond_13
    move v4, v6

    goto/16 :goto_5

    .restart local p3    # "x3":Lcom/alibaba/wukong/im/Message;
    :cond_14
    move-object v2, v5

    goto/16 :goto_4

    .end local p3    # "x3":Lcom/alibaba/wukong/im/Message;
    :cond_15
    move-object v2, v4

    goto/16 :goto_3

    .line 1120
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x66 -> :sswitch_3
        0x67 -> :sswitch_10
        0x68 -> :sswitch_11
        0xca -> :sswitch_12
        0xcb -> :sswitch_1
        0xcc -> :sswitch_4
        0xcd -> :sswitch_10
        0xce -> :sswitch_12
        0xfb -> :sswitch_2
        0xfc -> :sswitch_4
        0xfd -> :sswitch_10
        0xfe -> :sswitch_12
        0x190 -> :sswitch_7
        0x1f4 -> :sswitch_5
        0x1f5 -> :sswitch_5
        0x1f6 -> :sswitch_5
        0x258 -> :sswitch_6
        0x2bc -> :sswitch_8
        0x384 -> :sswitch_9
        0x385 -> :sswitch_b
        0x386 -> :sswitch_b
        0x388 -> :sswitch_c
        0x389 -> :sswitch_f
        0x38a -> :sswitch_d
        0x38b -> :sswitch_e
        0x38c -> :sswitch_a
        0x4b0 -> :sswitch_13
        0x4b1 -> :sswitch_13
        0x514 -> :sswitch_14
        0x578 -> :sswitch_13
    .end sparse-switch
.end method
