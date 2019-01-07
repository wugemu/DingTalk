.class Lcom/alipay/mobile/nebula/io/ByteArrayPool$BytePool;
.super Lfq;
.source "ByteArrayPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/io/ByteArrayPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BytePool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfq",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/util/LinkedList",
        "<[B>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebula/io/ByteArrayPool;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/nebula/io/ByteArrayPool;I)V
    .locals 0
    .param p2, "maxSize"    # I

    .prologue
    .line 175
    iput-object p1, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool$BytePool;->this$0:Lcom/alipay/mobile/nebula/io/ByteArrayPool;

    .line 176
    invoke-direct {p0, p2}, Lfq;-><init>(I)V

    .line 177
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebula/io/ByteArrayPool;ILcom/alipay/mobile/nebula/io/ByteArrayPool$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/nebula/io/ByteArrayPool;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/alipay/mobile/nebula/io/ByteArrayPool$1;

    .prologue
    .line 173
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebula/io/ByteArrayPool$BytePool;-><init>(Lcom/alipay/mobile/nebula/io/ByteArrayPool;I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Integer;Ljava/util/LinkedList;Ljava/util/LinkedList;)V
    .locals 5
    .param p1, "evicted"    # Z
    .param p2, "key"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Integer;",
            "Ljava/util/LinkedList",
            "<[B>;",
            "Ljava/util/LinkedList",
            "<[B>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 184
    .local p3, "oldValue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<[B>;"
    .local p4, "newValue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<[B>;"
    iget-object v0, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool$BytePool;->this$0:Lcom/alipay/mobile/nebula/io/ByteArrayPool;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->access$200(Lcom/alipay/mobile/nebula/io/ByteArrayPool;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 186
    if-nez p1, :cond_0

    if-eqz p4, :cond_1

    .line 187
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool$BytePool;->this$0:Lcom/alipay/mobile/nebula/io/ByteArrayPool;

    iget-object v2, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool$BytePool;->this$0:Lcom/alipay/mobile/nebula/io/ByteArrayPool;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->access$300(Lcom/alipay/mobile/nebula/io/ByteArrayPool;)I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result v4

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->access$302(Lcom/alipay/mobile/nebula/io/ByteArrayPool;I)I

    .line 189
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 173
    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/util/LinkedList;

    check-cast p4, Ljava/util/LinkedList;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebula/io/ByteArrayPool$BytePool;->entryRemoved(ZLjava/lang/Integer;Ljava/util/LinkedList;Ljava/util/LinkedList;)V

    return-void
.end method
