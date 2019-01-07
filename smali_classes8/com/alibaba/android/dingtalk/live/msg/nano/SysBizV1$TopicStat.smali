.class public final Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;
.super Lixd;
.source "SysBizV1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TopicStat"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;


# instance fields
.field public digNum:I

.field public msgNum:I

.field public onlineNum:I

.field public totalNum:I

.field public visitNum:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Lixd;-><init>()V

    .line 265
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;->clear()Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;

    .line 266
    return-void
.end method

.method public static emptyArray()[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;
    .locals 2

    .prologue
    .line 238
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;

    if-nez v0, :cond_1

    .line 239
    sget-object v1, Lixb;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 241
    :try_start_0
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;

    if-nez v0, :cond_0

    .line 242
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;

    sput-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;

    .line 244
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    :cond_1
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;

    return-object v0

    .line 244
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;
    .locals 1
    .param p0, "input"    # Lixa;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 372
    new-instance v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;-><init>()V

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;->mergeFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 366
    new-instance v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;-><init>()V

    invoke-static {v0, p0}, Lixd;->mergeFrom(Lixd;[B)Lixd;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 269
    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;->visitNum:I

    .line 270
    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;->onlineNum:I

    .line 271
    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;->totalNum:I

    .line 272
    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;->msgNum:I

    .line 273
    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;->digNum:I

    .line 274
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;->cachedSize:I

    .line 275
    return-object p0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 301
    invoke-super {p0}, Lixd;->computeSerializedSize()I

    move-result v0

    .line 302
    .local v0, "size":I
    iget v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;->visitNum:I

    if-eqz v1, :cond_0

    .line 303
    const/4 v1, 0x1

    iget v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;->visitNum:I

    .line 304
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 306
    :cond_0
    iget v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;->onlineNum:I

    if-eqz v1, :cond_1

    .line 307
    const/4 v1, 0x2

    iget v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;->onlineNum:I

    .line 308
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 310
    :cond_1
    iget v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;->totalNum:I

    if-eqz v1, :cond_2

    .line 311
    const/4 v1, 0x3

    iget v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;->totalNum:I

    .line 312
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 314
    :cond_2
    iget v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;->msgNum:I

    if-eqz v1, :cond_3

    .line 315
    const/4 v1, 0x4

    iget v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;->msgNum:I

    .line 316
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 318
    :cond_3
    iget v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;->digNum:I

    if-eqz v1, :cond_4

    .line 319
    const/4 v1, 0x5

    iget v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;->digNum:I

    .line 320
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 322
    :cond_4
    return v0
.end method

.method public final mergeFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;
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
    .line 330
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lixa;->a()I

    move-result v0

    .line 331
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 335
    invoke-static {p1, v0}, Lixf;->a(Lixa;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 336
    :sswitch_0
    return-object p0

    .line 1169
    :sswitch_1
    invoke-virtual {p1}, Lixa;->e()I

    move-result v1

    .line 341
    iput v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;->visitNum:I

    goto :goto_0

    .line 2169
    :sswitch_2
    invoke-virtual {p1}, Lixa;->e()I

    move-result v1

    .line 345
    iput v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;->onlineNum:I

    goto :goto_0

    .line 3169
    :sswitch_3
    invoke-virtual {p1}, Lixa;->e()I

    move-result v1

    .line 349
    iput v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;->totalNum:I

    goto :goto_0

    .line 4169
    :sswitch_4
    invoke-virtual {p1}, Lixa;->e()I

    move-result v1

    .line 353
    iput v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;->msgNum:I

    goto :goto_0

    .line 5169
    :sswitch_5
    invoke-virtual {p1}, Lixa;->e()I

    move-result v1

    .line 357
    iput v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;->digNum:I

    goto :goto_0

    .line 331
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
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
    .line 232
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;->mergeFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;

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
    .line 281
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;->visitNum:I

    if-eqz v0, :cond_0

    .line 282
    const/4 v0, 0x1

    iget v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;->visitNum:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 284
    :cond_0
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;->onlineNum:I

    if-eqz v0, :cond_1

    .line 285
    const/4 v0, 0x2

    iget v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;->onlineNum:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 287
    :cond_1
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;->totalNum:I

    if-eqz v0, :cond_2

    .line 288
    const/4 v0, 0x3

    iget v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;->totalNum:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 290
    :cond_2
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;->msgNum:I

    if-eqz v0, :cond_3

    .line 291
    const/4 v0, 0x4

    iget v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;->msgNum:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 293
    :cond_3
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;->digNum:I

    if-eqz v0, :cond_4

    .line 294
    const/4 v0, 0x5

    iget v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$TopicStat;->digNum:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 296
    :cond_4
    invoke-super {p0, p1}, Lixd;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 297
    return-void
.end method
