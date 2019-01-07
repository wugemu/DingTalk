.class public Lcom/alibaba/android/dingtalk/live/msg/PowerMessageUtils;
.super Ljava/lang/Object;
.source "PowerMessageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFavor(Landroid/content/Context;JLjava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "count"    # J
    .param p3, "liveUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v7

    invoke-virtual {v7}, Lccr;->c()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/alibaba/wukong/WKManager;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, "utdId":Ljava/lang/String;
    const-string/jumbo v0, "23602810"

    .line 86
    .local v0, "appKey":Ljava/lang/String;
    new-instance v2, Lcom/alibaba/android/dingtalk/live/rpc/model/MTopReqObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/live/rpc/model/MTopReqObject;-><init>()V

    .line 87
    .local v2, "mTopReqObject":Lcom/alibaba/android/dingtalk/live/rpc/model/MTopReqObject;
    const-string/jumbo v6, "mtop.taobao.powermsg.msg.count"

    iput-object v6, v2, Lcom/alibaba/android/dingtalk/live/rpc/model/MTopReqObject;->api:Ljava/lang/String;

    .line 88
    const-string/jumbo v6, "POST"

    iput-object v6, v2, Lcom/alibaba/android/dingtalk/live/rpc/model/MTopReqObject;->type:Ljava/lang/String;

    .line 89
    const-string/jumbo v6, "1.0"

    iput-object v6, v2, Lcom/alibaba/android/dingtalk/live/rpc/model/MTopReqObject;->v:Ljava/lang/String;

    .line 90
    new-instance v4, Lcom/google/gson/JsonObject;

    invoke-direct {v4}, Lcom/google/gson/JsonObject;-><init>()V

    .line 91
    .local v4, "param":Lcom/google/gson/JsonObject;
    const-string/jumbo v6, "namespace"

    const/16 v7, 0x12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 92
    const-string/jumbo v6, "topic"

    invoke-virtual {v4, v6, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string/jumbo v6, "id"

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v7

    invoke-virtual {v7}, Lccr;->c()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string/jumbo v6, "sdkVersion"

    const-string/jumbo v7, "0.2.1"

    invoke-virtual {v4, v6, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string/jumbo v6, "utdId"

    invoke-virtual {v4, v6, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string/jumbo v6, "appKey"

    invoke-virtual {v4, v6, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 98
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "dig"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string/jumbo v6, "countMap"

    invoke-static {v3}, Lcor;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iput-object v4, v2, Lcom/alibaba/android/dingtalk/live/rpc/model/MTopReqObject;->param:Lcom/google/gson/JsonObject;

    .line 102
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 103
    .local v1, "headers":Lcom/google/gson/JsonObject;
    const-string/jumbo v6, "x-uid"

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v7

    invoke-virtual {v7}, Lccr;->c()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string/jumbo v6, "x-appkey"

    invoke-virtual {v1, v6, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string/jumbo v6, "x-utdid"

    invoke-virtual {v1, v6, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iput-object v1, v2, Lcom/alibaba/android/dingtalk/live/rpc/model/MTopReqObject;->headers:Lcom/google/gson/JsonObject;

    .line 108
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v6

    invoke-virtual {v6, v2, p4}, Lbxe;->a(Lcom/alibaba/android/dingtalk/live/rpc/model/MTopReqObject;Lcom/alibaba/wukong/Callback;)V

    .line 109
    return-void
.end method

.method public static fromBaseMessage(Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;)Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;
    .locals 6
    .param p0, "message"    # Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 125
    new-instance v1, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;-><init>()V

    .line 126
    .local v1, "msg":Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;
    instance-of v3, p0, Lcom/alibaba/android/dingtalk/live/msg/Message;

    if-eqz v3, :cond_1

    .line 127
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iget v2, v3, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->subType:I

    .line 133
    .local v2, "type":I
    const/16 v3, 0x67

    if-ne v2, v3, :cond_0

    .line 134
    new-instance v1, Lcom/alibaba/android/dingtalk/live/msg/common/JoinPowerMessage;

    .end local v1    # "msg":Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;
    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/live/msg/common/JoinPowerMessage;-><init>()V

    .restart local v1    # "msg":Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;
    :cond_0
    move-object v0, p0

    .line 136
    check-cast v0, Lcom/alibaba/android/dingtalk/live/msg/Message;

    .line 137
    .local v0, "m":Lcom/alibaba/android/dingtalk/live/msg/Message;
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/live/msg/Message;->body:Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->from:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->from:Ljava/lang/String;

    .line 138
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/live/msg/Message;->body:Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->to:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->to:Ljava/lang/String;

    .line 139
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/live/msg/Message;->body:Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->timestamp:J

    iput-wide v4, v1, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->timestamp:J

    .line 140
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/live/msg/Message;->body:Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->sendTags:[Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->tags:[Ljava/lang/String;

    .line 141
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/live/msg/Message;->body:Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;

    iget-boolean v3, v3, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->sendFullTags:Z

    iput-boolean v3, v1, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->sendFullTags:Z

    .line 142
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/live/msg/Message;->content:[B

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->data:[B

    .line 148
    .end local v0    # "m":Lcom/alibaba/android/dingtalk/live/msg/Message;
    .end local v2    # "type":I
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iget v3, v3, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->subType:I

    iput v3, v1, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->type:I

    .line 149
    iget v3, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->bizCode:I

    iput v3, v1, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->bizCode:I

    .line 150
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->topic:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->topic:Ljava/lang/String;

    .line 151
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->userId:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->userId:Ljava/lang/String;

    .line 152
    iget-byte v3, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->qosLevel:B

    iput v3, v1, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->qosLevel:I

    .line 153
    iget-boolean v3, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->needACK:Z

    iput-boolean v3, v1, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->needAck:Z

    .line 154
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iget v3, v3, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->priority:I

    iput v3, v1, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->priority:I

    .line 155
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->messageId:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->messageId:Ljava/lang/String;

    .line 156
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->fromData()V

    .line 157
    return-object v1
.end method

.method public static parseLiveSystemMessageType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "obj":Lorg/json/JSONObject;
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 120
    .end local v0    # "obj":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static subscribe(Landroid/content/Context;ILjava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "role"    # I
    .param p2, "liveUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->c()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Lcom/alibaba/wukong/WKManager;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 33
    .local v4, "utdId":Ljava/lang/String;
    const-string/jumbo v0, "23602810"

    .line 34
    .local v0, "appKey":Ljava/lang/String;
    new-instance v2, Lcom/alibaba/android/dingtalk/live/rpc/model/MTopReqObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/live/rpc/model/MTopReqObject;-><init>()V

    .line 35
    .local v2, "mTopReqObject":Lcom/alibaba/android/dingtalk/live/rpc/model/MTopReqObject;
    const-string/jumbo v5, "mtop.taobao.powermsg.msg.subscribe"

    iput-object v5, v2, Lcom/alibaba/android/dingtalk/live/rpc/model/MTopReqObject;->api:Ljava/lang/String;

    .line 36
    const-string/jumbo v5, "POST"

    iput-object v5, v2, Lcom/alibaba/android/dingtalk/live/rpc/model/MTopReqObject;->type:Ljava/lang/String;

    .line 37
    const-string/jumbo v5, "1.0"

    iput-object v5, v2, Lcom/alibaba/android/dingtalk/live/rpc/model/MTopReqObject;->v:Ljava/lang/String;

    .line 38
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 39
    .local v3, "param":Lcom/google/gson/JsonObject;
    const-string/jumbo v5, "namespace"

    const/16 v6, 0x12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 40
    const-string/jumbo v5, "topic"

    invoke-virtual {v3, v5, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string/jumbo v5, "id"

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string/jumbo v5, "role"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 43
    const-string/jumbo v5, "sdkVersion"

    const-string/jumbo v6, "0.2.1"

    invoke-virtual {v3, v5, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string/jumbo v5, "utdId"

    invoke-virtual {v3, v5, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string/jumbo v5, "appKey"

    invoke-virtual {v3, v5, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iput-object v3, v2, Lcom/alibaba/android/dingtalk/live/rpc/model/MTopReqObject;->param:Lcom/google/gson/JsonObject;

    .line 48
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 49
    .local v1, "headers":Lcom/google/gson/JsonObject;
    const-string/jumbo v5, "x-uid"

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string/jumbo v5, "x-appkey"

    invoke-virtual {v1, v5, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string/jumbo v5, "x-utdid"

    invoke-virtual {v1, v5, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iput-object v1, v2, Lcom/alibaba/android/dingtalk/live/rpc/model/MTopReqObject;->headers:Lcom/google/gson/JsonObject;

    .line 54
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v5

    invoke-virtual {v5, v2, p3}, Lbxe;->a(Lcom/alibaba/android/dingtalk/live/rpc/model/MTopReqObject;Lcom/alibaba/wukong/Callback;)V

    .line 55
    return-void
.end method

.method public static toMessage(Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;)Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;
    .locals 4
    .param p0, "message"    # Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->toData()V

    .line 165
    invoke-static {}, Lcom/alibaba/android/dingtalk/live/msg/Message;->create()Lcom/alibaba/android/dingtalk/live/msg/Message;

    move-result-object v0

    .line 166
    .local v0, "msg":Lcom/alibaba/android/dingtalk/live/msg/Message;
    iget v1, p0, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->bizCode:I

    iput v1, v0, Lcom/alibaba/android/dingtalk/live/msg/Message;->bizCode:I

    .line 167
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->data:[B

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/live/msg/Message;->content:[B

    .line 168
    const/4 v1, 0x1

    iput v1, v0, Lcom/alibaba/android/dingtalk/live/msg/Message;->sysCode:I

    .line 169
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->needAck:Z

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/live/msg/Message;->needACK:Z

    .line 170
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->topic:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/live/msg/Message;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->topic:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->topic:Ljava/lang/String;

    .line 172
    :cond_0
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/live/msg/Message;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iget v2, p0, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->type:I

    iput v2, v1, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->subType:I

    .line 173
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->from:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 174
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/live/msg/Message;->body:Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->from:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->from:Ljava/lang/String;

    .line 175
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->to:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 176
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/live/msg/Message;->body:Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->to:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->to:Ljava/lang/String;

    .line 177
    :cond_2
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/live/msg/Message;->body:Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->timestamp:J

    iput-wide v2, v1, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->timestamp:J

    .line 178
    iget v1, p0, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->qosLevel:I

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/alibaba/android/dingtalk/live/msg/Message;->qosLevel:B

    .line 179
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/live/msg/Message;->body:Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;

    iget-boolean v2, p0, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->sendFullTags:Z

    iput-boolean v2, v1, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->sendFullTags:Z

    .line 180
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->tags:[Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/live/msg/Message;->body:Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->tags:[Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->sendTags:[Ljava/lang/String;

    .line 181
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->data:[B

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/live/msg/Message;->content:[B

    .line 182
    return-object v0
.end method

.method public static unsubscribe(Landroid/content/Context;ILjava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "role"    # I
    .param p2, "liveUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->c()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Lcom/alibaba/wukong/WKManager;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "utdId":Ljava/lang/String;
    const-string/jumbo v0, "23602810"

    .line 60
    .local v0, "appKey":Ljava/lang/String;
    new-instance v2, Lcom/alibaba/android/dingtalk/live/rpc/model/MTopReqObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/live/rpc/model/MTopReqObject;-><init>()V

    .line 61
    .local v2, "mTopReqObject":Lcom/alibaba/android/dingtalk/live/rpc/model/MTopReqObject;
    const-string/jumbo v5, "mtop.taobao.powermsg.msg.unsubscribe"

    iput-object v5, v2, Lcom/alibaba/android/dingtalk/live/rpc/model/MTopReqObject;->api:Ljava/lang/String;

    .line 62
    const-string/jumbo v5, "POST"

    iput-object v5, v2, Lcom/alibaba/android/dingtalk/live/rpc/model/MTopReqObject;->type:Ljava/lang/String;

    .line 63
    const-string/jumbo v5, "1.0"

    iput-object v5, v2, Lcom/alibaba/android/dingtalk/live/rpc/model/MTopReqObject;->v:Ljava/lang/String;

    .line 64
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 65
    .local v3, "param":Lcom/google/gson/JsonObject;
    const-string/jumbo v5, "namespace"

    const/16 v6, 0x12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 66
    const-string/jumbo v5, "topic"

    invoke-virtual {v3, v5, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string/jumbo v5, "id"

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string/jumbo v5, "role"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 69
    const-string/jumbo v5, "sdkVersion"

    const-string/jumbo v6, "0.2.1"

    invoke-virtual {v3, v5, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string/jumbo v5, "utdId"

    invoke-virtual {v3, v5, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string/jumbo v5, "appKey"

    invoke-virtual {v3, v5, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iput-object v3, v2, Lcom/alibaba/android/dingtalk/live/rpc/model/MTopReqObject;->param:Lcom/google/gson/JsonObject;

    .line 74
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 75
    .local v1, "headers":Lcom/google/gson/JsonObject;
    const-string/jumbo v5, "x-uid"

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string/jumbo v5, "x-appkey"

    invoke-virtual {v1, v5, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string/jumbo v5, "x-utdid"

    invoke-virtual {v1, v5, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iput-object v1, v2, Lcom/alibaba/android/dingtalk/live/rpc/model/MTopReqObject;->headers:Lcom/google/gson/JsonObject;

    .line 80
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v5

    invoke-virtual {v5, v2, p3}, Lbxe;->a(Lcom/alibaba/android/dingtalk/live/rpc/model/MTopReqObject;Lcom/alibaba/wukong/Callback;)V

    .line 81
    return-void
.end method
