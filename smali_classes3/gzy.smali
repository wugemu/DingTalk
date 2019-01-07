.class public abstract Lgzy;
.super Ljava/lang/Object;
.source "PlatformBitmapFactory.java"


# static fields
.field static a:Lgzy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
.end method

.method public a(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "src"    # Landroid/graphics/Bitmap;
    .param p2, "dstWidth"    # I
    .param p3, "dstHeight"    # I
    .param p4, "filter"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 79
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 80
    .local v2, "scaledBitmap":Landroid/graphics/Bitmap;
    if-nez v2, :cond_0

    .line 81
    const-string/jumbo v3, "PlatformBitmapFactory"

    const-string/jumbo v4, "createScaledBitmap fail"

    invoke-static {v3, v4}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/4 v1, 0x0

    .line 93
    :goto_0
    return-object v1

    .line 84
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    if-nez v3, :cond_1

    sget-object v0, Lcom/alibaba/laiwang/photokit/nativecode/Bitmaps;->a:Landroid/graphics/Bitmap$Config;

    .line 85
    .local v0, "config":Landroid/graphics/Bitmap$Config;
    :goto_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p0, v3, v4, v0}, Lgzy;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 87
    .local v1, "copyBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 88
    invoke-static {v1, v2}, Lcom/alibaba/laiwang/photokit/nativecode/Bitmaps;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 84
    .end local v0    # "config":Landroid/graphics/Bitmap$Config;
    .end local v1    # "copyBitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    goto :goto_1

    .line 90
    .restart local v0    # "config":Landroid/graphics/Bitmap$Config;
    .restart local v1    # "copyBitmap":Landroid/graphics/Bitmap;
    :cond_2
    move-object v1, v2

    goto :goto_0
.end method
