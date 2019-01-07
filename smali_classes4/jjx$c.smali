.class final Ljjx$c;
.super Ljava/lang/Object;
.source "PushInstance.java"

# interfaces
.implements Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljjx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Ljjx;


# direct methods
.method private constructor <init>(Ljjx;)V
    .locals 0

    .prologue
    .line 631
    iput-object p1, p0, Ljjx$c;->a:Ljjx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljjx;B)V
    .locals 0
    .param p1, "x0"    # Ljjx;

    .prologue
    .line 631
    invoke-direct {p0, p1}, Ljjx$c;-><init>(Ljjx;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;Ljava/util/Map;)V
    .locals 3
    .param p1, "event"    # Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;
    .param p2, "params"    # Ljava/util/Map;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 634
    if-nez p1, :cond_1

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    const-string/jumbo v2, "peerId"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 638
    .local v0, "peerId":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 641
    check-cast v1, Ljava/lang/String;

    .line 642
    .local v1, "userId":Ljava/lang/String;
    new-instance v2, Ljjx$c$1;

    invoke-direct {v2, p0, p1, v1}, Ljjx$c$1;-><init>(Ljjx$c;Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 14
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;
    .param p3, "requestId"    # Ljava/lang/String;
    .param p4, "data"    # [B

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 683
    iget-object v2, p0, Ljjx$c;->a:Ljjx;

    invoke-static {v2}, Ljjx;->g(Ljjx;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 684
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v2

    .line 1082
    iget-object v10, v2, Lbtq;->b:Ljava/lang/String;

    .line 685
    .local v10, "cid":Ljava/lang/String;
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v2

    invoke-virtual {v2}, Lbtq;->b()Ljava/lang/String;

    move-result-object v11

    .line 690
    .local v11, "liveUuid":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Ljjx$c;->a:Ljjx;

    invoke-static {v2}, Ljjx;->h(Ljjx;)Ljava/lang/String;

    move-result-object v2

    .line 2109
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v12

    .line 691
    .local v12, "fansId":J
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v2

    .line 3094
    iget-object v3, v2, Lbtq;->f:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    if-nez v3, :cond_1

    const-wide/16 v8, 0x0

    .line 692
    .local v8, "anchorId":J
    :goto_1
    new-instance v5, Ljjx$c$2;

    invoke-direct {v5, p0}, Ljjx$c$2;-><init>(Ljjx$c;)V

    .line 4054
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4055
    const-string/jumbo v2, "live"

    const/4 v3, 0x0

    const-string/jumbo v4, "Link mic cmd can not be empty!"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4087
    :goto_2
    return-void

    .line 687
    .end local v8    # "anchorId":J
    .end local v10    # "cid":Ljava/lang/String;
    .end local v11    # "liveUuid":Ljava/lang/String;
    .end local v12    # "fansId":J
    :cond_0
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v2

    .line 2043
    iget-object v10, v2, Lbwr;->c:Ljava/lang/String;

    .line 688
    .restart local v10    # "cid":Ljava/lang/String;
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v2

    invoke-virtual {v2}, Lbwr;->b()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "liveUuid":Ljava/lang/String;
    goto :goto_0

    .line 3094
    .restart local v12    # "fansId":J
    :cond_1
    iget-object v2, v2, Lbtq;->f:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    iget-wide v8, v2, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->anchorId:J

    goto :goto_1

    .line 4060
    .restart local v8    # "anchorId":J
    :cond_2
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_3
    :goto_3
    packed-switch v2, :pswitch_data_0

    .line 4089
    const-string/jumbo v2, "live"

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "Link mic cmd can not recognized\uff0ccmd="

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 4060
    :sswitch_0
    const-string/jumbo v3, "joinChannel"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :sswitch_1
    const-string/jumbo v3, "leaveChannel"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :sswitch_2
    const-string/jumbo v3, "call"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x2

    goto :goto_3

    :sswitch_3
    const-string/jumbo v3, "cancelCall"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x3

    goto :goto_3

    :sswitch_4
    const-string/jumbo v3, "answer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x4

    goto :goto_3

    :sswitch_5
    const-string/jumbo v3, "kick"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x5

    goto :goto_3

    :sswitch_6
    const-string/jumbo v3, "reportStatus"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x6

    goto :goto_3

    :sswitch_7
    const-string/jumbo v3, "applyForWheat"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x7

    goto/16 :goto_3

    :sswitch_8
    const-string/jumbo v3, "cancelApplyForWheat"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v2, 0x8

    goto/16 :goto_3

    .line 4097
    :pswitch_0
    new-instance v7, Lcom/alibaba/android/dingtalk/live/rpc/model/JoinChannelReqObject;

    invoke-direct {v7}, Lcom/alibaba/android/dingtalk/live/rpc/model/JoinChannelReqObject;-><init>()V

    .line 4098
    move-object/from16 v0, p2

    iput-object v0, v7, Lcom/alibaba/android/dingtalk/live/rpc/model/JoinChannelReqObject;->channelId:Ljava/lang/String;

    .line 4099
    move-object/from16 v0, p3

    iput-object v0, v7, Lcom/alibaba/android/dingtalk/live/rpc/model/JoinChannelReqObject;->requestId:Ljava/lang/String;

    .line 4100
    move-object/from16 v0, p4

    iput-object v0, v7, Lcom/alibaba/android/dingtalk/live/rpc/model/JoinChannelReqObject;->data:[B

    .line 4102
    iput-object v10, v7, Lcom/alibaba/android/dingtalk/live/rpc/model/JoinChannelReqObject;->cid:Ljava/lang/String;

    .line 4103
    iput-object v11, v7, Lcom/alibaba/android/dingtalk/live/rpc/model/JoinChannelReqObject;->uuid:Ljava/lang/String;

    .line 4104
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v3

    new-instance v4, Lbxl$1;

    invoke-direct {v4, v5}, Lbxl$1;-><init>(Lcom/alibaba/wukong/Callback;)V

    .line 4293
    new-instance v2, Lbxe$9;

    const/4 v5, 0x0

    iget-object v6, v3, Lbxe;->a:Ljava/util/concurrent/Executor;

    invoke-direct/range {v2 .. v7}, Lbxe$9;-><init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/android/dingtalk/live/rpc/model/JoinChannelReqObject;)V

    .line 4299
    invoke-virtual {v2}, Lbxe$9;->start()V

    goto/16 :goto_2

    .line 5130
    :pswitch_1
    new-instance v7, Lcom/alibaba/android/dingtalk/live/rpc/model/LeaveChannelReqObject;

    invoke-direct {v7}, Lcom/alibaba/android/dingtalk/live/rpc/model/LeaveChannelReqObject;-><init>()V

    .line 5131
    move-object/from16 v0, p2

    iput-object v0, v7, Lcom/alibaba/android/dingtalk/live/rpc/model/LeaveChannelReqObject;->channelId:Ljava/lang/String;

    .line 5132
    move-object/from16 v0, p3

    iput-object v0, v7, Lcom/alibaba/android/dingtalk/live/rpc/model/LeaveChannelReqObject;->requestId:Ljava/lang/String;

    .line 5133
    move-object/from16 v0, p4

    iput-object v0, v7, Lcom/alibaba/android/dingtalk/live/rpc/model/LeaveChannelReqObject;->data:[B

    .line 5135
    iput-object v10, v7, Lcom/alibaba/android/dingtalk/live/rpc/model/LeaveChannelReqObject;->cid:Ljava/lang/String;

    .line 5136
    iput-object v11, v7, Lcom/alibaba/android/dingtalk/live/rpc/model/LeaveChannelReqObject;->uuid:Ljava/lang/String;

    .line 5137
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v3

    new-instance v4, Lbxl$2;

    invoke-direct {v4, v5}, Lbxl$2;-><init>(Lcom/alibaba/wukong/Callback;)V

    .line 5304
    new-instance v2, Lbxe$10;

    const/4 v5, 0x0

    iget-object v6, v3, Lbxe;->a:Ljava/util/concurrent/Executor;

    invoke-direct/range {v2 .. v7}, Lbxe$10;-><init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/android/dingtalk/live/rpc/model/LeaveChannelReqObject;)V

    .line 5310
    invoke-virtual {v2}, Lbxe$10;->start()V

    goto/16 :goto_2

    .line 6163
    :pswitch_2
    new-instance v7, Lcom/alibaba/android/dingtalk/live/rpc/model/CallReqObject;

    invoke-direct {v7}, Lcom/alibaba/android/dingtalk/live/rpc/model/CallReqObject;-><init>()V

    .line 6164
    move-object/from16 v0, p2

    iput-object v0, v7, Lcom/alibaba/android/dingtalk/live/rpc/model/CallReqObject;->channelId:Ljava/lang/String;

    .line 6165
    move-object/from16 v0, p3

    iput-object v0, v7, Lcom/alibaba/android/dingtalk/live/rpc/model/CallReqObject;->requestId:Ljava/lang/String;

    .line 6166
    move-object/from16 v0, p4

    iput-object v0, v7, Lcom/alibaba/android/dingtalk/live/rpc/model/CallReqObject;->data:[B

    .line 6168
    iput-object v10, v7, Lcom/alibaba/android/dingtalk/live/rpc/model/CallReqObject;->cid:Ljava/lang/String;

    .line 6169
    iput-object v11, v7, Lcom/alibaba/android/dingtalk/live/rpc/model/CallReqObject;->uuid:Ljava/lang/String;

    .line 6171
    long-to-int v2, v12

    iput v2, v7, Lcom/alibaba/android/dingtalk/live/rpc/model/CallReqObject;->fansId:I

    .line 6172
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v3

    new-instance v4, Lbxl$3;

    invoke-direct {v4}, Lbxl$3;-><init>()V

    .line 6315
    new-instance v2, Lbxe$11;

    const/4 v5, 0x0

    iget-object v6, v3, Lbxe;->a:Ljava/util/concurrent/Executor;

    invoke-direct/range {v2 .. v7}, Lbxe$11;-><init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/android/dingtalk/live/rpc/model/CallReqObject;)V

    .line 6321
    invoke-virtual {v2}, Lbxe$11;->start()V

    goto/16 :goto_2

    .line 7193
    :pswitch_3
    new-instance v7, Lcom/alibaba/android/dingtalk/live/rpc/model/CancelCallReqObject;

    invoke-direct {v7}, Lcom/alibaba/android/dingtalk/live/rpc/model/CancelCallReqObject;-><init>()V

    .line 7194
    move-object/from16 v0, p2

    iput-object v0, v7, Lcom/alibaba/android/dingtalk/live/rpc/model/CancelCallReqObject;->channelId:Ljava/lang/String;

    .line 7195
    move-object/from16 v0, p3

    iput-object v0, v7, Lcom/alibaba/android/dingtalk/live/rpc/model/CancelCallReqObject;->requestId:Ljava/lang/String;

    .line 7196
    move-object/from16 v0, p4

    iput-object v0, v7, Lcom/alibaba/android/dingtalk/live/rpc/model/CancelCallReqObject;->data:[B

    .line 7198
    iput-object v10, v7, Lcom/alibaba/android/dingtalk/live/rpc/model/CancelCallReqObject;->cid:Ljava/lang/String;

    .line 7199
    iput-object v11, v7, Lcom/alibaba/android/dingtalk/live/rpc/model/CancelCallReqObject;->uuid:Ljava/lang/String;

    .line 7201
    long-to-int v2, v12

    iput v2, v7, Lcom/alibaba/android/dingtalk/live/rpc/model/CancelCallReqObject;->fansId:I

    .line 7202
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v3

    new-instance v4, Lbxl$4;

    invoke-direct {v4, v5}, Lbxl$4;-><init>(Lcom/alibaba/wukong/Callback;)V

    .line 7326
    new-instance v2, Lbxe$12;

    const/4 v5, 0x0

    iget-object v6, v3, Lbxe;->a:Ljava/util/concurrent/Executor;

    invoke-direct/range {v2 .. v7}, Lbxe$12;-><init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/android/dingtalk/live/rpc/model/CancelCallReqObject;)V

    .line 7332
    invoke-virtual {v2}, Lbxe$12;->start()V

    goto/16 :goto_2

    .line 8228
    :pswitch_4
    new-instance v7, Lcom/alibaba/android/dingtalk/live/rpc/model/CallAnswerReqObject;

    invoke-direct {v7}, Lcom/alibaba/android/dingtalk/live/rpc/model/CallAnswerReqObject;-><init>()V

    .line 8229
    move-object/from16 v0, p2

    iput-object v0, v7, Lcom/alibaba/android/dingtalk/live/rpc/model/CallAnswerReqObject;->channelId:Ljava/lang/String;

    .line 8230
    move-object/from16 v0, p3

    iput-object v0, v7, Lcom/alibaba/android/dingtalk/live/rpc/model/CallAnswerReqObject;->requestId:Ljava/lang/String;

    .line 8231
    move-object/from16 v0, p4

    iput-object v0, v7, Lcom/alibaba/android/dingtalk/live/rpc/model/CallAnswerReqObject;->data:[B

    .line 8233
    iput-object v10, v7, Lcom/alibaba/android/dingtalk/live/rpc/model/CallAnswerReqObject;->cid:Ljava/lang/String;

    .line 8234
    iput-object v11, v7, Lcom/alibaba/android/dingtalk/live/rpc/model/CallAnswerReqObject;->uuid:Ljava/lang/String;

    .line 8236
    long-to-int v2, v8

    iput v2, v7, Lcom/alibaba/android/dingtalk/live/rpc/model/CallAnswerReqObject;->anchorId:I

    .line 8237
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v3

    new-instance v4, Lbxl$5;

    invoke-direct {v4, v5}, Lbxl$5;-><init>(Lcom/alibaba/wukong/Callback;)V

    .line 8337
    new-instance v2, Lbxe$13;

    const/4 v5, 0x0

    iget-object v6, v3, Lbxe;->a:Ljava/util/concurrent/Executor;

    invoke-direct/range {v2 .. v7}, Lbxe$13;-><init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/android/dingtalk/live/rpc/model/CallAnswerReqObject;)V

    .line 8343
    invoke-virtual {v2}, Lbxe$13;->start()V

    goto/16 :goto_2

    .line 9263
    :pswitch_5
    new-instance v7, Lcom/alibaba/android/dingtalk/live/rpc/model/KickReqObject;

    invoke-direct {v7}, Lcom/alibaba/android/dingtalk/live/rpc/model/KickReqObject;-><init>()V

    .line 9264
    move-object/from16 v0, p2

    iput-object v0, v7, Lcom/alibaba/android/dingtalk/live/rpc/model/KickReqObject;->channelId:Ljava/lang/String;

    .line 9265
    move-object/from16 v0, p3

    iput-object v0, v7, Lcom/alibaba/android/dingtalk/live/rpc/model/KickReqObject;->requestId:Ljava/lang/String;

    .line 9266
    move-object/from16 v0, p4

    iput-object v0, v7, Lcom/alibaba/android/dingtalk/live/rpc/model/KickReqObject;->data:[B

    .line 9268
    iput-object v10, v7, Lcom/alibaba/android/dingtalk/live/rpc/model/KickReqObject;->cid:Ljava/lang/String;

    .line 9269
    iput-object v11, v7, Lcom/alibaba/android/dingtalk/live/rpc/model/KickReqObject;->uuid:Ljava/lang/String;

    .line 9271
    long-to-int v2, v12

    iput v2, v7, Lcom/alibaba/android/dingtalk/live/rpc/model/KickReqObject;->fansId:I

    .line 9272
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v3

    new-instance v4, Lbxl$6;

    invoke-direct {v4, v5}, Lbxl$6;-><init>(Lcom/alibaba/wukong/Callback;)V

    .line 9348
    new-instance v2, Lbxe$14;

    const/4 v5, 0x0

    iget-object v6, v3, Lbxe;->a:Ljava/util/concurrent/Executor;

    invoke-direct/range {v2 .. v7}, Lbxe$14;-><init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/android/dingtalk/live/rpc/model/KickReqObject;)V

    .line 9354
    invoke-virtual {v2}, Lbxe$14;->start()V

    goto/16 :goto_2

    .line 10298
    :pswitch_6
    new-instance v7, Lcom/alibaba/android/dingtalk/live/rpc/model/ReportReqObject;

    invoke-direct {v7}, Lcom/alibaba/android/dingtalk/live/rpc/model/ReportReqObject;-><init>()V

    .line 10299
    move-object/from16 v0, p2

    iput-object v0, v7, Lcom/alibaba/android/dingtalk/live/rpc/model/ReportReqObject;->channelId:Ljava/lang/String;

    .line 10300
    move-object/from16 v0, p3

    iput-object v0, v7, Lcom/alibaba/android/dingtalk/live/rpc/model/ReportReqObject;->requestId:Ljava/lang/String;

    .line 10301
    move-object/from16 v0, p4

    iput-object v0, v7, Lcom/alibaba/android/dingtalk/live/rpc/model/ReportReqObject;->data:[B

    .line 10303
    iput-object v10, v7, Lcom/alibaba/android/dingtalk/live/rpc/model/ReportReqObject;->cid:Ljava/lang/String;

    .line 10304
    iput-object v11, v7, Lcom/alibaba/android/dingtalk/live/rpc/model/ReportReqObject;->uuid:Ljava/lang/String;

    .line 10305
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v3

    new-instance v4, Lbxl$7;

    invoke-direct {v4, v5}, Lbxl$7;-><init>(Lcom/alibaba/wukong/Callback;)V

    .line 10359
    new-instance v2, Lbxe$15;

    const/4 v5, 0x0

    iget-object v6, v3, Lbxe;->a:Ljava/util/concurrent/Executor;

    invoke-direct/range {v2 .. v7}, Lbxe$15;-><init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/android/dingtalk/live/rpc/model/ReportReqObject;)V

    .line 10365
    invoke-virtual {v2}, Lbxe$15;->start()V

    goto/16 :goto_2

    .line 11330
    :pswitch_7
    new-instance v2, Lbua;

    invoke-direct {v2}, Lbua;-><init>()V

    .line 11332
    iput-object v10, v2, Lbua;->b:Ljava/lang/String;

    .line 11333
    iput-object v11, v2, Lbua;->a:Ljava/lang/String;

    .line 11334
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v3

    new-instance v4, Lbxl$8;

    invoke-direct {v4}, Lbxl$8;-><init>()V

    invoke-virtual {v3, v2, v4}, Lbxe;->a(Lbua;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_2

    .line 11354
    :pswitch_8
    new-instance v2, Lbuh;

    invoke-direct {v2}, Lbuh;-><init>()V

    .line 11356
    iput-object v10, v2, Lbuh;->b:Ljava/lang/String;

    .line 11357
    iput-object v11, v2, Lbuh;->a:Ljava/lang/String;

    .line 11358
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v3

    new-instance v4, Lbxl$9;

    invoke-direct {v4}, Lbxl$9;-><init>()V

    invoke-virtual {v3, v2, v4}, Lbxe;->a(Lbuh;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_2

    .line 4060
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b5f0b87 -> :sswitch_0
        -0x5435c042 -> :sswitch_4
        -0x704bb2e -> :sswitch_8
        0x2e7a5e -> :sswitch_2
        0x323a46 -> :sswitch_5
        0x23a96d2c -> :sswitch_7
        0x23ef5a46 -> :sswitch_6
        0x6fa61a4c -> :sswitch_1
        0x708a4ff8 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
