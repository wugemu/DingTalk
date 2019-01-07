.class public final Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;
.super Lixd;
.source "BodyV1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Command"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;


# instance fields
.field public periodTime:I

.field public permission:I

.field public subType:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 306
    invoke-direct {p0}, Lixd;-><init>()V

    .line 307
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;->clear()Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;

    .line 308
    return-void
.end method

.method public static emptyArray()[Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;
    .locals 2

    .prologue
    .line 283
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;

    if-nez v0, :cond_1

    .line 284
    sget-object v1, Lixb;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 286
    :try_start_0
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;

    if-nez v0, :cond_0

    .line 287
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;

    sput-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;

    .line 289
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    :cond_1
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;

    return-object v0

    .line 289
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;
    .locals 1
    .param p0, "input"    # Lixa;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    new-instance v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;-><init>()V

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;->mergeFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 396
    new-instance v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;-><init>()V

    invoke-static {v0, p0}, Lixd;->mergeFrom(Lixd;[B)Lixd;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 311
    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;->permission:I

    .line 312
    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;->periodTime:I

    .line 313
    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;->type:I

    .line 314
    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;->subType:I

    .line 315
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;->cachedSize:I

    .line 316
    return-object p0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 339
    invoke-super {p0}, Lixd;->computeSerializedSize()I

    move-result v0

    .line 340
    .local v0, "size":I
    iget v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;->permission:I

    if-eqz v1, :cond_0

    .line 341
    const/4 v1, 0x2

    iget v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;->permission:I

    .line 342
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 344
    :cond_0
    iget v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;->periodTime:I

    if-eqz v1, :cond_1

    .line 345
    const/4 v1, 0x3

    iget v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;->periodTime:I

    .line 346
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 348
    :cond_1
    iget v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;->type:I

    if-eqz v1, :cond_2

    .line 349
    const/4 v1, 0x4

    iget v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;->type:I

    .line 350
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 352
    :cond_2
    iget v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;->subType:I

    if-eqz v1, :cond_3

    .line 353
    const/4 v1, 0x5

    iget v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;->subType:I

    .line 354
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 356
    :cond_3
    return v0
.end method

.method public final mergeFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;
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
    .line 364
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lixa;->a()I

    move-result v0

    .line 365
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 369
    invoke-static {p1, v0}, Lixf;->a(Lixa;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 370
    :sswitch_0
    return-object p0

    .line 1169
    :sswitch_1
    invoke-virtual {p1}, Lixa;->e()I

    move-result v1

    .line 375
    iput v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;->permission:I

    goto :goto_0

    .line 2169
    :sswitch_2
    invoke-virtual {p1}, Lixa;->e()I

    move-result v1

    .line 379
    iput v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;->periodTime:I

    goto :goto_0

    .line 3169
    :sswitch_3
    invoke-virtual {p1}, Lixa;->e()I

    move-result v1

    .line 383
    iput v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;->type:I

    goto :goto_0

    .line 4169
    :sswitch_4
    invoke-virtual {p1}, Lixa;->e()I

    move-result v1

    .line 387
    iput v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;->subType:I

    goto :goto_0

    .line 365
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10 -> :sswitch_1
        0x18 -> :sswitch_2
        0x20 -> :sswitch_3
        0x28 -> :sswitch_4
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
    .line 277
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;->mergeFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;

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
    .line 322
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;->permission:I

    if-eqz v0, :cond_0

    .line 323
    const/4 v0, 0x2

    iget v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;->permission:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 325
    :cond_0
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;->periodTime:I

    if-eqz v0, :cond_1

    .line 326
    const/4 v0, 0x3

    iget v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;->periodTime:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 328
    :cond_1
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;->type:I

    if-eqz v0, :cond_2

    .line 329
    const/4 v0, 0x4

    iget v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 331
    :cond_2
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;->subType:I

    if-eqz v0, :cond_3

    .line 332
    const/4 v0, 0x5

    iget v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;->subType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 334
    :cond_3
    invoke-super {p0, p1}, Lixd;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 335
    return-void
.end method
