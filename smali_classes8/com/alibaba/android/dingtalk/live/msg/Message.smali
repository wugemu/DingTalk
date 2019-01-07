.class public Lcom/alibaba/android/dingtalk/live/msg/Message;
.super Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;
.source "Message.java"


# instance fields
.field public body:Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;

.field public content:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;

    .prologue
    const/4 v1, 0x1

    .line 40
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;-><init>(Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;)V

    .line 41
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/Message;->msgType:I

    .line 42
    iput v1, p0, Lcom/alibaba/android/dingtalk/live/msg/Message;->sysCode:I

    .line 43
    iput v1, p0, Lcom/alibaba/android/dingtalk/live/msg/Message;->type:I

    .line 44
    new-instance v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/Message;->body:Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;

    .line 45
    return-void
.end method

.method public static create()Lcom/alibaba/android/dingtalk/live/msg/Message;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 48
    new-instance v0, Lcom/alibaba/android/dingtalk/live/msg/Message;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/msg/Message;-><init>()V

    .line 49
    .local v0, "myself":Lcom/alibaba/android/dingtalk/live/msg/Message;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/msg/Message;->assemble()V

    .line 50
    const/4 v1, 0x3

    iput v1, v0, Lcom/alibaba/android/dingtalk/live/msg/Message;->msgType:I

    .line 51
    iput v2, v0, Lcom/alibaba/android/dingtalk/live/msg/Message;->sysCode:I

    .line 52
    iput v2, v0, Lcom/alibaba/android/dingtalk/live/msg/Message;->type:I

    .line 53
    new-instance v1, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/live/msg/Message;->body:Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;

    .line 54
    return-object v0
.end method


# virtual methods
.method public bizToProtocol()[B
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/Message;->content:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/Message;->content:[B

    .line 66
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method public bodyToProtocol()[B
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/Message;->body:Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/Message;->body:Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->toByteArray(Lixd;)[B

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method public fromProtocol(Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;)V
    .locals 1
    .param p1, "data"    # Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->fromProtocol(Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;)V

    .line 72
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/live/msg/core/utils/ProtocolKIt;->getBodyBytes(Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->parseFrom([B)Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/Message;->body:Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;

    .line 73
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/live/msg/core/utils/ProtocolKIt;->getBizBytes(Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/Message;->content:[B

    .line 74
    return-void
.end method

.method public toMap()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 80
    .local v0, "dataParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    const-string/jumbo v4, "namespace"

    iget v5, p0, Lcom/alibaba/android/dingtalk/live/msg/Message;->bizCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string/jumbo v4, "topic"

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/live/msg/Message;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->topic:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string/jumbo v4, "sendAll"

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/live/msg/Message;->body:Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;

    iget-boolean v5, v5, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->sendFullTags:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 84
    .local v1, "jArray":Lcom/alibaba/fastjson/JSONArray;
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/msg/Message;->body:Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->sendTags:[Ljava/lang/String;

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v2, v4, v3

    .line 85
    .local v2, "tag":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 86
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 89
    .end local v2    # "tag":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "tagList"

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string/jumbo v3, "subType"

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/msg/Message;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iget v4, v4, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->subType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string/jumbo v3, "msgId"

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/msg/Message;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->messageId:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string/jumbo v3, "qos"

    iget-byte v4, p0, Lcom/alibaba/android/dingtalk/live/msg/Message;->qosLevel:B

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string/jumbo v3, "sdkVersion"

    const-string/jumbo v4, "0.2.1"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/msg/Message;->content:[B

    if-eqz v3, :cond_2

    .line 95
    const-string/jumbo v3, "bizData"

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/msg/Message;->content:[B

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v1    # "jArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_2
    :goto_1
    return-object v0

    :catch_0
    move-exception v3

    goto :goto_1
.end method
