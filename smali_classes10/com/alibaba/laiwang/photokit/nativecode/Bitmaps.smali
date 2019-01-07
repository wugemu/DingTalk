.class public Lcom/alibaba/laiwang/photokit/nativecode/Bitmaps;
.super Ljava/lang/Object;
.source "Bitmaps.java"


# static fields
.field public static final a:Landroid/graphics/Bitmap$Config;

.field public static final b:I

.field public static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    sput-boolean v2, Lcom/alibaba/laiwang/photokit/nativecode/Bitmaps;->c:Z

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 42
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/alibaba/laiwang/photokit/nativecode/Bitmaps;->a:Landroid/graphics/Bitmap$Config;

    .line 43
    const/4 v0, 0x4

    sput v0, Lcom/alibaba/laiwang/photokit/nativecode/Bitmaps;->b:I

    .line 50
    :goto_0
    :try_start_0
    const-string/jumbo v0, "ddbitmaps"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/laiwang/photokit/nativecode/Bitmaps;->c:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_1
    return-void

    .line 45
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/alibaba/laiwang/photokit/nativecode/Bitmaps;->a:Landroid/graphics/Bitmap$Config;

    .line 46
    const/4 v0, 0x2

    sput v0, Lcom/alibaba/laiwang/photokit/nativecode/Bitmaps;->b:I

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    sput-boolean v2, Lcom/alibaba/laiwang/photokit/nativecode/Bitmaps;->c:Z

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 73
    invoke-static {p0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-boolean v0, Lcom/alibaba/laiwang/photokit/nativecode/Bitmaps;->c:Z

    if-eqz v0, :cond_0

    .line 75
    invoke-static {p0}, Lcom/alibaba/laiwang/photokit/nativecode/Bitmaps;->nativePinBitmap(Landroid/graphics/Bitmap;)V

    .line 78
    :cond_0
    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)V
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "bitmapConfig"    # Landroid/graphics/Bitmap$Config;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 154
    .line 155
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    mul-int v1, p1, p2

    .line 156
    invoke-static {p3}, Lcom/alibaba/doraemon/image/utils/BitmapUtil;->getPixelSizeForBitmapConfig(Landroid/graphics/Bitmap$Config;)I

    move-result v2

    mul-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 154
    :goto_0
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(Z)V

    .line 157
    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 158
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 7
    .param p0, "dest"    # Landroid/graphics/Bitmap;
    .param p1, "src"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 104
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    if-ne v3, v6, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(Z)V

    .line 105
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v3

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(Z)V

    .line 106
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ne v3, v6, :cond_1

    move v3, v4

    :goto_1
    invoke-static {v3}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(Z)V

    .line 107
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ne v3, v6, :cond_2

    :goto_2
    invoke-static {v4}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(Z)V

    .line 1059
    sget-boolean v3, Lcom/alibaba/laiwang/photokit/nativecode/Bitmaps;->c:Z

    .line 108
    if-eqz v3, :cond_3

    .line 111
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v3

    .line 113
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v4

    .line 114
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 109
    invoke-static {p0, v3, p1, v4, v5}, Lcom/alibaba/laiwang/photokit/nativecode/Bitmaps;->nativeCopyBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap;II)V

    .line 125
    :goto_3
    return-void

    :cond_0
    move v3, v5

    .line 104
    goto :goto_0

    :cond_1
    move v3, v5

    .line 106
    goto :goto_1

    :cond_2
    move v4, v5

    .line 107
    goto :goto_2

    .line 117
    :cond_3
    :try_start_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, v3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 118
    .local v0, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 119
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 120
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 121
    .end local v0    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v2

    .line 122
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/alibaba/laiwang/photokit/nativecode/Bitmaps;->c:Z

    return v0
.end method

.method public static b(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 83
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 85
    return-void
.end method

.method private static native nativeCopyBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap;II)V
.end method

.method private static native nativePinBitmap(Landroid/graphics/Bitmap;)V
.end method

.method private static native nativeUnPinBitmap(Landroid/graphics/Bitmap;)V
.end method
