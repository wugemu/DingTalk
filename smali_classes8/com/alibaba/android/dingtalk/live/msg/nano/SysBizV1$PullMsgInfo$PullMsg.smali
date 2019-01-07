.class public final Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;
.super Lixd;
.source "SysBizV1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PullMsg"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;


# instance fields
.field public messages:[B

.field public offset:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 753
    invoke-direct {p0}, Lixd;-><init>()V

    .line 754
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;->clear()Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;

    .line 755
    return-void
.end method

.method public static emptyArray()[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;
    .locals 2

    .prologue
    .line 736
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;

    if-nez v0, :cond_1

    .line 737
    sget-object v1, Lixb;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 739
    :try_start_0
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;

    if-nez v0, :cond_0

    .line 740
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;

    sput-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;

    .line 742
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 744
    :cond_1
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;

    return-object v0

    .line 742
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;
    .locals 1
    .param p0, "input"    # Lixa;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 825
    new-instance v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;-><init>()V

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;->mergeFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 819
    new-instance v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;-><init>()V

    invoke-static {v0, p0}, Lixd;->mergeFrom(Lixd;[B)Lixd;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 758
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;->offset:J

    .line 759
    sget-object v0, Lixf;->h:[B

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;->messages:[B

    .line 760
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;->cachedSize:I

    .line 761
    return-object p0
.end method

.method protected final computeSerializedSize()I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 778
    invoke-super {p0}, Lixd;->computeSerializedSize()I

    move-result v0

    .line 779
    .local v0, "size":I
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;->offset:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 780
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;->offset:J

    .line 781
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 783
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;->messages:[B

    sget-object v2, Lixf;->h:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 784
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;->messages:[B

    .line 785
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 787
    :cond_1
    return v0
.end method

.method public final mergeFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;
    .locals 4
    .param p1, "input"    # Lixa;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 795
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lixa;->a()I

    move-result v0

    .line 796
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 800
    invoke-static {p1, v0}, Lixf;->a(Lixa;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 801
    :sswitch_0
    return-object p0

    .line 1164
    :sswitch_1
    invoke-virtual {p1}, Lixa;->f()J

    move-result-wide v2

    .line 806
    iput-wide v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;->offset:J

    goto :goto_0

    .line 810
    :sswitch_2
    invoke-virtual {p1}, Lixa;->d()[B

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;->messages:[B

    goto :goto_0

    .line 796
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 730
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;->mergeFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;

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
    .line 767
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;->offset:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 768
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;->offset:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IJ)V

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;->messages:[B

    sget-object v1, Lixf;->h:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 771
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;->messages:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I[B)V

    .line 773
    :cond_1
    invoke-super {p0, p1}, Lixd;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 774
    return-void
.end method
