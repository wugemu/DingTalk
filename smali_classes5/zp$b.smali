.class public final Lzp$b;
.super Ljava/lang/Object;
.source "CameraHelper.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lzp;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lzp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 564
    iput-object p1, p0, Lzp$b;->a:Lzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    iput-object p2, p0, Lzp$b;->b:Ljava/lang/String;

    .line 566
    iput-object p3, p0, Lzp$b;->c:Ljava/lang/String;

    .line 567
    return-void
.end method


# virtual methods
.method public final onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 13
    .param p1, "bytes"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 571
    new-instance v9, Ljava/io/File;

    iget-object v1, p0, Lzp$b;->b:Ljava/lang/String;

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 572
    .local v9, "file1":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 573
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 575
    :cond_0
    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 576
    .local v0, "realImage":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lzp$b;->a:Lzp;

    iget-object v2, p0, Lzp$b;->a:Lzp;

    .line 1037
    iget-object v2, v2, Lzp;->e:Landroid/content/Context;

    .line 576
    invoke-virtual {v1, v2}, Lzp;->a(Landroid/content/Context;)I

    move-result v12

    .line 577
    .local v12, "roataion":I
    iget-object v1, p0, Lzp$b;->a:Lzp;

    .line 2037
    iget v1, v1, Lzp;->c:I

    .line 577
    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    .line 2615
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 2616
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 2618
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 2619
    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 2620
    :cond_1
    int-to-float v1, v12

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 2622
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 578
    new-instance v8, Ljava/io/File;

    iget-object v1, p0, Lzp$b;->b:Ljava/lang/String;

    iget-object v2, p0, Lzp$b;->c:Ljava/lang/String;

    invoke-direct {v8, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 580
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 583
    :cond_2
    const/4 v11, 0x0

    .line 585
    .local v11, "hasException":Z
    :try_start_0
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 586
    .local v10, "fos":Ljava/io/FileOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 588
    :try_start_1
    invoke-virtual {v10, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 600
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    iget-object v1, p0, Lzp$b;->a:Lzp;

    .line 3037
    iget-object v1, v1, Lzp;->b:Landroid/hardware/Camera;

    .line 600
    if-eqz v1, :cond_3

    .line 601
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 602
    iget-object v1, p0, Lzp$b;->a:Lzp;

    .line 4037
    iget-object v1, v1, Lzp;->b:Landroid/hardware/Camera;

    .line 602
    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 605
    :cond_3
    iget-object v1, p0, Lzp$b;->a:Lzp;

    .line 5037
    iget-object v1, v1, Lzp;->g:Lzp$a;

    .line 605
    if-eqz v1, :cond_4

    .line 606
    if-nez v11, :cond_6

    .line 607
    iget-object v1, p0, Lzp$b;->a:Lzp;

    .line 6037
    iget-object v1, v1, Lzp;->g:Lzp$a;

    .line 607
    const/4 v2, 0x0

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lzp$a;->a(ILandroid/net/Uri;)V

    .line 612
    :cond_4
    :goto_2
    return-void

    .line 577
    .end local v8    # "file":Ljava/io/File;
    .end local v11    # "hasException":Z
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    .line 589
    .restart local v8    # "file":Ljava/io/File;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "hasException":Z
    :catch_0
    move-exception v7

    .line 590
    .local v7, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 591
    const/4 v11, 0x1

    .line 592
    const-string/jumbo v1, "CameraHelper"

    invoke-static {v1, v7}, Lafg;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 594
    .end local v7    # "e":Ljava/io/IOException;
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v7

    .line 595
    .local v7, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 596
    const/4 v11, 0x1

    .line 597
    const-string/jumbo v1, "CameraHelper"

    invoke-static {v1, v7}, Lafg;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 609
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    :cond_6
    iget-object v1, p0, Lzp$b;->a:Lzp;

    .line 7037
    iget-object v1, v1, Lzp;->g:Lzp$a;

    .line 609
    invoke-interface {v1}, Lzp$a;->g_()V

    goto :goto_2
.end method
