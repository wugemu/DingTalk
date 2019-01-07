.class public final Lgzu;
.super Ljava/lang/Object;
.source "BitmapsRegionDecoder.java"

# interfaces
.implements Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroid/graphics/BitmapRegionDecoder;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iget-object v0, p0, Lgzu;->a:Landroid/graphics/BitmapRegionDecoder;

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    iput-object v0, p0, Lgzu;->a:Landroid/graphics/BitmapRegionDecoder;

    .line 59
    :cond_0
    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lgzu;
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lgzu;

    invoke-direct {v0, p0}, Lgzu;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static a(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 139
    if-eqz p0, :cond_0

    .line 140
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 142
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 71
    .line 1100
    iput-boolean v7, p2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1102
    :try_start_0
    invoke-static {}, Lgzo;->a()Lgzo;

    move-result-object v3

    invoke-virtual {v3}, Lgzo;->c()Lgzl;

    move-result-object v3

    invoke-interface {v3}, Lgzl;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1104
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1113
    :goto_0
    iput-boolean v7, p2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 1114
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    .line 1115
    iput-boolean v7, p2, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 74
    :cond_0
    :try_start_1
    iget-object v3, p0, Lgzu;->a:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 82
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_1

    .line 83
    if-eqz v0, :cond_1

    .line 86
    :try_start_2
    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/nativecode/Bitmaps;->a(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 96
    :cond_1
    return-object v0

    .line 1106
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    :try_start_3
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1108
    :catch_0
    move-exception v3

    .line 1109
    const-string/jumbo v4, "photokit"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "isRegionDecoderArgb8888 error="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 76
    :catch_1
    move-exception v3

    const-string/jumbo v3, "IMAGE"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 77
    .local v2, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    const-wide/16 v4, 0x0

    invoke-interface {v2, v4, v5}, Lcom/alibaba/doraemon/image/ImageMagician;->clearMemoryCache(J)V

    .line 79
    iget-object v3, p0, Lgzu;->a:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 87
    .end local v2    # "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    :catch_2
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "photokit"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "pinBitmap fail "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 91
    invoke-static {v1}, Lcom/alibaba/doraemon/image/utils/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public final synthetic release(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 42
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p1}, Lgzu;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
