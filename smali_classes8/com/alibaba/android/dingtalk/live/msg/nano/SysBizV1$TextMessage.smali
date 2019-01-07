.class public final Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TextMessage;
.super Lixd;
.source "SysBizV1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TextMessage"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TextMessage;


# instance fields
.field public message:Ljava/lang/String;

.field public params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 399
    invoke-direct {p0}, Lixd;-><init>()V

    .line 400
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TextMessage;->clear()Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TextMessage;

    .line 401
    return-void
.end method

.method public static emptyArray()[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TextMessage;
    .locals 2

    .prologue
    .line 382
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TextMessage;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TextMessage;

    if-nez v0, :cond_1

    .line 383
    sget-object v1, Lixb;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 385
    :try_start_0
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TextMessage;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TextMessage;

    if-nez v0, :cond_0

    .line 386
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TextMessage;

    sput-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TextMessage;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TextMessage;

    .line 388
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    :cond_1
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TextMessage;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TextMessage;

    return-object v0

    .line 388
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TextMessage;
    .locals 1
    .param p0, "input"    # Lixa;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 484
    new-instance v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TextMessage;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TextMessage;-><init>()V

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TextMessage;->mergeFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TextMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TextMessage;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 478
    new-instance v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TextMessage;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TextMessage;-><init>()V

    invoke-static {v0, p0}, Lixd;->mergeFrom(Lixd;[B)Lixd;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TextMessage;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TextMessage;
    .locals 1

    .prologue
    .line 404
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TextMessage;->message:Ljava/lang/String;

    .line 405
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TextMessage;->params:Ljava/util/Map;

    .line 406
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TextMessage;->cachedSize:I

    .line 407
    return-object p0
.end method

.method protected final computeSerializedSize()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v3, 0x9

    .line 427
    invoke-super {p0}, Lixd;->computeSerializedSize()I

    move-result v0

    .line 428
    .local v0, "size":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TextMessage;->message:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 429
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TextMessage;->message:Ljava/lang/String;

    .line 430
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 432
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TextMessage;->params:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 433
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TextMessage;->params:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v1, v2, v3, v3}, Lixb;->a(Ljava/util/Map;III)I

    move-result v1

    add-int/2addr v0, v1

    .line 438
    :cond_1
    return v0
.end method

.method public final mergeFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TextMessage;
    .locals 9
    .param p1, "input"    # Lixa;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v3, 0x9

    .line 446
    invoke-static {}, Lixc;->a()Lixc$b;

    move-result-object v2

    .line 448
    .local v2, "mapFactory":Lixc$b;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lixa;->a()I

    move-result v8

    .line 449
    .local v8, "tag":I
    sparse-switch v8, :sswitch_data_0

    .line 453
    invoke-static {p1, v8}, Lixf;->a(Lixa;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    :sswitch_0
    return-object p0

    .line 459
    :sswitch_1
    invoke-virtual {p1}, Lixa;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TextMessage;->message:Ljava/lang/String;

    goto :goto_0

    .line 463
    :sswitch_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TextMessage;->params:Ljava/util/Map;

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/16 v7, 0x12

    move-object v0, p1

    move v4, v3

    invoke-static/range {v0 .. v7}, Lixb;->a(Lixa;Ljava/util/Map;Lixc$b;IILjava/lang/Object;II)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TextMessage;->params:Ljava/util/Map;

    goto :goto_0

    .line 449
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lixa;)Lixd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TextMessage;->mergeFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TextMessage;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v2, 0x9

    .line 413
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TextMessage;->message:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TextMessage;->message:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TextMessage;->params:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TextMessage;->params:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {p1, v0, v1, v2, v2}, Lixb;->a(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;Ljava/util/Map;III)V

    .line 422
    :cond_1
    invoke-super {p0, p1}, Lixd;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 423
    return-void
.end method
