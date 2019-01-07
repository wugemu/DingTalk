.class public final Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Count;
.super Lixd;
.source "BodyV1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Count"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Count;


# instance fields
.field public expression:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Lixd;-><init>()V

    .line 201
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Count;->clear()Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Count;

    .line 202
    return-void
.end method

.method public static emptyArray()[Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Count;
    .locals 2

    .prologue
    .line 186
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Count;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Count;

    if-nez v0, :cond_1

    .line 187
    sget-object v1, Lixb;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 189
    :try_start_0
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Count;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Count;

    if-nez v0, :cond_0

    .line 190
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Count;

    sput-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Count;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Count;

    .line 192
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :cond_1
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Count;->_emptyArray:[Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Count;

    return-object v0

    .line 192
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Count;
    .locals 1
    .param p0, "input"    # Lixa;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    new-instance v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Count;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Count;-><init>()V

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Count;->mergeFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Count;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Count;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 267
    new-instance v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Count;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Count;-><init>()V

    invoke-static {v0, p0}, Lixd;->mergeFrom(Lixd;[B)Lixd;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Count;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Count;
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Count;->expression:Ljava/util/Map;

    .line 206
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Count;->cachedSize:I

    .line 207
    return-object p0
.end method

.method protected final computeSerializedSize()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 224
    invoke-super {p0}, Lixd;->computeSerializedSize()I

    move-result v0

    .line 225
    .local v0, "size":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Count;->expression:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Count;->expression:Ljava/util/Map;

    const/16 v2, 0x9

    invoke-static {v1, v3, v2, v3}, Lixb;->a(Ljava/util/Map;III)I

    move-result v1

    add-int/2addr v0, v1

    .line 231
    :cond_0
    return v0
.end method

.method public final mergeFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Count;
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
    .line 239
    invoke-static {}, Lixc;->a()Lixc$b;

    move-result-object v2

    .line 241
    .local v2, "mapFactory":Lixc$b;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lixa;->a()I

    move-result v8

    .line 242
    .local v8, "tag":I
    sparse-switch v8, :sswitch_data_0

    .line 246
    invoke-static {p1, v8}, Lixf;->a(Lixa;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    :sswitch_0
    return-object p0

    .line 252
    :sswitch_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Count;->expression:Ljava/util/Map;

    const/16 v3, 0x9

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/16 v7, 0x11

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lixb;->a(Lixa;Ljava/util/Map;Lixc$b;IILjava/lang/Object;II)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Count;->expression:Ljava/util/Map;

    goto :goto_0

    .line 242
    nop

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
    .line 180
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Count;->mergeFrom(Lixa;)Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Count;

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
    const/4 v2, 0x1

    .line 213
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Count;->expression:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Count;->expression:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {p1, v0, v2, v1, v2}, Lixb;->a(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;Ljava/util/Map;III)V

    .line 219
    :cond_0
    invoke-super {p0, p1}, Lixd;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 220
    return-void
.end method
