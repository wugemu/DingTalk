.class public Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
.super Lcom/alibaba/wukong/im/ExtendedMessage;
.source "DingtalkMessage.java"


# static fields
.field private static final ACTION_WAIT:Ljava/lang/String; = "wait"

.field private static final CONTENT_BACKGROUND_KEY:Ljava/lang/String; = "c_bg"

.field private static final THANKS_ACTION:Ljava/lang/String; = "thanksAction"


# instance fields
.field public mLocalImageHeight:I

.field public mLocalImageWidth:I

.field public mThirdPartyDo:Ljava/lang/Object;

.field public msgDisplayType:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alibaba/wukong/im/ExtendedMessage;-><init>()V

    return-void
.end method

.method private static getCustomContent(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    .locals 5
    .param p0, "messageContent"    # Lcom/alibaba/wukong/im/MessageContent;

    .prologue
    const/4 v2, 0x0

    .line 235
    instance-of v3, p0, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    if-nez v3, :cond_0

    move-object v0, v2

    .line 247
    :goto_0
    return-object v0

    :cond_0
    move-object v1, p0

    .line 238
    check-cast v1, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    .line 239
    .local v1, "multiMessageContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move-object v0, v2

    .line 240
    goto :goto_0

    .line 242
    :cond_2
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent;

    .line 243
    .local v0, "content":Lcom/alibaba/wukong/im/MessageContent;
    instance-of v3, v0, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    if-nez v3, :cond_3

    move-object v0, v2

    .line 244
    goto :goto_0

    .line 247
    :cond_3
    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    goto :goto_0
.end method

.method private static getCustomExtension(Lcom/alibaba/wukong/im/MessageContent;)Ljava/util/Map;
    .locals 2
    .param p0, "messageContent"    # Lcom/alibaba/wukong/im/MessageContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/MessageContent;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    invoke-static {p0}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->getCustomContent(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    move-result-object v0

    .line 252
    .local v0, "customMessageContent":Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->extension()Ljava/util/Map;

    move-result-object v1

    goto :goto_0
.end method

.method private static getMarkdownExtendDo(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;
    .locals 3
    .param p0, "messageContent"    # Lcom/alibaba/wukong/im/MessageContent;

    .prologue
    .line 223
    instance-of v1, p0, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;

    if-nez v1, :cond_0

    .line 224
    const/4 v1, 0x0

    .line 227
    :goto_0
    return-object v1

    :cond_0
    move-object v0, p0

    .line 226
    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;

    .line 227
    .local v0, "robotMarkdownContent":Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;->extension()Ljava/util/Map;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;

    invoke-static {v1, v2}, Lckw;->a(Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;

    goto :goto_0
.end method

.method public static getMessageExtraProperty(Lcom/alibaba/wukong/im/Message;Z)Ljava/lang/Object;
    .locals 11
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p1, "forceGet"    # Z

    .prologue
    const/4 v7, 0x0

    .line 44
    if-nez p0, :cond_1

    move-object v5, v7

    .line 172
    :cond_0
    :goto_0
    return-object v5

    .line 48
    :cond_1
    const/4 v5, 0x0

    .line 49
    .local v5, "result":Ljava/lang/Object;
    instance-of v6, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v6, :cond_2

    move-object v6, p0

    .line 50
    check-cast v6, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    if-eqz v6, :cond_2

    if-nez p1, :cond_2

    move-object v6, p0

    .line 51
    check-cast v6, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v5, v6, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 55
    .end local v5    # "result":Ljava/lang/Object;
    :cond_2
    :try_start_0
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    .line 56
    .local v4, "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->creatorType()Lcom/alibaba/wukong/im/Message$CreatorType;

    move-result-object v6

    sget-object v8, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    if-ne v6, v8, :cond_6

    .line 57
    instance-of v6, v4, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconContent;

    if-eqz v6, :cond_3

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v6

    const/16 v8, 0x4b2

    if-eq v6, v8, :cond_4

    :cond_3
    instance-of v6, v4, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconExContent;

    if-eqz v6, :cond_5

    .line 58
    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v6

    const/16 v8, 0x4b4

    if-ne v6, v8, :cond_5

    .line 59
    :cond_4
    check-cast v4, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;

    .end local v4    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;->extension()Ljava/util/Map;

    move-result-object v6

    const-class v8, Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;

    invoke-static {v6, v8}, Lckw;->a(Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .restart local v5    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 61
    .end local v5    # "result":Ljava/lang/Object;
    .restart local v4    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    :cond_5
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v3

    .line 62
    .local v3, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 63
    const-class v6, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;

    invoke-static {v3, v6}, Lckw;->a(Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .restart local v5    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 67
    .end local v3    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "result":Ljava/lang/Object;
    :cond_6
    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    .line 73
    :sswitch_0
    invoke-static {p0}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->getThirdPartyDoFromOA(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;

    move-result-object v5

    .line 74
    .local v5, "result":Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;
    goto :goto_0

    .line 69
    .end local v5    # "result":Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;
    :sswitch_1
    const-class v6, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    invoke-static {v4, v6}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->getThirdPartyDoFromMultiContent(Lcom/alibaba/wukong/im/MessageContent;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 70
    .local v5, "result":Ljava/lang/Object;
    goto :goto_0

    .line 79
    .end local v5    # "result":Ljava/lang/Object;
    :sswitch_2
    const-class v6, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-static {v4, v6}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->getThirdPartyDoFromMultiContent(Lcom/alibaba/wukong/im/MessageContent;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 80
    .restart local v5    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 82
    .end local v5    # "result":Ljava/lang/Object;
    :sswitch_3
    const-class v6, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    invoke-static {v4, v6}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->getThirdPartyDoFromMultiContent(Lcom/alibaba/wukong/im/MessageContent;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 83
    .restart local v5    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 85
    .end local v5    # "result":Ljava/lang/Object;
    :sswitch_4
    const-class v6, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    invoke-static {v4, v6}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->getThirdPartyDoFromMultiContent(Lcom/alibaba/wukong/im/MessageContent;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 86
    .restart local v5    # "result":Ljava/lang/Object;
    goto/16 :goto_0

    .line 88
    .end local v5    # "result":Ljava/lang/Object;
    :sswitch_5
    const-class v6, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;

    invoke-static {v4, v6}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->getThirdPartyDoFromMultiContent(Lcom/alibaba/wukong/im/MessageContent;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 89
    .restart local v5    # "result":Ljava/lang/Object;
    goto/16 :goto_0

    .line 91
    .end local v5    # "result":Ljava/lang/Object;
    :sswitch_6
    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->getCustomContent(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    move-result-object v1

    .line 92
    .local v1, "customMessageContent":Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    if-eqz v1, :cond_0

    .line 93
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->extension()Ljava/util/Map;

    move-result-object v6

    const-class v8, Lcom/alibaba/android/dingtalkbase/models/dos/crm/CRMLinkDO;

    invoke-static {v6, v8}, Lckw;->a(Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 94
    .restart local v5    # "result":Ljava/lang/Object;
    instance-of v6, v5, Lcom/alibaba/android/dingtalkbase/models/dos/crm/CRMLinkDO;

    if-eqz v6, :cond_0

    .line 96
    move-object v0, v5

    check-cast v0, Lcom/alibaba/android/dingtalkbase/models/dos/crm/CRMLinkDO;

    move-object v6, v0

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->url()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/alibaba/android/dingtalkbase/models/dos/crm/CRMLinkDO;->url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 167
    .end local v1    # "customMessageContent":Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    .end local v4    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    .end local v5    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 168
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "im"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "getMessageExtraProperty error="

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 169
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 168
    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 105
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    :sswitch_7
    :try_start_1
    const-class v6, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    invoke-static {v4, v6}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->getThirdPartyDoFromMultiContent(Lcom/alibaba/wukong/im/MessageContent;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 106
    .restart local v5    # "result":Ljava/lang/Object;
    instance-of v6, v5, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    if-eqz v6, :cond_0

    .line 107
    move-object v0, v5

    check-cast v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->sortReceivers()V

    goto/16 :goto_0

    .line 111
    .end local v5    # "result":Ljava/lang/Object;
    :sswitch_8
    const-class v6, Lcom/alibaba/android/dingtalkim/base/model/AlipayRedPacketsMessageBodyDo;

    invoke-static {v4, v6}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->getThirdPartyDoFromMultiContent(Lcom/alibaba/wukong/im/MessageContent;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 112
    .restart local v5    # "result":Ljava/lang/Object;
    goto/16 :goto_0

    .line 114
    .end local v5    # "result":Ljava/lang/Object;
    :sswitch_9
    const-class v6, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    invoke-static {v4, v6}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->getThirdPartyDoFromMultiContent(Lcom/alibaba/wukong/im/MessageContent;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 115
    .restart local v5    # "result":Ljava/lang/Object;
    goto/16 :goto_0

    .line 117
    .end local v5    # "result":Ljava/lang/Object;
    :sswitch_a
    const-class v6, Lcom/alibaba/android/dingtalkim/base/model/LuckyTimeRedPacketsRemindDo;

    invoke-static {v4, v6}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->getThirdPartyDoFromMultiContent(Lcom/alibaba/wukong/im/MessageContent;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 118
    .restart local v5    # "result":Ljava/lang/Object;
    goto/16 :goto_0

    .line 120
    .end local v5    # "result":Ljava/lang/Object;
    :sswitch_b
    const-class v6, Lcom/alibaba/android/dingtalkim/base/model/GISMessageBodyDo;

    invoke-static {v4, v6}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->getThirdPartyDoFromMultiContent(Lcom/alibaba/wukong/im/MessageContent;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 121
    .restart local v5    # "result":Ljava/lang/Object;
    goto/16 :goto_0

    .line 123
    .end local v5    # "result":Ljava/lang/Object;
    :sswitch_c
    const-class v6, Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;

    invoke-static {v4, v6}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->getThirdPartyDoFromMultiContent(Lcom/alibaba/wukong/im/MessageContent;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 124
    .restart local v5    # "result":Ljava/lang/Object;
    goto/16 :goto_0

    .line 128
    .end local v5    # "result":Ljava/lang/Object;
    :sswitch_d
    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->getMarkdownExtendDo(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;

    move-result-object v5

    .line 129
    .local v5, "result":Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;
    goto/16 :goto_0

    .line 131
    .end local v5    # "result":Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;
    :sswitch_e
    const-class v6, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;

    invoke-static {v4, v6}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->getThirdPartyDoFromMultiContent(Lcom/alibaba/wukong/im/MessageContent;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 132
    .local v5, "result":Ljava/lang/Object;
    goto/16 :goto_0

    .line 134
    .end local v5    # "result":Ljava/lang/Object;
    :sswitch_f
    const-class v6, Lcom/alibaba/android/dingtalkim/base/model/GmicNameCardDo;

    invoke-static {v4, v6}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->getThirdPartyDoFromMultiContent(Lcom/alibaba/wukong/im/MessageContent;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 135
    .restart local v5    # "result":Ljava/lang/Object;
    goto/16 :goto_0

    .line 140
    .end local v5    # "result":Ljava/lang/Object;
    :sswitch_10
    const-class v6, Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;

    invoke-static {v4, v6}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->getThirdPartyDoFromMultiContent(Lcom/alibaba/wukong/im/MessageContent;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 141
    .restart local v5    # "result":Ljava/lang/Object;
    goto/16 :goto_0

    .line 143
    .end local v5    # "result":Ljava/lang/Object;
    :sswitch_11
    const-class v6, Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;

    invoke-static {v4, v6}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->getThirdPartyDoFromMultiContent(Lcom/alibaba/wukong/im/MessageContent;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 144
    .restart local v5    # "result":Ljava/lang/Object;
    goto/16 :goto_0

    .line 146
    .end local v5    # "result":Ljava/lang/Object;
    :sswitch_12
    const-class v6, Lcom/alibaba/android/dingtalkim/base/model/JobCardDo;

    invoke-static {v4, v6}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->getThirdPartyDoFromMultiContent(Lcom/alibaba/wukong/im/MessageContent;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 147
    .restart local v5    # "result":Ljava/lang/Object;
    goto/16 :goto_0

    .line 149
    .end local v5    # "result":Ljava/lang/Object;
    :sswitch_13
    const-class v6, Lcom/alibaba/android/dingtalkim/base/model/ResumeCardDo;

    invoke-static {v4, v6}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->getThirdPartyDoFromMultiContent(Lcom/alibaba/wukong/im/MessageContent;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 150
    .restart local v5    # "result":Ljava/lang/Object;
    goto/16 :goto_0

    .line 152
    .end local v5    # "result":Ljava/lang/Object;
    :sswitch_14
    const-class v6, Lcom/alibaba/android/dingtalkim/base/model/ResumeAuthDo;

    invoke-static {v4, v6}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->getThirdPartyDoFromMultiContent(Lcom/alibaba/wukong/im/MessageContent;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 153
    .restart local v5    # "result":Ljava/lang/Object;
    goto/16 :goto_0

    .line 155
    .end local v5    # "result":Ljava/lang/Object;
    :sswitch_15
    const-class v6, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;

    invoke-static {v4, v6}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->getThirdPartyDoFromMultiContent(Lcom/alibaba/wukong/im/MessageContent;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 156
    .restart local v5    # "result":Ljava/lang/Object;
    goto/16 :goto_0

    .line 158
    .end local v5    # "result":Ljava/lang/Object;
    :sswitch_16
    const-class v6, Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;

    invoke-static {v4, v6}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->getThirdPartyDoFromMultiContent(Lcom/alibaba/wukong/im/MessageContent;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 159
    .restart local v5    # "result":Ljava/lang/Object;
    goto/16 :goto_0

    .line 161
    .end local v5    # "result":Ljava/lang/Object;
    :sswitch_17
    const-class v6, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel;

    invoke-static {v4, v6}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->getThirdPartyDoFromMultiContent(Lcom/alibaba/wukong/im/MessageContent;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .restart local v5    # "result":Ljava/lang/Object;
    goto/16 :goto_0

    .line 67
    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_0
        0x12d -> :sswitch_0
        0x190 -> :sswitch_1
        0x1f4 -> :sswitch_2
        0x1f5 -> :sswitch_2
        0x1f6 -> :sswitch_2
        0x1f7 -> :sswitch_2
        0x1f8 -> :sswitch_3
        0x258 -> :sswitch_4
        0x2bc -> :sswitch_5
        0x320 -> :sswitch_6
        0x384 -> :sswitch_7
        0x385 -> :sswitch_7
        0x386 -> :sswitch_7
        0x388 -> :sswitch_8
        0x389 -> :sswitch_7
        0x38a -> :sswitch_9
        0x38b -> :sswitch_a
        0x38c -> :sswitch_7
        0x3e8 -> :sswitch_b
        0x44d -> :sswitch_c
        0x4b0 -> :sswitch_d
        0x4b1 -> :sswitch_d
        0x4b3 -> :sswitch_e
        0x578 -> :sswitch_d
        0x708 -> :sswitch_f
        0x76c -> :sswitch_15
        0x7d0 -> :sswitch_10
        0x7d1 -> :sswitch_10
        0x7d2 -> :sswitch_10
        0x7d3 -> :sswitch_10
        0x960 -> :sswitch_11
        0x9c4 -> :sswitch_12
        0x9c5 -> :sswitch_13
        0x9c6 -> :sswitch_14
        0xa29 -> :sswitch_16
        0xa2a -> :sswitch_17
    .end sparse-switch
.end method

.method private static getThirdPartyDoFromMultiContent(Lcom/alibaba/wukong/im/MessageContent;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "messageContent"    # Lcom/alibaba/wukong/im/MessageContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/wukong/im/MessageContent;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 231
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->getCustomExtension(Lcom/alibaba/wukong/im/MessageContent;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lckw;->a(Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getThirdPartyDoFromOA(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;
    .locals 8
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 176
    if-nez p0, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-object v1

    .line 179
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->getCustomExtension(Lcom/alibaba/wukong/im/MessageContent;)Ljava/util/Map;

    move-result-object v0

    .line 180
    .local v0, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 186
    const-string/jumbo v4, "receiverAction"

    const-string/jumbo v5, "receiverAction"

    invoke-interface {p0, v5}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string/jumbo v4, "receiverAction"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 188
    const-string/jumbo v4, "receiverAction"

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_2
    const-string/jumbo v4, "senderAction"

    const-string/jumbo v5, "senderAction"

    invoke-interface {p0, v5}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string/jumbo v4, "senderAction"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 192
    const-string/jumbo v4, "senderAction"

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_3
    const-string/jumbo v4, "thanksAction"

    invoke-interface {p0, v4}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 196
    const-string/jumbo v4, "thanksAction"

    const-string/jumbo v5, "thanksAction"

    invoke-interface {p0, v5}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :cond_4
    const-string/jumbo v4, "c_bg"

    invoke-interface {p0, v4}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 201
    const-string/jumbo v4, "c_bg"

    const-string/jumbo v5, "c_bg"

    invoke-interface {p0, v5}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-class v4, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;

    invoke-static {v0, v4}, Lckw;->a(Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;

    .local v1, "oaDo":Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;
    goto/16 :goto_0

    .line 205
    .end local v1    # "oaDo":Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;
    :cond_5
    const-class v4, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;

    invoke-static {v0, v4}, Lckw;->a(Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;

    .line 206
    .restart local v1    # "oaDo":Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;
    iget-object v2, v1, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->oaReceiverActionDos:[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;

    .line 207
    .local v2, "oaReceiverActionDos":[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;
    iget-object v3, v1, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->oaSenderActionDos:[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;

    .line 208
    .local v3, "oaSenderActionDos":[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;
    if-nez v2, :cond_6

    if-eqz v3, :cond_0

    .line 209
    :cond_6
    if-eqz v2, :cond_7

    array-length v4, v2

    if-ne v4, v7, :cond_7

    aget-object v4, v2, v6

    iget-object v4, v4, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;->actionParams:Ljava/lang/String;

    const-string/jumbo v5, "wait"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    if-eqz v3, :cond_9

    array-length v4, v3

    if-ne v4, v7, :cond_9

    aget-object v4, v3, v6

    iget-object v4, v4, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;->actionParams:Ljava/lang/String;

    const-string/jumbo v5, "wait"

    .line 210
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 212
    :cond_8
    const-string/jumbo v4, "0xFFFCF7DC"

    iput-object v4, v1, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->contentBackground:Ljava/lang/String;

    goto/16 :goto_0

    .line 215
    :cond_9
    const-string/jumbo v4, "0xFFFFFFFF"

    iput-object v4, v1, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->contentBackground:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private isLocalUrl(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 290
    const/4 v0, 0x0

    .line 291
    .local v0, "result":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 292
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "file:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 294
    :cond_1
    :goto_0
    return v0

    .line 292
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public generateDisplayType()Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 282
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->senderId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0, p0}, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->getDisplayViewType(ZLcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMessageExtraProperty(Lcom/alibaba/wukong/im/Message;)Ljava/lang/Object;
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 286
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->getMessageExtraProperty(Lcom/alibaba/wukong/im/Message;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onCreateMessage()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 257
    invoke-super {p0}, Lcom/alibaba/wukong/im/ExtendedMessage;->onCreateMessage()V

    .line 258
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    .line 259
    .local v0, "content":Lcom/alibaba/wukong/im/MessageContent;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0xfb

    if-ne v4, v5, :cond_1

    :cond_0
    move-object v2, v0

    .line 260
    check-cast v2, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    .line 261
    .local v2, "imageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->url()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->isLocalUrl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 262
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->url()Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "file":Ljava/lang/String;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 264
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 265
    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 267
    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 268
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v4, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mLocalImageWidth:I

    .line 269
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v4, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mLocalImageHeight:I

    .line 273
    .end local v1    # "file":Ljava/lang/String;
    .end local v2    # "imageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->generateDisplayType()Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->msgDisplayType:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    .line 274
    invoke-virtual {p0, p0}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->getMessageExtraProperty(Lcom/alibaba/wukong/im/Message;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 275
    return-void
.end method

.method public updateDisplayType()V
    .locals 1

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->generateDisplayType()Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->msgDisplayType:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    .line 279
    return-void
.end method
