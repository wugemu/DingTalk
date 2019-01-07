.class public final Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;
.super Lixd;
.source "BodyV1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Msg"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;


# instance fields
.field public from:Ljava/lang/String;

.field public sendFullTags:Z

.field public sendTags:[Ljava/lang/String;

.field public timestamp:J

.field public to:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lixd;-><init>()V

    .line 41
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->clear()Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;

    .line 42
    return-void
.end method

.method public static emptyArray()[Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lixb;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;

    sput-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;
    .locals 1
    .param p0, "input"    # Lixa;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    new-instance v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;-><init>()V

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->mergeFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 170
    new-instance v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;-><init>()V

    invoke-static {v0, p0}, Lixd;->mergeFrom(Lixd;[B)Lixd;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 45
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->from:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->to:Ljava/lang/String;

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->timestamp:J

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->sendFullTags:Z

    .line 49
    sget-object v0, Lixf;->f:[Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->sendTags:[Ljava/lang/String;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->cachedSize:I

    .line 51
    return-object p0
.end method

.method protected final computeSerializedSize()I
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 82
    invoke-super {p0}, Lixd;->computeSerializedSize()I

    move-result v4

    .line 83
    .local v4, "size":I
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->from:Ljava/lang/String;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 84
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->from:Ljava/lang/String;

    .line 85
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 87
    :cond_0
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->to:Ljava/lang/String;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 88
    const/4 v5, 0x3

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->to:Ljava/lang/String;

    .line 89
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 91
    :cond_1
    iget-wide v6, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->timestamp:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    .line 92
    const/4 v5, 0x4

    iget-wide v6, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->timestamp:J

    .line 93
    invoke-static {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 95
    :cond_2
    iget-boolean v5, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->sendFullTags:Z

    if-eqz v5, :cond_3

    .line 96
    const/4 v5, 0x5

    iget-boolean v6, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->sendFullTags:Z

    .line 1621
    invoke-static {v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 97
    add-int/2addr v4, v5

    .line 99
    :cond_3
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->sendTags:[Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->sendTags:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_6

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 102
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->sendTags:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_5

    .line 103
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->sendTags:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 104
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 105
    add-int/lit8 v0, v0, 0x1

    .line 107
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 102
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 110
    .end local v2    # "element":Ljava/lang/String;
    :cond_5
    add-int/2addr v4, v1

    .line 111
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 113
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_6
    return v4
.end method

.method public final mergeFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;
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

    .line 121
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lixa;->a()I

    move-result v3

    .line 122
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 126
    invoke-static {p1, v3}, Lixf;->a(Lixa;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 127
    :sswitch_0
    return-object p0

    .line 132
    :sswitch_1
    invoke-virtual {p1}, Lixa;->c()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->from:Ljava/lang/String;

    goto :goto_0

    .line 136
    :sswitch_2
    invoke-virtual {p1}, Lixa;->c()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->to:Ljava/lang/String;

    goto :goto_0

    .line 2164
    :sswitch_3
    invoke-virtual {p1}, Lixa;->f()J

    move-result-wide v6

    .line 140
    iput-wide v6, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->timestamp:J

    goto :goto_0

    .line 144
    :sswitch_4
    invoke-virtual {p1}, Lixa;->b()Z

    move-result v5

    iput-boolean v5, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->sendFullTags:Z

    goto :goto_0

    .line 148
    :sswitch_5
    const/16 v5, 0x32

    .line 149
    invoke-static {p1, v5}, Lixf;->b(Lixa;I)I

    move-result v0

    .line 150
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->sendTags:[Ljava/lang/String;

    if-nez v5, :cond_2

    move v1, v4

    .line 151
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 152
    .local v2, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 153
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->sendTags:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 156
    invoke-virtual {p1}, Lixa;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 157
    invoke-virtual {p1}, Lixa;->a()I

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 150
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->sendTags:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_1

    .line 160
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lixa;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 161
    iput-object v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->sendTags:[Ljava/lang/String;

    goto :goto_0

    .line 122
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x1a -> :sswitch_2
        0x20 -> :sswitch_3
        0x28 -> :sswitch_4
        0x32 -> :sswitch_5
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
    .line 8
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->mergeFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;

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
    .line 57
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->from:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->from:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->to:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 61
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->to:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    .line 63
    :cond_1
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->timestamp:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 64
    const/4 v2, 0x4

    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->timestamp:J

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IJ)V

    .line 66
    :cond_2
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->sendFullTags:Z

    if-eqz v2, :cond_3

    .line 67
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->sendFullTags:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IZ)V

    .line 69
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->sendTags:[Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->sendTags:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 70
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->sendTags:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 71
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Msg;->sendTags:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 72
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 73
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    .line 70
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_5
    invoke-super {p0, p1}, Lixd;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 78
    return-void
.end method
