.class public final Lcbv;
.super Ljava/lang/Object;
.source "LuckyTimePacketUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "amountStr"    # Ljava/lang/String;

    .prologue
    .line 29
    const-wide/16 v0, 0x0

    .line 31
    .local v0, "amount":D
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 36
    :goto_0
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    cmpg-double v3, v0, v4

    if-gez v3, :cond_0

    .line 37
    const-string/jumbo v3, "??.??"

    .line 45
    :goto_1
    return-object v3

    .line 32
    :catch_0
    move-exception v2

    .line 33
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 38
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const-wide v4, 0x408f400000000000L    # 1000.0

    cmpg-double v3, v0, v4

    if-gez v3, :cond_1

    .line 39
    const-string/jumbo v3, "???.??"

    goto :goto_1

    .line 40
    :cond_1
    const-wide v4, 0x40c3880000000000L    # 10000.0

    cmpg-double v3, v0, v4

    if-gez v3, :cond_2

    .line 41
    const-string/jumbo v3, "????.??"

    goto :goto_1

    .line 42
    :cond_2
    const-wide v4, 0x40f86a0000000000L    # 100000.0

    cmpg-double v3, v0, v4

    if-gez v3, :cond_3

    .line 43
    const-string/jumbo v3, "?????.??"

    goto :goto_1

    .line 45
    :cond_3
    const-string/jumbo v3, "??????.??"

    goto :goto_1
.end method

.method public static a(Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;Lcom/alibaba/wukong/im/Conversation;Z)V
    .locals 13
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "resend"    # Z

    .prologue
    .line 56
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    new-instance v10, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    invoke-direct {v10}, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;-><init>()V

    .line 61
    .local v10, "planDo":Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v0

    iput-wide v0, v10, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->senderId:J

    .line 62
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->pickPlanTime:J

    iput-wide v0, v10, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->timePlan:J

    .line 63
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->clusterId:Ljava/lang/String;

    iput-object v0, v10, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->clusterid:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->congratulations:Ljava/lang/String;

    iput-object v0, v10, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->congrats:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->amount:Ljava/lang/String;

    invoke-static {v0}, Lcbv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->amount:Ljava/lang/String;

    .line 67
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    .line 68
    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    const/16 v1, 0x38a

    const/16 v2, 0x38a

    const-string/jumbo v3, "url"

    const-wide/16 v4, 0x0

    .line 69
    invoke-static {v10}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    .line 68
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/MessageBuilder;->buildCustomMessageContent(IILjava/lang/String;JLjava/util/Map;)Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    move-result-object v9

    .line 70
    .local v9, "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v0, v9}, Lcom/alibaba/wukong/im/MessageBuilder;->buildMessage(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/Message;

    move-result-object v8

    .line 71
    .local v8, "message":Lcom/alibaba/wukong/im/Message;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 73
    .local v7, "ex":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "clusterId"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->clusterId:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v11, Lcom/alibaba/wukong/im/MessageSendInfo;

    invoke-direct {v11}, Lcom/alibaba/wukong/im/MessageSendInfo;-><init>()V

    .line 75
    .local v11, "sendInfo":Lcom/alibaba/wukong/im/MessageSendInfo;
    const/4 v0, 0x1

    iput v0, v11, Lcom/alibaba/wukong/im/MessageSendInfo;->priority:I

    .line 76
    iput-object v7, v11, Lcom/alibaba/wukong/im/MessageSendInfo;->extension:Ljava/util/Map;

    .line 77
    new-instance v12, Lcom/alibaba/wukong/im/XPNInfo;

    invoke-direct {v12}, Lcom/alibaba/wukong/im/XPNInfo;-><init>()V

    .line 78
    .local v12, "xpnInfo":Lcom/alibaba/wukong/im/XPNInfo;
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v0, v8, v11}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/MessageSendInfo;)Lcom/alibaba/wukong/im/Message;

    .line 80
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 81
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lcaj$f;->dt_conversation_redenvelop_goodtime_title:I

    .line 82
    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 83
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, ":"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->congratulations:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 80
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/alibaba/wukong/im/XPNInfo;->alertContent:Ljava/lang/String;

    .line 85
    const-string/jumbo v0, "redpackets"

    const-string/jumbo v1, "send"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "redpackets luckytime msg send clid "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->clusterId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " cid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " isResend="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v0, v8, v12}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/XPNInfo;)Lcom/alibaba/wukong/im/Message;

    .line 87
    const/4 v0, 0x0

    invoke-interface {v8, p1, v0}, Lcom/alibaba/wukong/im/Message;->passSendTo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0
.end method
