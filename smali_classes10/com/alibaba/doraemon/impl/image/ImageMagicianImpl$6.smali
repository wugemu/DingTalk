.class Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$6;
.super Ljava/lang/Object;
.source "ImageMagicianImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->fillImage2Cache(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

.field final synthetic val$cacheBytes:[B

.field final synthetic val$newUrlKey:Ljava/lang/String;

.field final synthetic val$oldUrlKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    .prologue
    .line 2151
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$6;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$6;->val$newUrlKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$6;->val$oldUrlKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$6;->val$cacheBytes:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2154
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$6;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$000(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$6;->val$newUrlKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$6;->val$oldUrlKey:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->cloneBitmap(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2156
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$6;->val$cacheBytes:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$6;->val$cacheBytes:[B

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$6;->val$cacheBytes:[B

    array-length v1, v1

    const v2, 0x7d000

    if-ge v1, v2, :cond_0

    .line 2157
    invoke-static {}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getInstance()Lcom/alibaba/doraemon/image/memory/PoolFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getPooledByteBufferFactory()Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$6;->val$cacheBytes:[B

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;->newByteBuffer([B)Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    move-result-object v0

    .line 2158
    .local v0, "pooledByteBuffer":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$6;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$000(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$6;->val$newUrlKey:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v5}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->fillBytes2Cache(Ljava/lang/String;Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;J)V

    .line 2160
    .end local v0    # "pooledByteBuffer":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    :cond_0
    return-void
.end method
