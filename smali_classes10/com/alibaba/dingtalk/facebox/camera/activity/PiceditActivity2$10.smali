.class final Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$10;
.super Ljava/lang/Object;
.source "PiceditActivity2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$10;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 296
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$10;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->c(Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_2

    const-string/jumbo v7, ""

    .line 297
    .local v7, "imagePath":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$10;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "nonfacingback"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 300
    .local v8, "isNonFacingBack":Z
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 302
    .local v10, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v6, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 304
    invoke-static {v7, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 306
    iget v12, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 307
    .local v12, "outWidth":I
    iget v11, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 309
    .local v11, "outHeight":I
    iput-boolean v1, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 311
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 312
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/4 v13, 0x0

    .line 314
    .local v13, "srcBitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$10;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;

    invoke-static {v2, v12, v11, v4}, Lcom/alibaba/laiwang/photokit/utils/ImageUtils;->a(Landroid/content/Context;IIF)I

    move-result v2

    iput v2, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 315
    invoke-static {v7, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 316
    .local v0, "tmpBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 318
    if-eqz v8, :cond_0

    .line 319
    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v5, v2, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 322
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 324
    if-eq v13, v0, :cond_1

    .line 325
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 330
    :cond_1
    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 331
    .local v9, "msg":Landroid/os/Message;
    iput-object v13, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 332
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$10;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;

    iget-object v1, v1, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->a:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 333
    return-void

    .line 296
    .end local v0    # "tmpBitmap":Landroid/graphics/Bitmap;
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "imagePath":Ljava/lang/String;
    .end local v8    # "isNonFacingBack":Z
    .end local v9    # "msg":Landroid/os/Message;
    .end local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v11    # "outHeight":I
    .end local v12    # "outWidth":I
    .end local v13    # "srcBitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$10;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->c(Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method
