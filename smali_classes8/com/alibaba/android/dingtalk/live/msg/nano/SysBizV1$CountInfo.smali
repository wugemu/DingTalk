.class public final Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$CountInfo;
.super Lixd;
.source "SysBizV1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CountInfo"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$CountInfo;


# instance fields
.field public value:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 508
    invoke-direct {p0}, Lixd;-><init>()V

    .line 509
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$CountInfo;->clear()Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$CountInfo;

    .line 510
    return-void
.end method

.method public static emptyArray()[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$CountInfo;
    .locals 2

    .prologue
    .line 494
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$CountInfo;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$CountInfo;

    if-nez v0, :cond_1

    .line 495
    sget-object v1, Lixb;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 497
    :try_start_0
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$CountInfo;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$CountInfo;

    if-nez v0, :cond_0

    .line 498
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$CountInfo;

    sput-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$CountInfo;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$CountInfo;

    .line 500
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    :cond_1
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$CountInfo;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$CountInfo;

    return-object v0

    .line 500
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$CountInfo;
    .locals 1
    .param p0, "input"    # Lixa;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 581
    new-instance v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$CountInfo;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$CountInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$CountInfo;->mergeFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$CountInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$CountInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 575
    new-instance v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$CountInfo;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$CountInfo;-><init>()V

    invoke-static {v0, p0}, Lixd;->mergeFrom(Lixd;[B)Lixd;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$CountInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$CountInfo;
    .locals 1

    .prologue
    .line 513
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$CountInfo;->value:Ljava/util/Map;

    .line 514
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$CountInfo;->cachedSize:I

    .line 515
    return-object p0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 532
    invoke-super {p0}, Lixd;->computeSerializedSize()I

    move-result v0

    .line 533
    .local v0, "size":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$CountInfo;->value:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 534
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$CountInfo;->value:Ljava/util/Map;

    const/4 v2, 0x1

    const/16 v3, 0x9

    const/4 v4, 0x3

    invoke-static {v1, v2, v3, v4}, Lixb;->a(Ljava/util/Map;III)I

    move-result v1

    add-int/2addr v0, v1

    .line 539
    :cond_0
    return v0
.end method

.method public final mergeFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$CountInfo;
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
    .line 547
    invoke-static {}, Lixc;->a()Lixc$b;

    move-result-object v2

    .line 549
    .local v2, "mapFactory":Lixc$b;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lixa;->a()I

    move-result v8

    .line 550
    .local v8, "tag":I
    sparse-switch v8, :sswitch_data_0

    .line 554
    invoke-static {p1, v8}, Lixf;->a(Lixa;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    :sswitch_0
    return-object p0

    .line 560
    :sswitch_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$CountInfo;->value:Ljava/util/Map;

    const/16 v3, 0x9

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/16 v7, 0x10

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lixb;->a(Lixa;Ljava/util/Map;Lixc$b;IILjava/lang/Object;II)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$CountInfo;->value:Ljava/util/Map;

    goto :goto_0

    .line 550
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 488
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$CountInfo;->mergeFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$CountInfo;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 521
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$CountInfo;->value:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$CountInfo;->value:Ljava/util/Map;

    const/4 v1, 0x1

    const/16 v2, 0x9

    const/4 v3, 0x3

    invoke-static {p1, v0, v1, v2, v3}, Lixb;->a(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;Ljava/util/Map;III)V

    .line 527
    :cond_0
    invoke-super {p0, p1}, Lixd;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 528
    return-void
.end method
