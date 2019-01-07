.class public final Lbye;
.super Ljava/lang/Object;
.source "BlurBitmapUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "inputBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    const v4, 0x3e99999a    # 0.3f

    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 36
    :goto_0
    return-object v1

    .line 28
    :cond_0
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 29
    invoke-static {p0}, Lbye;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 1065
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1066
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1067
    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1068
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    .line 1069
    const/16 v3, 0xc

    invoke-static {v2, v3}, Lhbe;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "blurBitmap failed, error="

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2013
    const-string/jumbo v3, "live"

    invoke-static {v3, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "inputBitmap"    # Landroid/graphics/Bitmap;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x11
    .end annotation

    .prologue
    .line 41
    const/4 v5, 0x0

    .line 44
    .local v5, "rs":Landroid/renderscript/RenderScript;
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    .line 45
    .local v3, "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 46
    .local v4, "outBitmap":Landroid/graphics/Bitmap;
    invoke-static {v3}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v5

    .line 47
    invoke-static {v5}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v2

    .line 49
    .local v2, "blurScript":Landroid/renderscript/ScriptIntrinsicBlur;
    invoke-static {v5, p0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 50
    .local v0, "allIn":Landroid/renderscript/Allocation;
    invoke-static {v5, v4}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 52
    .local v1, "allOut":Landroid/renderscript/Allocation;
    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {v2, v6}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 53
    invoke-virtual {v2, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 54
    invoke-virtual {v2, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 55
    invoke-virtual {v1, v4}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    if-eqz v5, :cond_0

    .line 58
    invoke-virtual {v5}, Landroid/renderscript/RenderScript;->destroy()V

    .line 61
    :cond_0
    return-object v4

    .line 57
    .end local v0    # "allIn":Landroid/renderscript/Allocation;
    .end local v1    # "allOut":Landroid/renderscript/Allocation;
    .end local v2    # "blurScript":Landroid/renderscript/ScriptIntrinsicBlur;
    .end local v3    # "context":Landroid/content/Context;
    .end local v4    # "outBitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_1

    .line 58
    invoke-virtual {v5}, Landroid/renderscript/RenderScript;->destroy()V

    :cond_1
    throw v6
.end method
