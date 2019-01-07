.class Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$4;
.super Ljava/lang/Object;
.source "ImageMagicianImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->fillImage2Cache(Landroid/graphics/Bitmap;[BILandroid/view/View;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$cacheBytes:[B

.field final synthetic val$displayMode:I

.field final synthetic val$size:I

.field final synthetic val$url2Key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;Landroid/graphics/Bitmap;Ljava/lang/String;I[BI)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    .prologue
    .line 2048
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$4;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$4;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$4;->val$url2Key:Ljava/lang/String;

    iput p4, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$4;->val$displayMode:I

    iput-object p5, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$4;->val$cacheBytes:[B

    iput p6, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$4;->val$size:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2052
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$4;->val$bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$4;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$000(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$4;->val$url2Key:Ljava/lang/String;

    iget v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$4;->val$displayMode:I

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->hasBitmap(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2053
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$4;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 2054
    .local v0, "config":Landroid/graphics/Bitmap$Config;
    if-nez v0, :cond_0

    .line 2055
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_3

    .line 2056
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2062
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$4;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$000(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$4;->val$url2Key:Ljava/lang/String;

    iget v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$4;->val$displayMode:I

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$4;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    .line 2063
    invoke-static {v6}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$1600(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$4;->val$bitmap:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 2062
    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->remandBitmap(Ljava/lang/String;ILandroid/graphics/drawable/BitmapDrawable;)V

    .line 2066
    .end local v0    # "config":Landroid/graphics/Bitmap$Config;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$4;->val$cacheBytes:[B

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$4;->val$size:I

    if-lez v2, :cond_2

    iget v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$4;->val$size:I

    const v3, 0x7d000

    if-ge v2, v3, :cond_2

    .line 2067
    invoke-static {}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getInstance()Lcom/alibaba/doraemon/image/memory/PoolFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getPooledByteBufferFactory()Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$4;->val$cacheBytes:[B

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;->newByteBuffer([B)Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    move-result-object v1

    .line 2068
    .local v1, "pooledByteBuffer":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$4;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$000(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$4;->val$url2Key:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->fillBytes2Cache(Ljava/lang/String;Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;J)V

    .line 2070
    .end local v1    # "pooledByteBuffer":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    :cond_2
    return-void

    .line 2058
    .restart local v0    # "config":Landroid/graphics/Bitmap$Config;
    :cond_3
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method
