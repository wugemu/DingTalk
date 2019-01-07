.class public final Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;
.super Lixd;
.source "BodyV1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Monitor"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;


# instance fields
.field public data:Ljava/lang/String;

.field public sdkVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 945
    invoke-direct {p0}, Lixd;-><init>()V

    .line 946
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;->clear()Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;

    .line 947
    return-void
.end method

.method public static emptyArray()[Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;
    .locals 2

    .prologue
    .line 928
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;

    if-nez v0, :cond_1

    .line 929
    sget-object v1, Lixb;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 931
    :try_start_0
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;

    if-nez v0, :cond_0

    .line 932
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;

    sput-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;

    .line 934
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 936
    :cond_1
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;

    return-object v0

    .line 934
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;
    .locals 1
    .param p0, "input"    # Lixa;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1017
    new-instance v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;-><init>()V

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;->mergeFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1011
    new-instance v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;-><init>()V

    invoke-static {v0, p0}, Lixd;->mergeFrom(Lixd;[B)Lixd;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;
    .locals 1

    .prologue
    .line 950
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;->sdkVersion:Ljava/lang/String;

    .line 951
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;->data:Ljava/lang/String;

    .line 952
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;->cachedSize:I

    .line 953
    return-object p0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 970
    invoke-super {p0}, Lixd;->computeSerializedSize()I

    move-result v0

    .line 971
    .local v0, "size":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;->sdkVersion:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 972
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;->sdkVersion:Ljava/lang/String;

    .line 973
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 975
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;->data:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 976
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;->data:Ljava/lang/String;

    .line 977
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 979
    :cond_1
    return v0
.end method

.method public final mergeFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;
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
    .line 987
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lixa;->a()I

    move-result v0

    .line 988
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 992
    invoke-static {p1, v0}, Lixf;->a(Lixa;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 993
    :sswitch_0
    return-object p0

    .line 998
    :sswitch_1
    invoke-virtual {p1}, Lixa;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;->sdkVersion:Ljava/lang/String;

    goto :goto_0

    .line 1002
    :sswitch_2
    invoke-virtual {p1}, Lixa;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;->data:Ljava/lang/String;

    goto :goto_0

    .line 988
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 922
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;->mergeFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;

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
    .line 959
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;->sdkVersion:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 960
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;->sdkVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    .line 962
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;->data:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 963
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;->data:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    .line 965
    :cond_1
    invoke-super {p0, p1}, Lixd;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 966
    return-void
.end method
