.class public Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;
.super Lcom/alibaba/wukong/im/message/MessageContentImpl;
.source "MessageContentImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/im/MessageContent$DingCardContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/message/MessageContentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DingCardContentImpl"
.end annotation


# instance fields
.field private transient mAudioContent:Ljava/lang/Object;

.field private mBizType:Ljava/lang/String;

.field private mContent:Ljava/lang/String;

.field private transient mDingAttachments:Ljava/lang/Object;

.field private mDingAttachmentsStr:Ljava/lang/String;

.field private mDingCardVersion:Ljava/lang/String;

.field private mDingId:J

.field private mEndTime:J

.field private mExecutorUids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLocation:Ljava/lang/String;

.field private mMsgType:Ljava/lang/String;

.field private mSenderId:Ljava/lang/String;

.field private mStartTime:J

.field private mSubBizType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p1, "bizType"    # Ljava/lang/String;
    .param p2, "msgType"    # Ljava/lang/String;
    .param p3, "senderId"    # Ljava/lang/String;
    .param p4, "content"    # Ljava/lang/String;
    .param p5, "location"    # Ljava/lang/String;
    .param p6, "startTime"    # J
    .param p8, "endTime"    # J
    .param p10, "dingId"    # J
    .param p12, "dingCardVersion"    # Ljava/lang/String;
    .param p13, "subBizType"    # Ljava/lang/String;
    .param p15, "dingAttachmentsStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2550
    .local p14, "executorUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/16 v1, 0x640

    invoke-direct {p0, v1}, Lcom/alibaba/wukong/im/message/MessageContentImpl;-><init>(I)V

    .line 2552
    iput-object p1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mBizType:Ljava/lang/String;

    .line 2553
    iput-object p2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mMsgType:Ljava/lang/String;

    .line 2554
    iput-object p3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mSenderId:Ljava/lang/String;

    .line 2555
    iput-object p4, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mContent:Ljava/lang/String;

    .line 2556
    iput-object p5, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mLocation:Ljava/lang/String;

    .line 2557
    iput-wide p6, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mStartTime:J

    .line 2558
    iput-wide p8, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mEndTime:J

    .line 2559
    iput-wide p10, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mDingId:J

    .line 2560
    iput-object p12, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mDingCardVersion:Ljava/lang/String;

    .line 2561
    iput-object p13, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mSubBizType:Ljava/lang/String;

    .line 2562
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mExecutorUids:Ljava/util/List;

    .line 2563
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mDingAttachmentsStr:Ljava/lang/String;

    .line 2564
    return-void
.end method

