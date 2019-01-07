.class final Ldmx$1;
.super Ljava/lang/Object;
.source "LuckyTimePlanDataCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldmx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ldmx;


# direct methods
.method constructor <init>(Ldmx;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Ldmx;

    .prologue
    .line 87
    iput-object p1, p0, Ldmx$1;->b:Ldmx;

    iput-object p2, p0, Ldmx$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .prologue
    .line 91
    invoke-static {}, Ldmy;->a()J

    move-result-wide v14

    const-wide/32 v16, 0xea60

    sub-long v4, v14, v16

    .line 92
    .local v4, "expireTime":J
    move-object/from16 v0, p0

    iget-object v14, v0, Ldmx$1;->a:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/wukong/im/Message;

    .line 93
    .local v9, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v15

    if-eqz v15, :cond_0

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v15

    if-eqz v15, :cond_0

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v15

    invoke-interface {v15}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v15

    const/16 v16, 0x38a

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 94
    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v10

    check-cast v10, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    .line 95
    .local v10, "multiMessageContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    invoke-interface {v10}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    .line 97
    .local v2, "customMessageContent":Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->extension()Ljava/util/Map;

    move-result-object v15

    const-class v16, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    invoke-static/range {v15 .. v16}, Lckw;->a(Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    .line 99
    .local v8, "luckyTimeRedPacketsPlanDo":Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;
    const-string/jumbo v15, "festival_type"

    invoke-interface {v9, v15}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 100
    const-string/jumbo v15, "festival_type"

    invoke-interface {v9, v15}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v8, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->festivalType:Ljava/lang/String;

    .line 102
    :cond_1
    const-string/jumbo v15, "message_plan_tip"

    invoke-interface {v9, v15}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 103
    const-string/jumbo v15, "message_plan_tip"

    invoke-interface {v9, v15}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v8, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->messagePlanTip:Ljava/lang/String;

    .line 105
    :cond_2
    if-eqz v8, :cond_0

    iget-wide v0, v8, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->timePlan:J

    move-wide/from16 v16, v0

    cmp-long v15, v16, v4

    if-ltz v15, :cond_0

    .line 110
    move-object/from16 v0, p0

    iget-object v15, v0, Ldmx$1;->b:Ldmx;

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Ldmx;->a(Ldmx;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 111
    .local v12, "prefKey":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 112
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v13, "result":Ljava/util/List;, "Ljava/util/List<Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;>;"
    const/4 v3, 0x1

    .line 115
    .local v3, "hasChange":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Ldmx$1;->b:Ldmx;

    invoke-static {v15, v12}, Ldmx;->b(Ldmx;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 116
    .local v7, "localCache":Ljava/util/List;, "Ljava/util/List<Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;>;"
    if-eqz v7, :cond_6

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_6

    .line 117
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    .line 118
    .local v11, "planDo":Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;
    iget-object v0, v11, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->clusterid:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    iget-object v0, v11, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->clusterid:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v8, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->clusterid:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 119
    const/4 v3, 0x0

    .line 123
    .end local v11    # "planDo":Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;
    :cond_4
    if-eqz v3, :cond_5

    .line 124
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-interface {v13, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 130
    :cond_5
    :goto_1
    if-eqz v3, :cond_0

    .line 131
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v15

    invoke-virtual {v15}, Lcid;->c()Landroid/app/Application;

    move-result-object v15

    new-instance v16, Ldmx$1$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ldmx$1$1;-><init>(Ldmx$1;)V

    invoke-virtual/range {v16 .. v16}, Ldmx$1$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Lcor;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v12, v0}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v15, v0, Ldmx$1;->b:Ldmx;

    invoke-static {v15, v13, v12}, Ldmx;->a(Ldmx;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 133
    .local v6, "latestPlan":Ljava/util/List;, "Ljava/util/List<Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;>;"
    iget-object v15, v8, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->clusterid:Ljava/lang/String;

    if-eqz v15, :cond_0

    .line 134
    move-object/from16 v0, p0

    iget-object v15, v0, Ldmx$1;->b:Ldmx;

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v6}, Ldmx;->a(Ldmx;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 128
    .end local v6    # "latestPlan":Ljava/util/List;, "Ljava/util/List<Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;>;"
    :cond_6
    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 140
    .end local v2    # "customMessageContent":Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    .end local v3    # "hasChange":Z
    .end local v7    # "localCache":Ljava/util/List;, "Ljava/util/List<Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;>;"
    .end local v8    # "luckyTimeRedPacketsPlanDo":Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;
    .end local v9    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v10    # "multiMessageContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    .end local v12    # "prefKey":Ljava/lang/String;
    .end local v13    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;>;"
    :cond_7
    return-void
.end method
