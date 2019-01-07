.class public final Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;
.super Lixd;
.source "SysBizV1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JoinNotify"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;


# instance fields
.field public addUsers:Ljava/util/Map;
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

.field public onlineCount:I

.field public pageViewCount:J

.field public totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 614
    invoke-direct {p0}, Lixd;-><init>()V

    .line 615
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->clear()Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;

    .line 616
    return-void
.end method

.method public static emptyArray()[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;
    .locals 2

    .prologue
    .line 591
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;

    if-nez v0, :cond_1

    .line 592
    sget-object v1, Lixb;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 594
    :try_start_0
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;

    if-nez v0, :cond_0

    .line 595
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;

    sput-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;

    .line 597
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    :cond_1
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;

    return-object v0

    .line 597
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;
    .locals 1
    .param p0, "input"    # Lixa;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 723
    new-instance v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;-><init>()V

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->mergeFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 717
    new-instance v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;-><init>()V

    invoke-static {v0, p0}, Lixd;->mergeFrom(Lixd;[B)Lixd;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 619
    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->totalCount:I

    .line 620
    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->onlineCount:I

    .line 621
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->addUsers:Ljava/util/Map;

    .line 622
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->pageViewCount:J

    .line 623
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->cachedSize:I

    .line 624
    return-object p0
.end method

.method protected final computeSerializedSize()I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v3, 0x9

    .line 650
    invoke-super {p0}, Lixd;->computeSerializedSize()I

    move-result v0

    .line 651
    .local v0, "size":I
    iget v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->totalCount:I

    if-eqz v1, :cond_0

    .line 652
    const/4 v1, 0x1

    iget v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->totalCount:I

    .line 653
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 655
    :cond_0
    iget v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->onlineCount:I

    if-eqz v1, :cond_1

    .line 656
    const/4 v1, 0x2

    iget v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->onlineCount:I

    .line 657
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 659
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->addUsers:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 660
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->addUsers:Ljava/util/Map;

    const/4 v2, 0x3

    invoke-static {v1, v2, v3, v3}, Lixb;->a(Ljava/util/Map;III)I

    move-result v1

    add-int/2addr v0, v1

    .line 665
    :cond_2
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->pageViewCount:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 666
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->pageViewCount:J

    .line 667
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 669
    :cond_3
    return v0
.end method

.method public final mergeFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;
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

    .line 677
    invoke-static {}, Lixc;->a()Lixc$b;

    move-result-object v2

    .line 679
    .local v2, "mapFactory":Lixc$b;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lixa;->a()I

    move-result v8

    .line 680
    .local v8, "tag":I
    sparse-switch v8, :sswitch_data_0

    .line 684
    invoke-static {p1, v8}, Lixf;->a(Lixa;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 685
    :sswitch_0
    return-object p0

    .line 1169
    :sswitch_1
    invoke-virtual {p1}, Lixa;->e()I

    move-result v0

    .line 690
    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->totalCount:I

    goto :goto_0

    .line 2169
    :sswitch_2
    invoke-virtual {p1}, Lixa;->e()I

    move-result v0

    .line 694
    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->onlineCount:I

    goto :goto_0

    .line 698
    :sswitch_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->addUsers:Ljava/util/Map;

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/16 v7, 0x12

    move-object v0, p1

    move v4, v3

    invoke-static/range {v0 .. v7}, Lixb;->a(Lixa;Ljava/util/Map;Lixc$b;IILjava/lang/Object;II)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->addUsers:Ljava/util/Map;

    goto :goto_0

    .line 3164
    :sswitch_4
    invoke-virtual {p1}, Lixa;->f()J

    move-result-wide v0

    .line 708
    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->pageViewCount:J

    goto :goto_0

    .line 680
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
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
    .line 585
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->mergeFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;

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
    const/16 v2, 0x9

    .line 630
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->totalCount:I

    if-eqz v0, :cond_0

    .line 631
    const/4 v0, 0x1

    iget v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->totalCount:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 633
    :cond_0
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->onlineCount:I

    if-eqz v0, :cond_1

    .line 634
    const/4 v0, 0x2

    iget v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->onlineCount:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 636
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->addUsers:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 637
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->addUsers:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {p1, v0, v1, v2, v2}, Lixb;->a(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;Ljava/util/Map;III)V

    .line 642
    :cond_2
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->pageViewCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 643
    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->pageViewCount:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IJ)V

    .line 645
    :cond_3
    invoke-super {p0, p1}, Lixd;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 646
    return-void
.end method
