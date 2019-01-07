.class public final Lhce;
.super Lhcd;
.source "KitKatPurgeableDecoder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lhcd;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 19
    invoke-super {p0, p1}, Lhcd;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method final a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/io/InputStream;Lgzt$a;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 19
    invoke-super {p0, p1, p2}, Lhcd;->a(Ljava/io/InputStream;Lgzt$a;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method final a([BILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "len"    # I
    .param p3, "options"    # Landroid/graphics/BitmapFactory$Options;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 24
    const/4 v1, 0x0

    if-lez p2, :cond_0

    array-length v0, p1

    .line 27
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 24
    :goto_0
    invoke-static {p1, v1, v0, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 27
    :cond_0
    array-length v0, p1

    goto :goto_0
.end method

.method public final bridge synthetic a([BILgzt$a;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 19
    invoke-super {p0, p1, p2, p3}, Lhcd;->a([BILgzt$a;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
