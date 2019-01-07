.class public final Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;
.super Lixd;
.source "BodyV1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Subscribe"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;


# instance fields
.field public bizTag:Ljava/lang/String;

.field public ext:Ljava/lang/String;

.field public from:Ljava/lang/String;

.field public period:I

.field public role:I

.field public timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 570
    invoke-direct {p0}, Lixd;-><init>()V

    .line 571
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->clear()Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;

    .line 572
    return-void
.end method

.method public static emptyArray()[Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;
    .locals 2

    .prologue
    .line 541
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;

    if-nez v0, :cond_1

    .line 542
    sget-object v1, Lixb;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 544
    :try_start_0
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;

    if-nez v0, :cond_0

    .line 545
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;

    sput-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;

    .line 547
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    :cond_1
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;

    return-object v0

    .line 547
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;
    .locals 1
    .param p0, "input"    # Lixa;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 690
    new-instance v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;-><init>()V

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->mergeFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 684
    new-instance v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;-><init>()V

    invoke-static {v0, p0}, Lixd;->mergeFrom(Lixd;[B)Lixd;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 575
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->from:Ljava/lang/String;

    .line 576
    iput v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->role:I

    .line 577
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->bizTag:Ljava/lang/String;

    .line 578
    iput v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->period:I

    .line 579
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->ext:Ljava/lang/String;

    .line 580
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->timestamp:J

    .line 581
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->cachedSize:I

    .line 582
    return-object p0
.end method

.method protected final computeSerializedSize()I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 611
    invoke-super {p0}, Lixd;->computeSerializedSize()I

    move-result v0

    .line 612
    .local v0, "size":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->from:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 613
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->from:Ljava/lang/String;

    .line 614
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 616
    :cond_0
    iget v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->role:I

    if-eqz v1, :cond_1

    .line 617
    const/4 v1, 0x2

    iget v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->role:I

    .line 618
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 620
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->bizTag:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 621
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->bizTag:Ljava/lang/String;

    .line 622
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 624
    :cond_2
    iget v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->period:I

    if-eqz v1, :cond_3

    .line 625
    const/4 v1, 0x4

    iget v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->period:I

    .line 626
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 628
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->ext:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 629
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->ext:Ljava/lang/String;

    .line 630
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 632
    :cond_4
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->timestamp:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    .line 633
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->timestamp:J

    .line 634
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 636
    :cond_5
    return v0
.end method

.method public final mergeFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;
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
    .line 644
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lixa;->a()I

    move-result v0

    .line 645
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 649
    invoke-static {p1, v0}, Lixf;->a(Lixa;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 650
    :sswitch_0
    return-object p0

    .line 655
    :sswitch_1
    invoke-virtual {p1}, Lixa;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->from:Ljava/lang/String;

    goto :goto_0

    .line 1169
    :sswitch_2
    invoke-virtual {p1}, Lixa;->e()I

    move-result v1

    .line 659
    iput v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->role:I

    goto :goto_0

    .line 663
    :sswitch_3
    invoke-virtual {p1}, Lixa;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->bizTag:Ljava/lang/String;

    goto :goto_0

    .line 2169
    :sswitch_4
    invoke-virtual {p1}, Lixa;->e()I

    move-result v1

    .line 667
    iput v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->period:I

    goto :goto_0

    .line 671
    :sswitch_5
    invoke-virtual {p1}, Lixa;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->ext:Ljava/lang/String;

    goto :goto_0

    .line 3164
    :sswitch_6
    invoke-virtual {p1}, Lixa;->f()J

    move-result-wide v2

    .line 675
    iput-wide v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->timestamp:J

    goto :goto_0

    .line 645
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
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
    .line 535
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->mergeFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;

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
    .line 588
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->from:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 589
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->from:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    .line 591
    :cond_0
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->role:I

    if-eqz v0, :cond_1

    .line 592
    const/4 v0, 0x2

    iget v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->role:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 594
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->bizTag:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 595
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->bizTag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    .line 597
    :cond_2
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->period:I

    if-eqz v0, :cond_3

    .line 598
    const/4 v0, 0x4

    iget v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->period:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 600
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->ext:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 601
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->ext:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    .line 603
    :cond_4
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->timestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 604
    const/4 v0, 0x6

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Subscribe;->timestamp:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IJ)V

    .line 606
    :cond_5
    invoke-super {p0, p1}, Lixd;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 607
    return-void
.end method
