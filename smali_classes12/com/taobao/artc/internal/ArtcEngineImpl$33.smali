.class final Lcom/taobao/artc/internal/ArtcEngineImpl$33;
.super Ljava/lang/Object;
.source "ArtcEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/artc/internal/ArtcEngineImpl;->onArtcEvent(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/taobao/artc/internal/ArtcEngineImpl;


# direct methods
.method constructor <init>(Lcom/taobao/artc/internal/ArtcEngineImpl;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 2045
    iput-object p1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iput-object p2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->a:Ljava/lang/String;

    iput p3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 50

    .prologue
    .line 2049
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->a:Ljava/lang/String;

    new-instance v8, Lcom/taobao/artc/internal/ArtcEngineImpl$33$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl$33$1;-><init>(Lcom/taobao/artc/internal/ArtcEngineImpl$33;)V

    const/4 v10, 0x0

    new-array v10, v10, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v4, v8, v10}, Lgxk;->parseObject(Ljava/lang/String;Lgxp;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/Map;

    .line 2052
    .local v41, "extInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->b:I

    packed-switch v4, :pswitch_data_0

    .line 2464
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2054
    :pswitch_1
    const-string/jumbo v4, "channelId"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2055
    .local v5, "channelId":Ljava/lang/String;
    const-string/jumbo v4, "reason"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2056
    .local v6, "reason":Ljava/lang/String;
    const-string/jumbo v4, "closeReason"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2057
    .local v7, "reasonId":I
    const-string/jumbo v4, "extension"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2058
    .local v9, "extension":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljka;

    move-result-object v4

    const-string/jumbo v8, ""

    invoke-virtual/range {v4 .. v9}, Ljka;->onChannelClosed2(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 2059
    const-string/jumbo v4, "ArtcEngineImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "onChannelClosed, channelId: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v8, v10}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2060
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "onChannelClosed: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$000(Ljava/lang/String;)V

    goto :goto_0

    .line 2064
    .end local v5    # "channelId":Ljava/lang/String;
    .end local v6    # "reason":Ljava/lang/String;
    .end local v7    # "reasonId":I
    .end local v9    # "extension":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    const/4 v8, 0x6

    invoke-static {v4, v8}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$5802(Lcom/taobao/artc/internal/ArtcEngineImpl;I)I

    .line 2066
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$200(Lcom/taobao/artc/internal/ArtcEngineImpl;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    .line 2067
    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$5900(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lcom/taobao/artc/api/IArtcCameraHandle;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2068
    invoke-static {}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$6000()I

    move-result v4

    const/4 v8, 0x1

    if-ne v4, v8, :cond_2

    .line 2069
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-virtual {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->getCameraBrightness()I

    move-result v34

    .line 2071
    .local v34, "brightness":I
    if-ltz v34, :cond_1

    .line 2072
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$5900(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lcom/taobao/artc/api/IArtcCameraHandle;

    move-result-object v4

    move/from16 v0, v34

    invoke-interface {v4, v0}, Lcom/taobao/artc/api/IArtcCameraHandle;->onAdjustBrightnessSupport(I)V

    .line 2073
    const-string/jumbo v4, "ArtcEngineImpl"

    const-string/jumbo v8, "Do report onAdjustBrightnessSupport event ..."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v8, v10}, Lcom/taobao/artc/utils/ArtcLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2074
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->setCameraBrightness(I)V

    .line 2080
    .end local v34    # "brightness":I
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$6100(Lcom/taobao/artc/internal/ArtcEngineImpl;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2081
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    const/4 v8, 0x0

    invoke-static {v4, v8}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$6102(Lcom/taobao/artc/internal/ArtcEngineImpl;Z)Z

    .line 2083
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljka;

    move-result-object v4

    invoke-static {}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$3700()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljka;->onChannelIdUpdated(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2077
    :cond_2
    const-string/jumbo v4, "ArtcEngineImpl"

    const-string/jumbo v8, "Don\'t report onAdjustBrightnessSupport event ..."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v8, v10}, Lcom/taobao/artc/utils/ArtcLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 2085
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$1600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lcom/taobao/artc/api/ArtcConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/artc/api/ArtcConfig;->videoEncodeMode()I

    move-result v4

    if-eqz v4, :cond_4

    .line 2087
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v8}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$1600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lcom/taobao/artc/api/ArtcConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/taobao/artc/api/ArtcConfig;->videoEncodeMode()I

    move-result v8

    invoke-static {v4, v8}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$6200(Lcom/taobao/artc/internal/ArtcEngineImpl;I)V

    .line 2090
    :cond_4
    const-string/jumbo v4, "elapsed"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v38

    .line 2091
    .local v38, "elapsed":I
    const-string/jumbo v4, "ArtcEngineImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "onJoinChannelSuccess, elapsed: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v38

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v8, v10}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2092
    const-string/jumbo v4, "onJoinChannelSuccess"

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$000(Ljava/lang/String;)V

    .line 2093
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljka;

    move-result-object v4

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Ljka;->onJoinChannelSuccess(I)V

    goto/16 :goto_0

    .line 2099
    .end local v38    # "elapsed":I
    :pswitch_3
    const-string/jumbo v4, "remoteUserId"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 2101
    .local v30, "remoteUserId":Ljava/lang/String;
    const-string/jumbo v4, "ArtcEngineImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "onUserJoinedChannel\uff0c remoteUserId\uff1a "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v8, v10}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2102
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "onUserJoinedChannel, remoteUserId: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$000(Ljava/lang/String;)V

    .line 2103
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljka;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljka;->onUserJoinedChannel(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2107
    .end local v30    # "remoteUserId":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v4, "remoteUserId"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 2108
    .restart local v30    # "remoteUserId":Ljava/lang/String;
    const-string/jumbo v4, "reason"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2109
    .restart local v6    # "reason":Ljava/lang/String;
    const-string/jumbo v4, "extension"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2110
    .restart local v9    # "extension":Ljava/lang/String;
    const-string/jumbo v4, "ArtcEngineImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "onUserLeftChannel\uff0c remoteUserId\uff1a "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ", reason: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v8, v10}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2111
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljka;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v10, ""

    move-object/from16 v0, v30

    invoke-virtual {v4, v0, v8, v10, v9}, Ljka;->onUserLeftChannel2(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 2112
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "onUserLeftChannel, remoteUserId: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ", extension: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$000(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2117
    .end local v6    # "reason":Ljava/lang/String;
    .end local v9    # "extension":Ljava/lang/String;
    .end local v30    # "remoteUserId":Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    const/16 v8, 0xb

    invoke-static {v4, v8}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$5802(Lcom/taobao/artc/internal/ArtcEngineImpl;I)I

    .line 2118
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$6100(Lcom/taobao/artc/internal/ArtcEngineImpl;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2119
    const-string/jumbo v4, "ArtcEngineImpl"

    const-string/jumbo v8, "onArtcEvent, leave channel done for restart, will join again"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v8, v10}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2120
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$6300()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$3800(Lcom/taobao/artc/internal/ArtcEngineImpl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$3702(Ljava/lang/String;)Ljava/lang/String;

    .line 2121
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$3700()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/taobao/artc/internal/ArtcEngineImpl;->joinChannel(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2123
    :cond_5
    new-instance v48, Lcom/taobao/artc/api/ArtcStats;

    invoke-direct/range {v48 .. v48}, Lcom/taobao/artc/api/ArtcStats;-><init>()V

    .line 2136
    .local v48, "stats":Lcom/taobao/artc/api/ArtcStats;
    const-string/jumbo v4, "extension"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2137
    .restart local v9    # "extension":Ljava/lang/String;
    const-string/jumbo v4, "ArtcEngineImpl"

    const-string/jumbo v8, "onLeaveChannel ... "

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v8, v10}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2138
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljka;

    move-result-object v4

    const-string/jumbo v8, ""

    move-object/from16 v0, v48

    invoke-virtual {v4, v0, v8, v9}, Ljka;->onLeaveChannel2(Lcom/taobao/artc/api/ArtcStats;Ljava/lang/String;Ljava/lang/String;)V

    .line 2139
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "onLeaveChannel, extension: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$000(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2150
    .end local v9    # "extension":Ljava/lang/String;
    .end local v48    # "stats":Lcom/taobao/artc/api/ArtcStats;
    :pswitch_6
    invoke-static {}, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;->values()[Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    move-result-object v8

    const-string/jumbo v4, "errorEvent"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v40, v8, v4

    .line 2151
    .local v40, "errorEvent":Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;
    const-string/jumbo v4, "errorCode"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    .line 2153
    .local v39, "errorCode":I
    const-string/jumbo v4, "ArtcEngineImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "isAppBackground: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lic;->j()Z

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v8, v10}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2154
    const-string/jumbo v4, "ArtcEngineImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "onError, errorEvent: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v40

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ", errorCode: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v8, v10}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2155
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "onError, errorEvent: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ", errorCode: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$000(Ljava/lang/String;)V

    .line 2156
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljka;

    move-result-object v4

    move-object/from16 v0, v40

    move/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Ljka;->onError(Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;I)V

    goto/16 :goto_0

    .line 2160
    .end local v39    # "errorCode":I
    .end local v40    # "errorEvent":Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;
    :pswitch_7
    const-string/jumbo v4, "routing"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v47

    .line 2161
    .local v47, "routing":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljka;

    move-result-object v4

    move/from16 v0, v47

    invoke-virtual {v4, v0}, Ljka;->onAudioRouteChanged(I)V

    goto/16 :goto_0

    .line 2165
    .end local v47    # "routing":I
    :pswitch_8
    const-string/jumbo v4, "quality"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v45

    .line 2166
    .local v45, "quality":I
    const-string/jumbo v4, "delay"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v37

    .line 2167
    .local v37, "delay":S
    const-string/jumbo v4, "lost"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v43

    .line 2168
    .local v43, "lost":S
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljka;

    move-result-object v4

    move/from16 v0, v45

    move/from16 v1, v43

    move/from16 v2, v37

    invoke-virtual {v4, v0, v1, v2}, Ljka;->onAudioQuality(ISS)V

    goto/16 :goto_0

    .line 2175
    .end local v37    # "delay":S
    .end local v43    # "lost":S
    .end local v45    # "quality":I
    :pswitch_9
    new-instance v48, Lcom/taobao/artc/api/ArtcStats;

    invoke-direct/range {v48 .. v48}, Lcom/taobao/artc/api/ArtcStats;-><init>()V

    .line 2177
    .restart local v48    # "stats":Lcom/taobao/artc/api/ArtcStats;
    const-string/jumbo v4, "duration"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v48

    iput v4, v0, Lcom/taobao/artc/api/ArtcStats;->duration:I

    .line 2178
    const-string/jumbo v4, "txBytes"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    move-object/from16 v0, v48

    iput-wide v10, v0, Lcom/taobao/artc/api/ArtcStats;->txBytes:J

    .line 2179
    const-string/jumbo v4, "rxBytes"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    move-object/from16 v0, v48

    iput-wide v10, v0, Lcom/taobao/artc/api/ArtcStats;->rxBytes:J

    .line 2180
    const-string/jumbo v4, "txKBitRate"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v4

    move-object/from16 v0, v48

    iput-short v4, v0, Lcom/taobao/artc/api/ArtcStats;->txKBitRate:S

    .line 2181
    const-string/jumbo v4, "rxKBitRate"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v4

    move-object/from16 v0, v48

    iput-short v4, v0, Lcom/taobao/artc/api/ArtcStats;->rxKBitRate:S

    .line 2183
    move-object/from16 v0, v48

    iget-object v8, v0, Lcom/taobao/artc/api/ArtcStats;->localVideoStats:Lcom/taobao/artc/api/LocalVideoStats;

    const-string/jumbo v4, "sentBitrate"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v8, Lcom/taobao/artc/api/LocalVideoStats;->sentBitrate:I

    .line 2184
    move-object/from16 v0, v48

    iget-object v8, v0, Lcom/taobao/artc/api/ArtcStats;->localVideoStats:Lcom/taobao/artc/api/LocalVideoStats;

    const-string/jumbo v4, "sentFrameRate"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v8, Lcom/taobao/artc/api/LocalVideoStats;->sentFrameRate:I

    .line 2186
    move-object/from16 v0, v48

    iget-object v8, v0, Lcom/taobao/artc/api/ArtcStats;->remoteVideoStats:Lcom/taobao/artc/api/RemoteVideoStats;

    const-string/jumbo v4, "delay"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v8, Lcom/taobao/artc/api/RemoteVideoStats;->delay:I

    .line 2187
    move-object/from16 v0, v48

    iget-object v8, v0, Lcom/taobao/artc/api/ArtcStats;->remoteVideoStats:Lcom/taobao/artc/api/RemoteVideoStats;

    const-string/jumbo v4, "width"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v8, Lcom/taobao/artc/api/RemoteVideoStats;->width:I

    .line 2188
    move-object/from16 v0, v48

    iget-object v8, v0, Lcom/taobao/artc/api/ArtcStats;->remoteVideoStats:Lcom/taobao/artc/api/RemoteVideoStats;

    const-string/jumbo v4, "height"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v8, Lcom/taobao/artc/api/RemoteVideoStats;->height:I

    .line 2189
    move-object/from16 v0, v48

    iget-object v8, v0, Lcom/taobao/artc/api/ArtcStats;->remoteVideoStats:Lcom/taobao/artc/api/RemoteVideoStats;

    const-string/jumbo v4, "receivedBitrate"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v8, Lcom/taobao/artc/api/RemoteVideoStats;->receivedBitrate:I

    .line 2190
    move-object/from16 v0, v48

    iget-object v8, v0, Lcom/taobao/artc/api/ArtcStats;->remoteVideoStats:Lcom/taobao/artc/api/RemoteVideoStats;

    const-string/jumbo v4, "receivedFrameRate"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v8, Lcom/taobao/artc/api/RemoteVideoStats;->receivedFrameRate:I

    .line 2192
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljka;

    move-result-object v4

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljka;->onRtcStats(Lcom/taobao/artc/api/ArtcStats;)V

    goto/16 :goto_0

    .line 2198
    .end local v48    # "stats":Lcom/taobao/artc/api/ArtcStats;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$1600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lcom/taobao/artc/api/ArtcConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/artc/api/ArtcConfig;->getLocalUserId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-static {v0, v4}, Lcom/taobao/artc/api/ArtcStats;->formatExtInfoMap(Ljava/util/Map;Ljava/lang/String;)V

    .line 2201
    const-string/jumbo v4, "mtp"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/lang/String;

    .line 2202
    .local v44, "mtp":Ljava/lang/String;
    if-eqz v44, :cond_6

    const-string/jumbo v4, "ts"

    .line 2203
    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2204
    const-string/jumbo v4, "ArtcInfo"

    invoke-static/range {v41 .. v41}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Ljkf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    const-string/jumbo v4, "ArtcEngineImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "ON_ARTC_RTC_STATISTICS: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v41 .. v41}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v8, v10}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2209
    :cond_6
    const-string/jumbo v4, "cpu"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2210
    const-string/jumbo v4, "cpu"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2212
    :cond_7
    const-string/jumbo v4, "mem"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2213
    const-string/jumbo v4, "mem"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2215
    :cond_8
    const-string/jumbo v4, "caFps"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2216
    const-string/jumbo v4, "caFps"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2218
    :cond_9
    const-string/jumbo v4, "preFps"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2219
    const-string/jumbo v4, "preFps"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2222
    :cond_a
    const-string/jumbo v4, "mem"

    sget v8, Lcom/taobao/artc/utils/ArtcDeviceInfo;->memory_in_mb:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v41

    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2223
    const-string/jumbo v4, "cpu"

    sget v8, Lcom/taobao/artc/utils/ArtcDeviceInfo;->cpu_usage:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v41

    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2224
    const-string/jumbo v4, "bat"

    sget v8, Lcom/taobao/artc/utils/ArtcDeviceInfo;->battery_perc:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v41

    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2225
    const-string/jumbo v4, "tem"

    sget v8, Lcom/taobao/artc/utils/ArtcDeviceInfo;->temperature:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v41

    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2226
    const-string/jumbo v4, "caFps"

    sget v8, Lorg/webrtc/CameraVideoCapturer$CameraStatistics;->cameraFps:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v41

    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2227
    const-string/jumbo v4, "preFps"

    const-string/jumbo v8, "vfri"

    move-object/from16 v0, v41

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v0, v41

    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2228
    const-string/jumbo v8, "facebt"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$6400(Lcom/taobao/artc/internal/ArtcEngineImpl;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    :goto_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-interface {v0, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2229
    const-string/jumbo v8, "shenc"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-virtual {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->isVideoHardwareEncoderRuning()Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x2

    :goto_3
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-interface {v0, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2230
    const-string/jumbo v8, "fcam"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-virtual {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->isFrontFacingCamera()Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v4, 0x1

    :goto_4
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-interface {v0, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2231
    const-string/jumbo v4, "net"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v8}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$1200(Lcom/taobao/artc/internal/ArtcEngineImpl;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/taobao/artc/utils/ArtcDeviceInfo;->getNetworkState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/taobao/artc/utils/ArtcDeviceInfo;->NetworkToInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v41

    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2232
    const-string/jumbo v8, "cama"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$6500(Lcom/taobao/artc/internal/ArtcEngineImpl;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v4, 0x1

    :goto_5
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-interface {v0, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2233
    const-string/jumbo v8, "mica"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$6600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x1

    :goto_6
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-interface {v0, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2235
    const-string/jumbo v4, "ArtcEngineImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "ON_ARTC_RTC_STATISTICS: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v41 .. v41}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v8, v10}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2236
    const-string/jumbo v4, "ArtcInfo"

    invoke-static/range {v41 .. v41}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Ljkf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2238
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$400(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lorg/webrtc/VideoCapturer;

    move-result-object v4

    invoke-interface {v4}, Lorg/webrtc/VideoCapturer;->isFile()Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$400(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lorg/webrtc/VideoCapturer;

    move-result-object v4

    invoke-interface {v4}, Lorg/webrtc/VideoCapturer;->isScreencast()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2239
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$200(Lcom/taobao/artc/internal/ArtcEngineImpl;)Z

    move-result v4

    if-eqz v4, :cond_10

    sget v4, Lorg/webrtc/CameraVideoCapturer$CameraStatistics;->cameraFps:I

    if-nez v4, :cond_10

    .line 2241
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$6708(Lcom/taobao/artc/internal/ArtcEngineImpl;)I

    .line 2242
    const-string/jumbo v4, "ArtcEngineImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "enableVideo_: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v10}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$200(Lcom/taobao/artc/internal/ArtcEngineImpl;)Z

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ", videoCapturer: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v10}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$400(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lorg/webrtc/VideoCapturer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ", videoCapturerStopped: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v10}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$2100(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v8, v10}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2243
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$200(Lcom/taobao/artc/internal/ArtcEngineImpl;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    .line 2244
    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$400(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lorg/webrtc/VideoCapturer;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$2100(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    .line 2245
    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$6700(Lcom/taobao/artc/internal/ArtcEngineImpl;)I

    move-result v4

    const/4 v8, 0x5

    if-le v4, v8, :cond_0

    .line 2246
    const-string/jumbo v4, "ArtcEngineImpl"

    const-string/jumbo v8, "ARTC_EVENT_CAMERA_UNAVAILABLE ....."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v8, v10}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2247
    sget-object v40, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;->ARTC_EVENT_CAMERA_UNAVAILABLE:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    .line 2248
    .restart local v40    # "errorEvent":Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljka;

    move-result-object v4

    const/4 v8, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v4, v0, v8}, Ljka;->onError(Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;I)V

    .line 2249
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    const/4 v8, 0x0

    invoke-static {v4, v8}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$6702(Lcom/taobao/artc/internal/ArtcEngineImpl;I)I

    goto/16 :goto_0

    .line 2228
    .end local v40    # "errorEvent":Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 2229
    :cond_c
    const/4 v4, 0x1

    goto/16 :goto_3

    .line 2230
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 2232
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 2233
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 2252
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    const/4 v8, 0x0

    invoke-static {v4, v8}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$6702(Lcom/taobao/artc/internal/ArtcEngineImpl;I)I

    goto/16 :goto_0

    .line 2260
    .end local v44    # "mtp":Ljava/lang/String;
    :pswitch_b
    new-instance v48, Lcom/taobao/artc/api/LocalVideoStats;

    invoke-direct/range {v48 .. v48}, Lcom/taobao/artc/api/LocalVideoStats;-><init>()V

    .line 2261
    .local v48, "stats":Lcom/taobao/artc/api/LocalVideoStats;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljka;

    move-result-object v4

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljka;->onLocalVideoStats(Lcom/taobao/artc/api/LocalVideoStats;)V

    goto/16 :goto_0

    .line 2266
    .end local v48    # "stats":Lcom/taobao/artc/api/LocalVideoStats;
    :pswitch_c
    new-instance v48, Lcom/taobao/artc/api/RemoteVideoStats;

    invoke-direct/range {v48 .. v48}, Lcom/taobao/artc/api/RemoteVideoStats;-><init>()V

    .line 2267
    .local v48, "stats":Lcom/taobao/artc/api/RemoteVideoStats;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljka;

    move-result-object v4

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljka;->onRemoteVideoStats(Lcom/taobao/artc/api/RemoteVideoStats;)V

    goto/16 :goto_0

    .line 2272
    .end local v48    # "stats":Lcom/taobao/artc/api/RemoteVideoStats;
    :pswitch_d
    const-string/jumbo v4, "ArtcEngineImpl"

    const-string/jumbo v8, "ice connection established"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v8, v10}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2277
    :pswitch_e
    const-string/jumbo v4, "ArtcEngineImpl"

    const-string/jumbo v8, "ice connection interrupted"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v8, v10}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2278
    const-string/jumbo v4, "onConnectionInterrupted"

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$000(Ljava/lang/String;)V

    .line 2279
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljka;

    move-result-object v4

    invoke-virtual {v4}, Ljka;->onConnectionInterrupted()V

    goto/16 :goto_0

    .line 2284
    :pswitch_f
    const-string/jumbo v4, "ArtcEngineImpl"

    const-string/jumbo v8, "ice connection lost"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v8, v10}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2285
    const-string/jumbo v4, "onConnectionLost"

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$000(Ljava/lang/String;)V

    .line 2286
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljka;

    move-result-object v4

    invoke-virtual {v4}, Ljka;->onConnectionLost()V

    goto/16 :goto_0

    .line 2291
    :pswitch_10
    const-string/jumbo v4, "width"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v49

    .line 2292
    .local v49, "width":I
    const-string/jumbo v4, "height"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v42

    .line 2293
    .local v42, "height":I
    const-string/jumbo v4, "elapsed"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2294
    const-string/jumbo v4, "onFirstLocalVideoFrame"

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$000(Ljava/lang/String;)V

    .line 2295
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljka;

    move-result-object v4

    move/from16 v0, v49

    move/from16 v1, v42

    invoke-virtual {v4, v0, v1}, Ljka;->onFirstLocalVideoFrame(II)V

    goto/16 :goto_0

    .line 2299
    .end local v42    # "height":I
    .end local v49    # "width":I
    :pswitch_11
    const-string/jumbo v4, "width"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v49

    .line 2300
    .restart local v49    # "width":I
    const-string/jumbo v4, "height"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v42

    .line 2301
    .restart local v42    # "height":I
    const-string/jumbo v4, "elapsed"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2302
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "onFirstRemoteVideoFrame, width: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ", height"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$000(Ljava/lang/String;)V

    .line 2303
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljka;

    move-result-object v4

    move/from16 v0, v49

    move/from16 v1, v42

    invoke-virtual {v4, v0, v1}, Ljka;->onFirstRemoteVideoFrame(II)V

    goto/16 :goto_0

    .line 2307
    .end local v42    # "height":I
    .end local v49    # "width":I
    :pswitch_12
    const-string/jumbo v4, "channelId"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2308
    .restart local v5    # "channelId":Ljava/lang/String;
    const-string/jumbo v4, "callId"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 2309
    .local v12, "callId":Ljava/lang/String;
    const-string/jumbo v4, "userId"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2310
    .local v13, "userId":Ljava/lang/String;
    const-string/jumbo v4, "extension"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2311
    .restart local v9    # "extension":Ljava/lang/String;
    const-string/jumbo v4, "result"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 2312
    .local v14, "result":I
    const-string/jumbo v4, "ArtcEngineImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "onCall, channelId: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ", callId: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ", userId: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ", result: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v8, v10}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2317
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljka;

    move-result-object v10

    const-string/jumbo v15, ""

    move-object v11, v5

    move-object/from16 v16, v9

    invoke-virtual/range {v10 .. v16}, Ljka;->onCall2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 2318
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "onCall, channelId: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ", callId: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ", userId: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ", result:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$000(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2322
    .end local v5    # "channelId":Ljava/lang/String;
    .end local v9    # "extension":Ljava/lang/String;
    .end local v12    # "callId":Ljava/lang/String;
    .end local v13    # "userId":Ljava/lang/String;
    .end local v14    # "result":I
    :pswitch_13
    const-string/jumbo v4, "channelId"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2323
    .restart local v5    # "channelId":Ljava/lang/String;
    const-string/jumbo v4, "userId"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2324
    .restart local v13    # "userId":Ljava/lang/String;
    const-string/jumbo v4, "isVideoCall"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 2325
    .local v18, "isVideoCall":I
    const-string/jumbo v4, "extension"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2326
    .restart local v9    # "extension":Ljava/lang/String;
    const-string/jumbo v4, "ArtcEngineImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "onInvited, channelId: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ", userId: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ", isVideoCall: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v8, v10}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2330
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "onInvited, channelId: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ", userId: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ", isVideoCall: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$000(Ljava/lang/String;)V

    .line 2333
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljka;

    move-result-object v15

    const-string/jumbo v19, ""

    move-object/from16 v16, v5

    move-object/from16 v17, v13

    move-object/from16 v20, v9

    invoke-virtual/range {v15 .. v20}, Ljka;->onInvited2(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2337
    .end local v5    # "channelId":Ljava/lang/String;
    .end local v9    # "extension":Ljava/lang/String;
    .end local v13    # "userId":Ljava/lang/String;
    .end local v18    # "isVideoCall":I
    :pswitch_14
    const-string/jumbo v4, "channelId"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2338
    .restart local v5    # "channelId":Ljava/lang/String;
    const-string/jumbo v4, "callId"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 2339
    .restart local v12    # "callId":Ljava/lang/String;
    const-string/jumbo v4, "userId"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2340
    .restart local v13    # "userId":Ljava/lang/String;
    const-string/jumbo v4, "role"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 2341
    .local v23, "role":I
    const-string/jumbo v4, "isVideoCall"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 2342
    .restart local v18    # "isVideoCall":I
    const-string/jumbo v4, "extension"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2343
    .restart local v9    # "extension":Ljava/lang/String;
    const-string/jumbo v4, "ArtcEngineImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "onCalled, channelId: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ", userId: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ", isVideoCall: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ", role: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v8, v10}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2348
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "onCalled, channelId: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ", callId: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ", userId: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ", role: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ", isVideoCall:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$000(Ljava/lang/String;)V

    .line 2353
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljka;

    move-result-object v19

    const-string/jumbo v25, ""

    move-object/from16 v20, v5

    move-object/from16 v21, v12

    move-object/from16 v22, v13

    move/from16 v24, v18

    move-object/from16 v26, v9

    invoke-virtual/range {v19 .. v26}, Ljka;->onCalled2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2357
    .end local v5    # "channelId":Ljava/lang/String;
    .end local v9    # "extension":Ljava/lang/String;
    .end local v12    # "callId":Ljava/lang/String;
    .end local v13    # "userId":Ljava/lang/String;
    .end local v18    # "isVideoCall":I
    .end local v23    # "role":I
    :pswitch_15
    const-string/jumbo v4, "ArtcEngineImpl"

    const-string/jumbo v8, "onCallTimeout"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v8, v10}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2358
    const-string/jumbo v4, "onCallTimeout"

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$000(Ljava/lang/String;)V

    .line 2359
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljka;

    move-result-object v4

    invoke-virtual {v4}, Ljka;->onCallTimeout()V

    goto/16 :goto_0

    .line 2363
    :pswitch_16
    const-string/jumbo v4, "channelId"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2364
    .restart local v5    # "channelId":Ljava/lang/String;
    const-string/jumbo v4, "callId"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 2366
    .restart local v12    # "callId":Ljava/lang/String;
    const-string/jumbo v4, "answer"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 2367
    .local v27, "answer":I
    const-string/jumbo v4, "extension"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2368
    .restart local v9    # "extension":Ljava/lang/String;
    const-string/jumbo v4, "ArtcEngineImpl"

    const-string/jumbo v8, "onAnswer ... "

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v8, v10}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2369
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "onAnswer, channelId: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ", callId: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ", answer: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$000(Ljava/lang/String;)V

    .line 2372
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljka;

    move-result-object v24

    const-string/jumbo v28, ""

    move-object/from16 v25, v5

    move-object/from16 v26, v12

    move-object/from16 v29, v9

    invoke-virtual/range {v24 .. v29}, Ljka;->onAnswer2(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2376
    .end local v5    # "channelId":Ljava/lang/String;
    .end local v9    # "extension":Ljava/lang/String;
    .end local v12    # "callId":Ljava/lang/String;
    .end local v27    # "answer":I
    :pswitch_17
    const-string/jumbo v4, "channelId"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2377
    .restart local v5    # "channelId":Ljava/lang/String;
    const-string/jumbo v4, "callId"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 2378
    .restart local v12    # "callId":Ljava/lang/String;
    const-string/jumbo v4, "userId"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2379
    .restart local v13    # "userId":Ljava/lang/String;
    const-string/jumbo v4, "role"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 2380
    .restart local v23    # "role":I
    const-string/jumbo v4, "answer"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 2381
    .restart local v27    # "answer":I
    const/4 v4, 0x1

    move/from16 v0, v27

    if-ne v0, v4, :cond_11

    .line 2383
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    const/4 v8, 0x1

    invoke-static {v4, v8}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$6802(Lcom/taobao/artc/internal/ArtcEngineImpl;Z)Z

    .line 2385
    :cond_11
    const-string/jumbo v4, "extension"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2386
    .restart local v9    # "extension":Ljava/lang/String;
    const-string/jumbo v4, "ArtcEngineImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "onAnswered,  role: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ", answer: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v8, v10}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2387
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "onAnswered, channelId: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ", callId: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ", userId: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ", role: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ", answer:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$000(Ljava/lang/String;)V

    .line 2392
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljka;

    move-result-object v19

    const-string/jumbo v25, ""

    move-object/from16 v20, v5

    move-object/from16 v21, v12

    move-object/from16 v22, v13

    move/from16 v24, v27

    move-object/from16 v26, v9

    invoke-virtual/range {v19 .. v26}, Ljka;->onAnswered2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2397
    .end local v5    # "channelId":Ljava/lang/String;
    .end local v9    # "extension":Ljava/lang/String;
    .end local v12    # "callId":Ljava/lang/String;
    .end local v13    # "userId":Ljava/lang/String;
    .end local v23    # "role":I
    .end local v27    # "answer":I
    :pswitch_18
    const-string/jumbo v4, "channelId"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2398
    .restart local v5    # "channelId":Ljava/lang/String;
    const-string/jumbo v4, "remoteUserId"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 2399
    .restart local v30    # "remoteUserId":Ljava/lang/String;
    const-string/jumbo v4, "extension"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2401
    .restart local v9    # "extension":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$6800(Lcom/taobao/artc/internal/ArtcEngineImpl;)Z

    move-result v4

    const/4 v8, 0x1

    if-ne v4, v8, :cond_0

    .line 2402
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$6900(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;

    move-result-object v4

    sget-object v8, Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;->ARTC_CHANNEL_PROFILE_BROADCAST:Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;

    if-ne v4, v8, :cond_12

    .line 2403
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$3900()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    move-object/from16 v0, v30

    invoke-virtual {v4, v8, v0, v10, v11}, Lcom/taobao/artc/internal/ArtcEngineImpl;->kick2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2405
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    const/4 v8, 0x0

    invoke-static {v4, v8}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$6802(Lcom/taobao/artc/internal/ArtcEngineImpl;Z)Z

    .line 2406
    const-string/jumbo v4, "ArtcEngineImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "onKicked,  channelId: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ", remoteUserId: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v8, v10}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2407
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "onKicked, channelId: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ", remoteUserId:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$000(Ljava/lang/String;)V

    .line 2409
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljka;

    move-result-object v4

    const-string/jumbo v8, ""

    move-object/from16 v0, v30

    invoke-virtual {v4, v5, v0, v8, v9}, Ljka;->onKicked2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2415
    .end local v5    # "channelId":Ljava/lang/String;
    .end local v9    # "extension":Ljava/lang/String;
    .end local v30    # "remoteUserId":Ljava/lang/String;
    :pswitch_19
    const-string/jumbo v4, "channelId"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2416
    .restart local v5    # "channelId":Ljava/lang/String;
    const-string/jumbo v4, "remoteUserId"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 2417
    .restart local v30    # "remoteUserId":Ljava/lang/String;
    const-string/jumbo v4, "reason"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2418
    .local v6, "reason":I
    const-string/jumbo v4, "extension"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2419
    .restart local v9    # "extension":Ljava/lang/String;
    const-string/jumbo v4, "ArtcEngineImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "onCanceledCall,  channelId: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ", remoteUserId: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v8, v10}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2421
    const-string/jumbo v4, "onCanceledCall"

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$000(Ljava/lang/String;)V

    .line 2422
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljka;

    move-result-object v28

    const-string/jumbo v32, ""

    move-object/from16 v29, v5

    move/from16 v31, v6

    move-object/from16 v33, v9

    invoke-virtual/range {v28 .. v33}, Ljka;->onCanceledCall2(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2426
    .end local v5    # "channelId":Ljava/lang/String;
    .end local v6    # "reason":I
    .end local v9    # "extension":Ljava/lang/String;
    .end local v30    # "remoteUserId":Ljava/lang/String;
    :pswitch_1a
    const-string/jumbo v4, "quality"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v45

    .line 2428
    .restart local v45    # "quality":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljka;

    move-result-object v4

    move/from16 v0, v45

    invoke-virtual {v4, v0}, Ljka;->onLastmileQuality(I)V

    goto/16 :goto_0

    .line 2432
    .end local v45    # "quality":I
    :pswitch_1b
    invoke-static/range {v41 .. v41}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/JSONObject;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/alibaba/fastjson/JSONObject;

    .line 2433
    .local v36, "data":Lcom/alibaba/fastjson/JSONObject;
    new-instance v46, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v46 .. v46}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2434
    .local v46, "root":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "currentTime"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    .line 2436
    .local v35, "currentTime":Ljava/lang/String;
    const-string/jumbo v4, "currentTime"

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2437
    const-string/jumbo v4, "turnSpeed"

    move-object/from16 v0, v46

    move-object/from16 v1, v36

    invoke-virtual {v0, v4, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2438
    const-string/jumbo v4, "currentTime"

    move-object/from16 v0, v46

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2439
    const-string/jumbo v4, "channelId"

    invoke-static {}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$3900()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v46

    invoke-virtual {v0, v4, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2440
    const-string/jumbo v4, "bizId"

    invoke-static {}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$6300()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v46

    invoke-virtual {v0, v4, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2441
    const-string/jumbo v4, "userId"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v8}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$1600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lcom/taobao/artc/api/ArtcConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/taobao/artc/api/ArtcConfig;->getLocalUserId()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v46

    invoke-virtual {v0, v4, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2444
    const-string/jumbo v4, "ArtcEvent"

    invoke-virtual/range {v46 .. v46}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    invoke-static {v4, v8, v10, v11}, Ljkf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2445
    const-string/jumbo v4, "ArtcEngineImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "ON_ARTC_PINGTURNSPEED: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v46 .. v46}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v8, v10}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2451
    .end local v35    # "currentTime":Ljava/lang/String;
    .end local v36    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v46    # "root":Lcom/alibaba/fastjson/JSONObject;
    :pswitch_1c
    const-string/jumbo v4, "ArtcEngineImpl"

    const-string/jumbo v8, "onArtcEvent, will restart"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v8, v10}, Lcom/taobao/artc/utils/ArtcLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2452
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    const/4 v8, 0x1

    invoke-static {v4, v8}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$6102(Lcom/taobao/artc/internal/ArtcEngineImpl;Z)Z

    .line 2453
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    const-string/jumbo v8, ""

    const-string/jumbo v10, ""

    invoke-virtual {v4, v8, v10}, Lcom/taobao/artc/internal/ArtcEngineImpl;->leaveChannel2(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2052
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_1a
        :pswitch_1
        :pswitch_1b
        :pswitch_13
        :pswitch_1c
        :pswitch_0
        :pswitch_d
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method
