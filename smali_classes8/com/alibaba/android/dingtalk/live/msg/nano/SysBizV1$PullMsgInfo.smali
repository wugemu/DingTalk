.class public final Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;
.super Lixd;
.source "SysBizV1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PullMsgInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;


# instance fields
.field public offset:J

.field public period:I

.field public pullMsg:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;

.field public role:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 855
    invoke-direct {p0}, Lixd;-><init>()V

    .line 856
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;->clear()Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;

    .line 857
    return-void
.end method

.method public static emptyArray()[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;
    .locals 2

    .prologue
    .line 832
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;

    if-nez v0, :cond_1

    .line 833
    sget-object v1, Lixb;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 835
    :try_start_0
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;

    if-nez v0, :cond_0

    .line 836
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;

    sput-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;

    .line 838
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 840
    :cond_1
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;

    return-object v0

    .line 838
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;
    .locals 1
    .param p0, "input"    # Lixa;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 977
    new-instance v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;->mergeFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 971
    new-instance v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;-><init>()V

    invoke-static {v0, p0}, Lixd;->mergeFrom(Lixd;[B)Lixd;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 860
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;->offset:J

    .line 861
    iput v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;->role:I

    .line 862
    iput v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;->period:I

    .line 863
    invoke-static {}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;->emptyArray()[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;->pullMsg:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;

    .line 864
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;->cachedSize:I

    .line 865
    return-object p0
.end method

.method protected final computeSerializedSize()I
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 893
    invoke-super {p0}, Lixd;->computeSerializedSize()I

    move-result v2

    .line 894
    .local v2, "size":I
    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;->offset:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 895
    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;->offset:J

    .line 896
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 898
    :cond_0
    iget v3, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;->role:I

    if-eqz v3, :cond_1

    .line 899
    const/4 v3, 0x2

    iget v4, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;->role:I

    .line 900
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 902
    :cond_1
    iget v3, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;->period:I

    if-eqz v3, :cond_2

    .line 903
    const/4 v3, 0x3

    iget v4, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;->period:I

    .line 904
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 906
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;->pullMsg:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;->pullMsg:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;

    array-length v3, v3

    if-lez v3, :cond_4

    .line 907
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;->pullMsg:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 908
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;->pullMsg:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;

    aget-object v0, v3, v1

    .line 909
    .local v0, "element":Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;
    if-eqz v0, :cond_3

    .line 910
    const/4 v3, 0x4

    .line 911
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILixd;)I

    move-result v3

    add-int/2addr v2, v3

    .line 907
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 915
    .end local v0    # "element":Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;
    .end local v1    # "i":I
    :cond_4
    return v2
.end method

.method public final mergeFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;
    .locals 8
    .param p1, "input"    # Lixa;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 923
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lixa;->a()I

    move-result v3

    .line 924
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 928
    invoke-static {p1, v3}, Lixf;->a(Lixa;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 929
    :sswitch_0
    return-object p0

    .line 1164
    :sswitch_1
    invoke-virtual {p1}, Lixa;->f()J

    move-result-wide v6

    .line 934
    iput-wide v6, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;->offset:J

    goto :goto_0

    .line 1169
    :sswitch_2
    invoke-virtual {p1}, Lixa;->e()I

    move-result v5

    .line 938
    iput v5, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;->role:I

    goto :goto_0

    .line 2169
    :sswitch_3
    invoke-virtual {p1}, Lixa;->e()I

    move-result v5

    .line 942
    iput v5, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;->period:I

    goto :goto_0

    .line 946
    :sswitch_4
    const/16 v5, 0x22

    .line 947
    invoke-static {p1, v5}, Lixf;->b(Lixa;I)I

    move-result v0

    .line 948
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;->pullMsg:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;

    if-nez v5, :cond_2

    move v1, v4

    .line 949
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;

    .line 951
    .local v2, "newArray":[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;
    if-eqz v1, :cond_1

    .line 952
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;->pullMsg:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 954
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 955
    new-instance v5, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;-><init>()V

    aput-object v5, v2, v1

    .line 956
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lixa;->a(Lixd;)V

    .line 957
    invoke-virtual {p1}, Lixa;->a()I

    .line 954
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 948
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;
    :cond_2
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;->pullMsg:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;

    array-length v1, v5

    goto :goto_1

    .line 960
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;
    :cond_3
    new-instance v5, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;-><init>()V

    aput-object v5, v2, v1

    .line 961
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lixa;->a(Lixd;)V

    .line 962
    iput-object v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;->pullMsg:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;

    goto :goto_0

    .line 924
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 727
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;->mergeFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 871
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;->offset:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 872
    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;->offset:J

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IJ)V

    .line 874
    :cond_0
    iget v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;->role:I

    if-eqz v2, :cond_1

    .line 875
    const/4 v2, 0x2

    iget v3, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;->role:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 877
    :cond_1
    iget v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;->period:I

    if-eqz v2, :cond_2

    .line 878
    const/4 v2, 0x3

    iget v3, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;->period:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 880
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;->pullMsg:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;->pullMsg:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 881
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;->pullMsg:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 882
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo;->pullMsg:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;

    aget-object v0, v2, v1

    .line 883
    .local v0, "element":Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;
    if-eqz v0, :cond_3

    .line 884
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILixd;)V

    .line 881
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 888
    .end local v0    # "element":Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$PullMsgInfo$PullMsg;
    .end local v1    # "i":I
    :cond_4
    invoke-super {p0, p1}, Lixd;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 889
    return-void
.end method
