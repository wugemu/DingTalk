.class Lcom/alipay/mobile/nebula/io/ByteArrayPool$ConcurrentLinkedList;
.super Ljava/util/LinkedList;
.source "ByteArrayPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/io/ByteArrayPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConcurrentLinkedList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedList",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebula/io/ByteArrayPool;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/nebula/io/ByteArrayPool;)V
    .locals 0

    .prologue
    .line 197
    .local p0, "this":Lcom/alipay/mobile/nebula/io/ByteArrayPool$ConcurrentLinkedList;, "Lcom/alipay/mobile/nebula/io/ByteArrayPool$ConcurrentLinkedList<TT;>;"
    iput-object p1, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool$ConcurrentLinkedList;->this$0:Lcom/alipay/mobile/nebula/io/ByteArrayPool;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebula/io/ByteArrayPool;Lcom/alipay/mobile/nebula/io/ByteArrayPool$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/nebula/io/ByteArrayPool;
    .param p2, "x1"    # Lcom/alipay/mobile/nebula/io/ByteArrayPool$1;

    .prologue
    .line 197
    .local p0, "this":Lcom/alipay/mobile/nebula/io/ByteArrayPool$ConcurrentLinkedList;, "Lcom/alipay/mobile/nebula/io/ByteArrayPool$ConcurrentLinkedList<TT;>;"
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebula/io/ByteArrayPool$ConcurrentLinkedList;-><init>(Lcom/alipay/mobile/nebula/io/ByteArrayPool;)V

    return-void
.end method


# virtual methods
.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "this":Lcom/alipay/mobile/nebula/io/ByteArrayPool$ConcurrentLinkedList;, "Lcom/alipay/mobile/nebula/io/ByteArrayPool$ConcurrentLinkedList<TT;>;"
    .local p1, "o":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 209
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "this":Lcom/alipay/mobile/nebula/io/ByteArrayPool$ConcurrentLinkedList;, "Lcom/alipay/mobile/nebula/io/ByteArrayPool$ConcurrentLinkedList<TT;>;"
    monitor-enter p0

    .line 202
    :try_start_0
    invoke-super {p0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
