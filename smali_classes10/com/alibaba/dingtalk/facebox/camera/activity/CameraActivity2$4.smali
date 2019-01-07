.class final Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;
.super Ljava/lang/Object;
.source "CameraActivity2.java"

# interfaces
.implements Lgse$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    .prologue
    .line 620
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 11
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v10, 0x4b

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/high16 v9, 0x42960000    # 75.0f

    .line 624
    const-string/jumbo v0, "facebox"

    invoke-static {}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->c()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "[Camera] TackPhotoCallback, onTakePicture ..."

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    if-eqz p1, :cond_6

    .line 627
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 628
    .local v5, "matrixs":Landroid/graphics/Matrix;
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->a(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 629
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 631
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->c(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 633
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->i(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->i(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->a()V

    .line 635
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->v(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->h(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)I

    move-result v0

    .line 1087
    const/16 v2, 0x50

    if-ge v0, v2, :cond_1

    .line 636
    :goto_0
    invoke-static {v1, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->b(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;I)I

    .line 637
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4$1;-><init>(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lgtb;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->b(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;Landroid/net/Uri;)Landroid/net/Uri;

    .line 649
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    iget-object v0, v0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->d:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 650
    .local v7, "message":Landroid/os/Message;
    iput v6, v7, Landroid/os/Message;->what:I

    .line 651
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 669
    .end local v5    # "matrixs":Landroid/graphics/Matrix;
    .end local v7    # "message":Landroid/os/Message;
    :goto_1
    return-void

    .line 1090
    .restart local v5    # "matrixs":Landroid/graphics/Matrix;
    :cond_1
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 1091
    const/16 v2, 0x65

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 1092
    if-gt v0, v10, :cond_2

    .line 1093
    int-to-float v0, v0

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v0, v2

    div-float/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1099
    :goto_2
    add-int/lit8 v0, v0, 0x50

    goto :goto_0

    .line 1094
    :cond_2
    if-le v0, v10, :cond_3

    const/16 v2, 0x5f

    if-gt v0, v2, :cond_3

    .line 1095
    int-to-float v0, v0

    sub-float/2addr v0, v9

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    goto :goto_2

    .line 1097
    :cond_3
    int-to-float v0, v0

    const/high16 v2, 0x42be0000    # 95.0f

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/lit8 v0, v0, 0xf

    goto :goto_2

    .line 655
    :cond_4
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lgtb;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v8

    .line 656
    .local v8, "uri":Landroid/net/Uri;
    if-nez v8, :cond_5

    .line 657
    const-string/jumbo v0, "facebox"

    invoke-static {}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->c()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "[Camera] saveBitmapToUri, uri is null!"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 660
    :cond_5
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    iget-object v0, v0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4$2;

    invoke-direct {v1, p0, v8}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4$2;-><init>(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 667
    .end local v5    # "matrixs":Landroid/graphics/Matrix;
    .end local v8    # "uri":Landroid/net/Uri;
    :cond_6
    const-string/jumbo v0, "facebox"

    invoke-static {}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->c()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "[Camera] TackPhotoCallback, bitmap is null!"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
