.class public final Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$P2p;
.super Lixd;
.source "BodyV1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "P2p"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$P2p;


# instance fields
.field public traceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 714
    invoke-direct {p0}, Lixd;-><init>()V

    .line 715
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$P2p;->clear()Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$P2p;

    .line 716
    return-void
.end method

.method public static emptyArray()[Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$P2p;
    .locals 2

    .prologue
    .line 700
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$P2p;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$P2p;

    if-nez v0, :cond_1

    .line 701
    sget-object v1, Lixb;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 703
    :try_start_0
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$P2p;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$P2p;

    if-nez v0, :cond_0

    .line 704
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$P2p;

    sput-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$P2p;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$P2p;

    .line 706
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    :cond_1
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$P2p;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$P2p;

    return-object v0

    .line 706
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$P2p;
    .locals 1
    .param p0, "input"    # Lixa;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 774
    new-instance v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$P2p;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$P2p;-><init>()V

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$P2p;->mergeFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$P2p;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$P2p;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 768
    new-instance v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$P2p;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$P2p;-><init>()V

    invoke-static {v0, p0}, Lixd;->mergeFrom(Lixd;[B)Lixd;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$P2p;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$P2p;
    .locals 1

    .prologue
    .line 719
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$P2p;->traceId:Ljava/lang/String;

    .line 720
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$P2p;->cachedSize:I

    .line 721
    return-object p0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 735
    invoke-super {p0}, Lixd;->computeSerializedSize()I

    move-result v0

    .line 736
    .local v0, "size":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$P2p;->traceId:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 737
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$P2p;->traceId:Ljava/lang/String;

    .line 738
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 740
    :cond_0
    return v0
.end method

.method public final mergeFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$P2p;
    .locals 2
    .param p1, "input"    # Lixa;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 748
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lixa;->a()I

    move-result v0

    .line 749
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 753
    invoke-static {p1, v0}, Lixf;->a(Lixa;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 754
    :sswitch_0
    return-object p0

    .line 759
    :sswitch_1
    invoke-virtual {p1}, Lixa;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$P2p;->traceId:Ljava/lang/String;

    goto :goto_0

    .line 749
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
    .line 694
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$P2p;->mergeFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$P2p;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 727
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$P2p;->traceId:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 728
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$P2p;->traceId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    .line 730
    :cond_0
    invoke-super {p0, p1}, Lixd;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 731
    return-void
.end method
