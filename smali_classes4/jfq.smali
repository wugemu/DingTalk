.class public final Ljfq;
.super Ljava/lang/Object;
.source "ResUtils.java"


# static fields
.field private static a:Z

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ljfq;->a:Z

    .line 24
    const-string/jumbo v0, "com.mybank.android.phone.sdk"

    sput-object v0, Ljfq;->b:Ljava/lang/String;

    return-void

    .line 20
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 13
    .param p0, "resId"    # I
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    .line 160
    if-nez p1, :cond_0

    .line 161
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "Invalid context"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 164
    :cond_0
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 165
    .local v2, "defaultMetrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v9, "window"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 166
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 169
    .local v6, "res":Landroid/content/res/Resources;
    const/high16 v9, 0x40c00000    # 6.0f

    iget v10, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v9, v10

    float-to-int v5, v9

    .line 170
    .local v5, "padding":I
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 171
    .local v3, "op":Landroid/graphics/BitmapFactory$Options;
    const/16 v9, 0x140

    iput v9, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 172
    invoke-static {v6, p0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 173
    .local v4, "orignal":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    add-int/2addr v9, v5

    .line 174
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 173
    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 175
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 176
    .local v1, "c":Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v8, v12, v12, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 177
    .local v8, "src":Landroid/graphics/Rect;
    const/4 v9, 0x0

    invoke-virtual {v1, v4, v8, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 178
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 179
    .local v7, "right":Landroid/graphics/drawable/Drawable;
    return-object v7
.end method
