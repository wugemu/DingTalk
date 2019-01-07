.class public final Lgzx;
.super Lgzy;
.source "HoneycombBitmapFactory.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final b:Lgzv;

.field private final c:Lhcf;


# direct methods
.method public constructor <init>(Lgzv;Lhcf;)V
    .locals 0
    .param p1, "jpegGenerator"    # Lgzv;
    .param p2, "purgeableDecoder"    # Lhcf;

    .prologue
    .line 38
    invoke-direct {p0}, Lgzy;-><init>()V

    .line 39
    iput-object p1, p0, Lgzx;->b:Lgzv;

    .line 40
    iput-object p2, p0, Lgzx;->c:Lhcf;

    .line 41
    return-void
.end method


# virtual methods
.method public final a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "bitmapConfig"    # Landroid/graphics/Bitmap$Config;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 59
    iget-object v4, p0, Lgzx;->b:Lgzv;

    int-to-short v5, p1

    int-to-short v6, p2

    invoke-virtual {v4, v5, v6}, Lgzv;->a(SS)Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    move-result-object v2

    .line 61
    .local v2, "jpgBuf":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    invoke-interface {v2}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->size()I

    move-result v4

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v1

    .line 63
    .local v1, "bytes":[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v2}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->size()I

    move-result v6

    invoke-interface {v2, v4, v1, v5, v6}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->read(I[BII)V

    .line 64
    new-instance v3, Lgzt$a;

    invoke-direct {v3}, Lgzt$a;-><init>()V

    .line 65
    .local v3, "options":Lgzt$a;
    iput-object p3, v3, Lgzt$a;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 66
    iget-object v4, p0, Lgzx;->c:Lhcf;

    invoke-interface {v2}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->size()I

    move-result v5

    invoke-virtual {v4, v1, v5, v3}, Lhcf;->a([BILgzt$a;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 68
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 69
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 70
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne p3, v4, :cond_0

    .line 71
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_0
    invoke-interface {v2}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->close()V

    .line 78
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 81
    return-object v0

    .line 77
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "options":Lgzt$a;
    :catchall_0
    move-exception v4

    invoke-interface {v2}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->close()V

    .line 78
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    throw v4
.end method