.method public static fromJSON(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;
    .locals 22
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 2676
    if-nez p0, :cond_0

    .line 2677
    const/4 v2, 0x0

    .line 2722
    :goto_0
    return-object v2

    .line 2680
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->getCompatExtension(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v18

    .line 2681
    .local v18, "compatExtension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v18, :cond_1

    .line 2683
    const-string/jumbo v2, "dingBizType"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2684
    .local v3, "bizType":Ljava/lang/String;
    const-string/jumbo v2, "dingMsgType"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2685
    .local v4, "msgType":Ljava/lang/String;
    const-string/jumbo v2, "dingSenderId"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2686
    .local v5, "senderId":Ljava/lang/String;
    const-string/jumbo v2, "dingContent"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2687
    .local v6, "content":Ljava/lang/String;
    const-string/jumbo v2, "dingLocation"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2688
    .local v7, "location":Ljava/lang/String;
    const-string/jumbo v2, "dingStartTime"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lieb;->g(Ljava/lang/String;)J

    move-result-wide v8

    .line 2689
    .local v8, "startTime":J
    const-string/jumbo v2, "dingEndTime"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lieb;->g(Ljava/lang/String;)J

    move-result-wide v10

    .line 2690
    .local v10, "endTime":J
    const-string/jumbo v2, "dingId"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lieb;->g(Ljava/lang/String;)J

    move-result-wide v12

    .line 2691
    .local v12, "dingId":J
    const-string/jumbo v2, "dingCardVer"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 2692
    .local v14, "version":Ljava/lang/String;
    const-string/jumbo v2, "dingSubBizType"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 2693
    .local v15, "subBizType":Ljava/lang/String;
    const/16 v16, 0x0

    .line 2695
    .local v16, "executorUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :try_start_0
    const-string/jumbo v2, "executorUids"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-class v20, Ljava/lang/Long;

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lgxk;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 2699
    :goto_1
    const-string/jumbo v2, "dingAttachments"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 2700
    .local v17, "dingAttachments":Ljava/lang/String;
    new-instance v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;

    invoke-direct/range {v2 .. v17}, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2696
    .end local v17    # "dingAttachments":Ljava/lang/String;
    :catch_0
    move-exception v19

    .line 2697
    .local v19, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "[DingCardContent]executorUids from json(compat) error"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    .line 3022
    const-string/jumbo v21, "im"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v2, v0, v1}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2704
    .end local v3    # "bizType":Ljava/lang/String;
    .end local v4    # "msgType":Ljava/lang/String;
    .end local v5    # "senderId":Ljava/lang/String;
    .end local v6    # "content":Ljava/lang/String;
    .end local v7    # "location":Ljava/lang/String;
    .end local v8    # "startTime":J
    .end local v10    # "endTime":J
    .end local v12    # "dingId":J
    .end local v14    # "version":Ljava/lang/String;
    .end local v15    # "subBizType":Ljava/lang/String;
    .end local v16    # "executorUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v19    # "e":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v2, "dingBizType"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2705
    .restart local v3    # "bizType":Ljava/lang/String;
    const-string/jumbo v2, "dingMsgType"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2706
    .restart local v4    # "msgType":Ljava/lang/String;
    const-string/jumbo v2, "dingSenderId"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2707
    .restart local v5    # "senderId":Ljava/lang/String;
    const-string/jumbo v2, "dingContent"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2708
    .restart local v6    # "content":Ljava/lang/String;
    const-string/jumbo v2, "dingLocation"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2709
    .restart local v7    # "location":Ljava/lang/String;
    const-string/jumbo v2, "dingStartTime"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 2710
    .restart local v8    # "startTime":J
    const-string/jumbo v2, "dingEndTime"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 2711
    .restart local v10    # "endTime":J
    const-string/jumbo v2, "dingId"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 2712
    .restart local v12    # "dingId":J
    const-string/jumbo v2, "dingCardVer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2713
    .restart local v14    # "version":Ljava/lang/String;
    const-string/jumbo v2, "dingSubBizType"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2714
    .restart local v15    # "subBizType":Ljava/lang/String;
    const/16 v16, 0x0

    .line 2716
    .restart local v16    # "executorUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :try_start_1
    const-string/jumbo v2, "executorUids"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v20, Ljava/lang/Long;

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lgxk;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v16

    .line 2720
    :goto_2
    const-string/jumbo v2, "dingAttachments"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2722
    .restart local v17    # "dingAttachments":Ljava/lang/String;
    new-instance v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;

    invoke-direct/range {v2 .. v17}, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2717
    .end local v17    # "dingAttachments":Ljava/lang/String;
    :catch_1
    move-exception v19

    .line 2718
    .restart local v19    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "[DingCardContent]executorUids from json error"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    .line 4022
    const-string/jumbo v21, "im"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v2, v0, v1}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static fromMap2Object(Ljava/util/Map;)Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;"
        }
    .end annotation

    .prologue
    .line 2745
    .local p0, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 2746
    const/4 v2, 0x0

    .line 2768
    :goto_0
    return-object v2

    .line 2749
    :cond_0
    const-string/jumbo v2, "dingBizType"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2750
    .local v3, "bizType":Ljava/lang/String;
    const-string/jumbo v2, "dingMsgType"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2751
    .local v4, "msgType":Ljava/lang/String;
    const-string/jumbo v2, "dingSenderId"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2752
    .local v5, "senderId":Ljava/lang/String;
    const-string/jumbo v2, "dingContent"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2753
    .local v6, "content":Ljava/lang/String;
    const-string/jumbo v2, "dingLocation"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2754
    .local v7, "location":Ljava/lang/String;
    const-string/jumbo v2, "dingStartTime"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 2755
    .local v21, "startTime":Ljava/lang/String;
    const-string/jumbo v2, "dingEndTime"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 2756
    .local v20, "endTime":Ljava/lang/String;
    const-string/jumbo v2, "dingId"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 2757
    .local v18, "dingId":Ljava/lang/String;
    const-string/jumbo v2, "dingCardVer"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 2758
    .local v14, "version":Ljava/lang/String;
    const-string/jumbo v2, "dingSubBizType"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 2759
    .local v15, "subBizType":Ljava/lang/String;
    const/16 v16, 0x0

    .line 2761
    .local v16, "executorUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :try_start_0
    const-string/jumbo v2, "executorUids"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-class v8, Ljava/lang/Long;

    invoke-static {v2, v8}, Lgxk;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 2765
    :goto_1
    const-string/jumbo v2, "dingAttachments"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 2767
    .local v17, "dingAttachments":Ljava/lang/String;
    new-instance v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;

    .line 2768
    invoke-static/range {v21 .. v21}, Lieb;->g(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static/range {v20 .. v20}, Lieb;->g(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static/range {v18 .. v18}, Lieb;->g(Ljava/lang/String;)J

    move-result-wide v12

    invoke-direct/range {v2 .. v17}, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2762
    .end local v17    # "dingAttachments":Ljava/lang/String;
    :catch_0
    move-exception v19

    .line 2763
    .local v19, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "[DingCardContent]executorUids map2object error"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 5022
    const-string/jumbo v9, "im"

    invoke-static {v2, v8, v9}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static getCompatExtension(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .param p0, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2729
    if-nez p0, :cond_1

    .line 2740
    :cond_0
    :goto_0
    return-object v2

    .line 2732
    :cond_1
    const-string/jumbo v3, "multi"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 2733
    .local v1, "jsonArray":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 2734
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 2735
    .local v0, "compatJsonObject":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 2736
    const-string/jumbo v2, "ext"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lieb;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public bizType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2568
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mBizType:Ljava/lang/String;

    return-object v0
.end method

.method public cardVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2618
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mDingCardVersion:Ljava/lang/String;

    return-object v0
.end method

.method public cloneContent()Lcom/alibaba/wukong/im/MessageContent;
    .locals 18

    .prologue
    .line 2799
    new-instance v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mBizType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mMsgType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mSenderId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mContent:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mLocation:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mStartTime:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mEndTime:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mDingId:J

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mDingCardVersion:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mSubBizType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mExecutorUids:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mDingAttachmentsStr:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-direct/range {v2 .. v17}, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v2
.end method

.method public content()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2583
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public dingId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2613
    iget-wide v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mDingId:J

    return-wide v0
.end method

.method public dingSubBizType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2623
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mSubBizType:Ljava/lang/String;

    return-object v0
.end method

.method public endTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2608
    iget-wide v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mEndTime:J

    return-wide v0
.end method

.method public getAudioContent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2593
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mAudioContent:Ljava/lang/Object;

    return-object v0
.end method

.method public getDingAttachments()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2637
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mDingAttachments:Ljava/lang/Object;

    return-object v0
.end method

.method public getDingAttachmentsStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2633
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mDingAttachmentsStr:Ljava/lang/String;

    return-object v0
.end method

.method public getExecutorUids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2628
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mExecutorUids:Ljava/util/List;

    return-object v0
.end method

.method public location()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2598
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public msgType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2573
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mMsgType:Ljava/lang/String;

    return-object v0
.end method

.method public senderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2578
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mSenderId:Ljava/lang/String;

    return-object v0
.end method

.method public setAudioContent(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 2588
    iput-object p1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mAudioContent:Ljava/lang/Object;

    .line 2589
    return-void
.end method

.method public setDingAttachments(Ljava/lang/Object;)V
    .locals 0
    .param p1, "dingAttachments"    # Ljava/lang/Object;

    .prologue
    .line 2642
    iput-object p1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mDingAttachments:Ljava/lang/Object;

    .line 2643
    return-void
.end method

.method public startTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2603
    iget-wide v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mStartTime:J

    return-wide v0
.end method

.method protected toJSON()Lorg/json/JSONObject;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2648
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2650
    .local v1, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "dingBizType"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mBizType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2651
    const-string/jumbo v2, "dingMsgType"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mMsgType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2652
    const-string/jumbo v2, "dingSenderId"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mSenderId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2653
    const-string/jumbo v2, "dingContent"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mContent:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2654
    const-string/jumbo v2, "dingLocation"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mLocation:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2655
    const-string/jumbo v2, "dingStartTime"

    iget-wide v4, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mStartTime:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2656
    const-string/jumbo v2, "dingEndTime"

    iget-wide v4, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mEndTime:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2657
    const-string/jumbo v2, "dingId"

    iget-wide v4, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mDingId:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2658
    const-string/jumbo v2, "dingSubBizType"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mSubBizType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2659
    const-string/jumbo v2, "executorUids"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mExecutorUids:Ljava/util/List;

    invoke-static {v3}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2660
    const-string/jumbo v2, "dingAttachments"

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mDingAttachmentsStr:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2666
    :goto_0
    return-object v1

    .line 2662
    :catch_0
    move-exception v0

    .line 2663
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public toMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 2775
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2776
    .local v0, "extension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "dingBizType"

    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mBizType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Libt;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 2777
    const-string/jumbo v1, "dingMsgType"

    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mMsgType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Libt;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 2778
    const-string/jumbo v1, "dingSenderId"

    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mSenderId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Libt;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 2779
    const-string/jumbo v1, "dingContent"

    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mContent:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Libt;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 2780
    const-string/jumbo v1, "dingLocation"

    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mLocation:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Libt;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 2781
    iget-wide v2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mStartTime:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 2782
    const-string/jumbo v1, "dingStartTime"

    iget-wide v2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mStartTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Libt;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 2784
    :cond_0
    iget-wide v2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mEndTime:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 2785
    const-string/jumbo v1, "dingEndTime"

    iget-wide v2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mEndTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Libt;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 2787
    :cond_1
    iget-wide v2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mDingId:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 2788
    const-string/jumbo v1, "dingId"

    iget-wide v2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mDingId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Libt;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 2790
    :cond_2
    const-string/jumbo v1, "dingCardVer"

    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mDingCardVersion:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Libt;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 2791
    const-string/jumbo v1, "dingSubBizType"

    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mSubBizType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Libt;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 2792
    const-string/jumbo v1, "executorUids"

    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mExecutorUids:Ljava/util/List;

    invoke-static {v2}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Libt;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 2793
    const-string/jumbo v1, "dingAttachments"

    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->mDingAttachmentsStr:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Libt;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 2794
    return-object v0
.end method
