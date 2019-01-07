.class public Livz;
.super Ljava/lang/Object;
.source "SkiaImageRegionDecoder.java"

# interfaces
.implements Livx;


# instance fields
.field private a:Landroid/graphics/BitmapFactory$Options;

.field private b:I

.field private c:Lgzu;

.field private final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Livz;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "sRect"    # Landroid/graphics/Rect;
    .param p2, "sampleSize"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 72
    iget-object v1, p0, Livz;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 73
    :try_start_0
    iget-object v0, p0, Livz;->a:Landroid/graphics/BitmapFactory$Options;

    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 74
    invoke-virtual {p0}, Livz;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Livz;->c:Lgzu;

    iget-object v2, p0, Livz;->a:Landroid/graphics/BitmapFactory$Options;

    .line 2067
    invoke-virtual {v0, p1, v2}, Lgzu;->a(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 74
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Landroid/net/Uri;)Landroid/graphics/Point;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "uriString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "The param uri is invalid."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 46
    :cond_0
    invoke-static {v2}, Lhcs;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1107
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1108
    new-instance v1, Livz$1;

    invoke-direct {v1, p0, v3, v2}, Livz$1;-><init>(Livz;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 53
    .local v1, "stream":Ljava/io/InputStream;
    :goto_0
    if-nez v1, :cond_2

    .line 54
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "The ImageInputStream doesn\'t exist for the key "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 49
    .end local v1    # "stream":Ljava/io/InputStream;
    :cond_1
    const-string/jumbo v3, "IMAGE"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 51
    .local v0, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/image/ImageMagician;->getImageCache(Ljava/lang/String;)Lcom/alibaba/doraemon/image/ImageInputStream;

    move-result-object v1

    .restart local v1    # "stream":Ljava/io/InputStream;
    goto :goto_0

    .line 58
    .end local v0    # "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    :cond_2
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/InputStream;->mark(I)V

    .line 59
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v3

    int-to-long v4, v3

    invoke-static {v1, v4, v5}, Lhcr;->a(Ljava/io/InputStream;J)I

    move-result v3

    iput v3, p0, Livz;->b:I

    .line 60
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    .line 63
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v3, p0, Livz;->a:Landroid/graphics/BitmapFactory$Options;

    .line 66
    invoke-static {v1}, Lgzu;->a(Ljava/io/InputStream;)Lgzu;

    move-result-object v3

    iput-object v3, p0, Livz;->c:Lgzu;

    .line 67
    new-instance v3, Landroid/graphics/Point;

    iget-object v4, p0, Livz;->c:Lgzu;

    .line 1121
    iget-object v4, v4, Lgzu;->a:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v4}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v4

    .line 67
    iget-object v5, p0, Livz;->c:Lgzu;

    .line 1126
    iget-object v5, v5, Lgzu;->a:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v5}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v5

    .line 67
    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    return-object v3
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 91
    iget-object v0, p0, Livz;->c:Lgzu;

    if-eqz v0, :cond_0

    .line 92
    invoke-static {p1}, Lgzu;->a(Landroid/graphics/Bitmap;)V

    .line 94
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Livz;->c:Lgzu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Livz;->c:Lgzu;

    .line 2134
    iget-object v0, v0, Lgzu;->a:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    move-result v0

    .line 80
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    iput v0, p0, Livz;->b:I

    .line 86
    iget-object v0, p0, Livz;->c:Lgzu;

    .line 3130
    iget-object v0, v0, Lgzu;->a:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 87
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Livz;->b:I

    return v0
.end method
