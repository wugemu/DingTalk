.class public final Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser;
.super Lixd;
.source "SysBizV1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TopicUser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser$User;
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser;


# instance fields
.field public user:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser$User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Lixd;-><init>()V

    .line 143
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser;->clear()Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser;

    .line 144
    return-void
.end method

.method public static emptyArray()[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser;
    .locals 2

    .prologue
    .line 128
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser;

    if-nez v0, :cond_1

    .line 129
    sget-object v1, Lixb;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 131
    :try_start_0
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser;

    if-nez v0, :cond_0

    .line 132
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser;

    sput-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser;

    .line 134
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :cond_1
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser;

    return-object v0

    .line 134
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser;
    .locals 1
    .param p0, "input"    # Lixa;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    new-instance v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser;-><init>()V

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser;->mergeFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 222
    new-instance v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser;-><init>()V

    invoke-static {v0, p0}, Lixd;->mergeFrom(Lixd;[B)Lixd;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser;
    .locals 1

    .prologue
    .line 147
    invoke-static {}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser$User;->emptyArray()[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser$User;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser;->user:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser$User;

    .line 148
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser;->cachedSize:I

    .line 149
    return-object p0
.end method

.method protected final computeSerializedSize()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 168
    invoke-super {p0}, Lixd;->computeSerializedSize()I

    move-result v2

    .line 169
    .local v2, "size":I
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser;->user:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser$User;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser;->user:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser$User;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 170
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser;->user:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser$User;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 171
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser;->user:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser$User;

    aget-object v0, v3, v1

    .line 172
    .local v0, "element":Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser$User;
    if-eqz v0, :cond_0

    .line 173
    const/4 v3, 0x1

    .line 174
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILixd;)I

    move-result v3

    add-int/2addr v2, v3

    .line 170
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    .end local v0    # "element":Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser$User;
    .end local v1    # "i":I
    :cond_1
    return v2
.end method

.method public final mergeFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser;
    .locals 6
    .param p1, "input"    # Lixa;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 186
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lixa;->a()I

    move-result v3

    .line 187
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 191
    invoke-static {p1, v3}, Lixf;->a(Lixa;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 192
    :sswitch_0
    return-object p0

    .line 197
    :sswitch_1
    const/16 v5, 0xa

    .line 198
    invoke-static {p1, v5}, Lixf;->b(Lixa;I)I

    move-result v0

    .line 199
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser;->user:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser$User;

    if-nez v5, :cond_2

    move v1, v4

    .line 200
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser$User;

    .line 202
    .local v2, "newArray":[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser$User;
    if-eqz v1, :cond_1

    .line 203
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser;->user:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser$User;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 206
    new-instance v5, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser$User;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser$User;-><init>()V

    aput-object v5, v2, v1

    .line 207
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lixa;->a(Lixd;)V

    .line 208
    invoke-virtual {p1}, Lixa;->a()I

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 199
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser$User;
    :cond_2
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser;->user:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser$User;

    array-length v1, v5

    goto :goto_1

    .line 211
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser$User;
    :cond_3
    new-instance v5, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser$User;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser$User;-><init>()V

    aput-object v5, v2, v1

    .line 212
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lixa;->a(Lixd;)V

    .line 213
    iput-object v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser;->user:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser$User;

    goto :goto_0

    .line 187
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
    .line 8
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser;->mergeFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser;

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
    .line 155
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser;->user:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser$User;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser;->user:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser$User;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 156
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser;->user:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser$User;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 157
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser;->user:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser$User;

    aget-object v0, v2, v1

    .line 158
    .local v0, "element":Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser$User;
    if-eqz v0, :cond_0

    .line 159
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILixd;)V

    .line 156
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    .end local v0    # "element":Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicUser$User;
    .end local v1    # "i":I
    :cond_1
    invoke-super {p0, p1}, Lixd;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 164
    return-void
.end method
