.class public final Lcom/alibaba/laiwang/photokit/utils/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-string/jumbo v0, ".200x200.jpg"

    sput-object v0, Lcom/alibaba/laiwang/photokit/utils/ImageUtils;->a:Ljava/lang/String;

    .line 86
    const-string/jumbo v0, "."

    sput-object v0, Lcom/alibaba/laiwang/photokit/utils/ImageUtils;->b:Ljava/lang/String;

    .line 821
    const-string/jumbo v0, ".50x50."

    sput-object v0, Lcom/alibaba/laiwang/photokit/utils/ImageUtils;->c:Ljava/lang/String;

    .line 822
    const-string/jumbo v0, ".60x60."

    sput-object v0, Lcom/alibaba/laiwang/photokit/utils/ImageUtils;->d:Ljava/lang/String;

    .line 823
    const-string/jumbo v0, ".560x370x75x2.jpg"

    sput-object v0, Lcom/alibaba/laiwang/photokit/utils/ImageUtils;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 852
    return-void
.end method

.method public static a(Landroid/content/Context;IIF)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "factor"    # F

    .prologue
    .line 1262
    const/4 v1, 0x1

    .line 1263
    .local v1, "sample":I
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    const/4 v4, 0x0

    cmpl-float v4, p3, v4

    if-lez v4, :cond_0

    .line 1264
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1265
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v4, v5, :cond_2

    .line 1266
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    mul-float/2addr v4, p3

    float-to-int v3, v4

    .line 1267
    .local v3, "screenWSize":I
    if-lt v3, p1, :cond_1

    .line 1268
    const/4 v1, 0x1

    .line 1282
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v3    # "screenWSize":I
    :cond_0
    :goto_0
    return v1

    .line 1270
    .restart local v0    # "dm":Landroid/util/DisplayMetrics;
    .restart local v3    # "screenWSize":I
    :cond_1
    int-to-float v4, p1

    int-to-float v5, v3

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1272
    goto :goto_0

    .line 1273
    .end local v3    # "screenWSize":I
    :cond_2
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    mul-float/2addr v4, p3

    float-to-int v2, v4

    .line 1274
    .local v2, "screenHSize":I
    if-lt v2, p2, :cond_3

    .line 1275
    const/4 v1, 0x1

    goto :goto_0

    .line 1277
    :cond_3
    int-to-float v4, p2

    int-to-float v5, v2

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;)I
    .locals 3
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 406
    const/4 v1, 0x1

    .line 407
    .local v1, "orientation":I
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 409
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/io/InputStream;->mark(I)V

    .line 410
    invoke-static {p0}, Lcom/alibaba/doraemon/image/utils/JfifUtil;->getOrientation(Ljava/io/InputStream;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 415
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 424
    :goto_0
    if-nez v1, :cond_0

    const/4 v1, 0x1

    .end local v1    # "orientation":I
    :cond_0
    return v1

    .line 416
    .restart local v1    # "orientation":I
    :catch_0
    move-exception v0

    .line 417
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 411
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 412
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 415
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 416
    :catch_2
    move-exception v0

    .line 417
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 414
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 415
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 418
    :goto_1
    throw v2

    .line 416
    :catch_3
    move-exception v0

    .line 417
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 421
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    invoke-static {p0}, Lcom/alibaba/doraemon/image/utils/JfifUtil;->getOrientation(Ljava/io/InputStream;)I

    move-result v1

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "orientation"    # I

    .prologue
    .line 469
    :try_start_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 470
    .local v5, "matrix":Landroid/graphics/Matrix;
    packed-switch p1, :pswitch_data_0

    .line 514
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    :pswitch_0
    return-object p0

    .line 474
    .restart local v5    # "matrix":Landroid/graphics/Matrix;
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :pswitch_1
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 502
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    .line 501
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 503
    .local v7, "bmRotated":Landroid/graphics/Bitmap;
    if-eq v7, p0, :cond_0

    .line 504
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 505
    const/4 p0, 0x0

    :cond_0
    move-object p0, v7

    .line 507
    goto :goto_0

    .line 477
    .end local v7    # "bmRotated":Landroid/graphics/Bitmap;
    :pswitch_2
    const/high16 v0, 0x43340000    # 180.0f

    :try_start_2
    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 512
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    :catch_0
    move-exception v8

    .line 513
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 480
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v5    # "matrix":Landroid/graphics/Matrix;
    :pswitch_3
    const/high16 v0, 0x43340000    # 180.0f

    :try_start_3
    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 481
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_1

    .line 484
    :pswitch_4
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 485
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_1

    .line 488
    :pswitch_5
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_1

    .line 491
    :pswitch_6
    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 492
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_1

    .line 495
    :pswitch_7
    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_1

    .line 508
    :catch_1
    move-exception v8

    .line 509
    .local v8, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 510
    const/4 p0, 0x0

    goto :goto_0

    .line 470
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static a(Landroid/app/Activity;I)Landroid/net/Uri;
    .locals 13
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v12, 0x1

    .line 1118
    if-nez p0, :cond_0

    move-object v0, v7

    .line 1151
    :goto_0
    return-object v0

    .line 1123
    :cond_0
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1124
    .local v2, "filePath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-static {p0}, Lhcs;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v8

    invoke-direct {v3, v8, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1127
    .local v3, "imageFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 1128
    .local v6, "parentFile":Ljava/io/File;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1129
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 1132
    :cond_1
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 1133
    .local v0, "captureUri":Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v8, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1135
    .local v4, "intent":Landroid/content/Intent;
    move-object v5, v0

    .line 1136
    .local v5, "outputUrl":Landroid/net/Uri;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x18

    if-lt v8, v9, :cond_2

    .line 1137
    invoke-static {p0}, Lhcs;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8, v3}, Landroid/support/v4/content/FileProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 1139
    :cond_2
    const-string/jumbo v8, "output"

    invoke-virtual {v4, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1140
    const/4 v8, 0x1

    invoke-virtual {p0, v4, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1143
    .end local v0    # "captureUri":Landroid/net/Uri;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "imageFile":Ljava/io/File;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "outputUrl":Landroid/net/Uri;
    .end local v6    # "parentFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 1144
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1145
    sget v8, Liff$f;->sdcard_unavailable:I

    invoke-static {v8}, Lhcn;->a(I)V

    .line 1146
    const-string/jumbo v8, "Pick"

    const-string/jumbo v9, "sdcard unavailable"

    invoke-static {v8, v9}, Lhcw;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_1
    move-object v0, v7

    .line 1151
    goto :goto_0

    .line 1147
    :catch_1
    move-exception v1

    .line 1148
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1149
    const-string/jumbo v8, "openCamera"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "start camera:"

    aput-object v11, v9, v10

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v9}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhcw;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "fileDir"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;

    .prologue
    const/4 v7, 0x0

    .line 1017
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1019
    .local v6, "retPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1020
    .local v2, "dirFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1021
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 1023
    :cond_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1024
    .local v5, "myCaptureFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 1026
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1027
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    const/16 v8, 0x64

    :try_start_2
    invoke-virtual {p0, p3, v8, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1028
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1035
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1044
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "dirFile":Ljava/io/File;
    .end local v5    # "myCaptureFile":Ljava/io/File;
    .end local v6    # "retPath":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 1036
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "dirFile":Ljava/io/File;
    .restart local v5    # "myCaptureFile":Ljava/io/File;
    .restart local v6    # "retPath":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1037
    .local v3, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1042
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "dirFile":Ljava/io/File;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "myCaptureFile":Ljava/io/File;
    .end local v6    # "retPath":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 1043
    .local v4, "ex":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    move-object v6, v7

    .line 1044
    goto :goto_0

    .line 1029
    .end local v4    # "ex":Ljava/lang/Exception;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "dirFile":Ljava/io/File;
    .restart local v5    # "myCaptureFile":Ljava/io/File;
    .restart local v6    # "retPath":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 1030
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1033
    if-eqz v0, :cond_1

    .line 1035
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    move-object v6, v7

    .line 1038
    goto :goto_0

    .line 1036
    .restart local v3    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 1037
    .local v3, "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 1033
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v0, :cond_2

    .line 1035
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 1038
    :cond_2
    :goto_4
    :try_start_9
    throw v8

    .line 1036
    :catch_4
    move-exception v3

    .line 1037
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_4

    .line 1033
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_3

    .line 1029
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    :catch_5
    move-exception v3

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1286
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1328
    :cond_0
    :goto_0
    return-void

    .line 1290
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1291
    .local v6, "cr":Landroid/content/ContentResolver;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1292
    .local v11, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "title"

    const-string/jumbo v2, ""

    invoke-virtual {v11, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    const-string/jumbo v0, "description"

    const-string/jumbo v2, "dingtalk"

    invoke-virtual {v11, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    const-string/jumbo v0, "mime_type"

    const-string/jumbo v2, "image/jpeg"

    invoke-virtual {v11, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    const-string/jumbo v0, "datetaken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1296
    const/4 v1, 0x0

    .line 1298
    .local v1, "url":Landroid/net/Uri;
    :try_start_1
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v0, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 1299
    if-eqz v1, :cond_2

    .line 1300
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1301
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1302
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1303
    .local v9, "fileInput":Ljava/io/InputStream;
    invoke-virtual {v6, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    .line 1305
    .local v10, "imageOut":Ljava/io/OutputStream;
    :try_start_2
    invoke-static {v9, v10}, Lhcs;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1307
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 1308
    if-eqz v10, :cond_2

    .line 1309
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 2331
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "fileInput":Ljava/io/InputStream;
    .end local v10    # "imageOut":Ljava/io/OutputStream;
    :cond_2
    :goto_1
    if-eqz p0, :cond_0

    if-eqz v1, :cond_0

    .line 2334
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v2

    .line 2337
    if-eqz v2, :cond_0

    .line 2339
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2340
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2341
    invoke-static {p0, v0}, Lcom/alibaba/laiwang/photokit/utils/ImageUtils;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2344
    :cond_3
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 1324
    .end local v1    # "url":Landroid/net/Uri;
    .end local v6    # "cr":Landroid/content/ContentResolver;
    .end local v11    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    .line 1325
    .local v7, "e":Ljava/lang/Throwable;
    const-string/jumbo v0, "Pick"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "insertImage2:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lhcw;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 1307
    .end local v7    # "e":Ljava/lang/Throwable;
    .restart local v1    # "url":Landroid/net/Uri;
    .restart local v6    # "cr":Landroid/content/ContentResolver;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v9    # "fileInput":Ljava/io/InputStream;
    .restart local v10    # "imageOut":Ljava/io/OutputStream;
    .restart local v11    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    :try_start_7
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 1308
    if-eqz v10, :cond_4

    .line 1309
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    :cond_4
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    .line 1317
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "fileInput":Ljava/io/InputStream;
    .end local v10    # "imageOut":Ljava/io/OutputStream;
    :catch_1
    move-exception v7

    .line 1318
    .local v7, "e":Ljava/lang/Exception;
    if-eqz v1, :cond_5

    .line 1319
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_8
    invoke-virtual {v6, v1, v0, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1321
    :cond_5
    const-string/jumbo v0, "Pick"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "insertImage1:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lhcw;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_1

    .line 1313
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "file":Ljava/io/File;
    :cond_6
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_9
    invoke-virtual {v6, v1, v0, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    .line 1314
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 2344
    .end local v8    # "file":Ljava/io/File;
    :catchall_1
    move-exception v0

    :try_start_a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 896
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 897
    const-string/jumbo p2, "image/jpeg"

    .line 899
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 900
    .local v1, "localContentValues":Landroid/content/ContentValues;
    const-string/jumbo v3, "_data"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    const-string/jumbo v3, "description"

    const-string/jumbo v4, "save image ---"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    const-string/jumbo v3, "mime_type"

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    const-string/jumbo v3, "datetaken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 905
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 906
    .local v0, "localContentResolver":Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 907
    .local v2, "localUri":Landroid/net/Uri;
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 908
    const/4 v3, 0x1

    .line 912
    .end local v0    # "localContentResolver":Landroid/content/ContentResolver;
    .end local v1    # "localContentValues":Landroid/content/ContentValues;
    .end local v2    # "localUri":Landroid/net/Uri;
    :goto_0
    return v3

    :catch_0
    move-exception v3

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)Z
    .locals 10
    .param p0, "fullPath"    # Ljava/lang/String;
    .param p1, "stream"    # Ljava/io/ByteArrayOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 242
    const-string/jumbo v7, "photokit"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "compressAndScale writeBitmap fullPath="

    aput-object v9, v8, v6

    invoke-static {p0}, Lhcw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v8}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    if-eqz p1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    move v5, v6

    .line 270
    :cond_1
    :goto_0
    return v5

    .line 247
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    .local v0, "_file":Ljava/io/File;
    const/4 v1, 0x1

    .line 249
    .local v1, "bNew":Z
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 250
    const/4 v1, 0x0

    .line 251
    new-instance v0, Ljava/io/File;

    .end local v0    # "_file":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 252
    .restart local v0    # "_file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 255
    :cond_3
    const/4 v3, 0x0

    .line 257
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 263
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 265
    if-nez v1, :cond_1

    .line 266
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 268
    :catch_0
    move-exception v2

    .line 269
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 261
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v5

    .line 262
    :goto_1
    if-eqz v3, :cond_4

    .line 263
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 265
    :cond_4
    if-nez v1, :cond_5

    .line 266
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 270
    :cond_5
    :goto_2
    throw v5

    .line 268
    :catch_1
    move-exception v2

    .line 269
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 261
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)Z
    .locals 15
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "compressRate"    # I

    .prologue
    .line 277
    if-eqz p2, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 278
    :cond_0
    const/4 v11, 0x0

    .line 323
    :goto_0
    return v11

    .line 280
    :cond_1
    const/4 v5, 0x0

    .line 281
    .local v5, "bPng":Z
    const-string/jumbo v11, ".png"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 282
    const/4 v5, 0x1

    .line 285
    :cond_2
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_3

    .line 287
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 290
    :cond_3
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v2, p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .local v2, "_file":Ljava/io/File;
    const/4 v3, 0x1

    .line 292
    .local v3, "bNew":Z
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 293
    const/4 v3, 0x0

    .line 294
    new-instance v2, Ljava/io/File;

    .end local v2    # "_file":Ljava/io/File;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ".tmp"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, p0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .restart local v2    # "_file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 297
    :cond_4
    const/4 v8, 0x0

    .line 298
    .local v8, "fos":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 300
    .local v4, "bOK":Z
    :try_start_0
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v9, "fos":Ljava/io/FileOutputStream;
    if-eqz v5, :cond_6

    .line 302
    :try_start_1
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v0, v11, v1, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 306
    :goto_1
    const/4 v4, 0x1

    .line 315
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 316
    if-nez v3, :cond_5

    .line 317
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v11, p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 320
    :cond_5
    :goto_2
    const/4 v11, 0x1

    goto :goto_0

    .line 304
    :cond_6
    :try_start_3
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v0, v11, v1, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 308
    :catch_0
    move-exception v6

    move-object v8, v9

    .line 309
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .local v6, "e":Ljava/lang/Exception;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_4
    const-string/jumbo v11, "photokit"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "compressAndScale writeBitmap2 "

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v6}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v12}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 313
    if-eqz v8, :cond_7

    .line 315
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 316
    if-nez v3, :cond_7

    if-eqz v4, :cond_7

    .line 317
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v11, p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 323
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_4
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 310
    :catch_1
    move-exception v10

    .line 311
    .local v10, "t":Ljava/lang/Throwable;
    :goto_5
    :try_start_6
    const-string/jumbo v11, "photokit"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "compressAndScale writeBitmap2 "

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v10}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v12}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 313
    if-eqz v8, :cond_7

    .line 315
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 316
    if-nez v3, :cond_7

    if-eqz v4, :cond_7

    .line 317
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v11, p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    .line 320
    :catch_2
    move-exception v11

    goto :goto_4

    .line 313
    .end local v10    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v11

    :goto_6
    if-eqz v8, :cond_8

    .line 315
    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 316
    if-nez v3, :cond_8

    if-eqz v4, :cond_8

    .line 317
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v12, p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 320
    :cond_8
    :goto_7
    throw v11

    :catch_3
    move-exception v12

    goto :goto_7

    .line 313
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v11

    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 310
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v10

    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 320
    .restart local v6    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v11

    goto :goto_4

    .line 308
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v6

    goto/16 :goto_3

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v11

    goto/16 :goto_2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)Z
    .locals 15
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "format"    # Landroid/graphics/Bitmap$CompressFormat;

    .prologue
    .line 332
    if-eqz p2, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 333
    :cond_0
    const/4 v3, 0x0

    .line 383
    :cond_1
    :goto_0
    return v3

    .line 336
    :cond_2
    if-nez p3, :cond_3

    .line 338
    const/16 v10, 0x64

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {p0, v0, v1, v10}, Lcom/alibaba/laiwang/photokit/utils/ImageUtils;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)Z

    move-result v3

    goto :goto_0

    .line 341
    :cond_3
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 342
    .local v4, "dirFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_4

    .line 343
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v10

    if-nez v10, :cond_4

    .line 344
    const-string/jumbo v10, "photokit"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "compressAndScale writeBitmap2 and make dir failed"

    aput-object v13, v11, v12

    invoke-static {v11}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const/4 v3, 0x0

    goto :goto_0

    .line 349
    :cond_4
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v6, p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    .local v6, "file":Ljava/io/File;
    const/4 v2, 0x1

    .line 351
    .local v2, "bNew":Z
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 352
    const/4 v2, 0x0

    .line 353
    new-instance v6, Ljava/io/File;

    .end local v6    # "file":Ljava/io/File;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ".tmp"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, p0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .restart local v6    # "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v10

    if-nez v10, :cond_5

    .line 355
    const-string/jumbo v10, "photokit"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "compressAndScale writeBitmap2 and delete existed file failed"

    aput-object v13, v11, v12

    invoke-static {v11}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const/4 v3, 0x0

    goto :goto_0

    .line 360
    :cond_5
    const/4 v7, 0x0

    .line 361
    .local v7, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 363
    .local v3, "bOK":Z
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v8, "fos":Ljava/io/FileOutputStream;
    const/16 v10, 0x64

    :try_start_1
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v10, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 365
    const/4 v3, 0x1

    .line 373
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 374
    if-nez v2, :cond_6

    .line 375
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v10, p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    :cond_6
    move-object v7, v8

    .line 379
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 377
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v5

    .line 378
    .local v5, "e":Ljava/io/IOException;
    const-string/jumbo v10, "photokit"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "compressAndScale writeBitmap2 "

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v5}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v11}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v8

    .line 379
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 366
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 367
    .local v5, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string/jumbo v10, "photokit"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "compressAndScale writeBitmap2 "

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v5}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v11}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 371
    if-eqz v7, :cond_1

    .line 373
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 377
    :catch_2
    move-exception v5

    .line 378
    .local v5, "e":Ljava/io/IOException;
    const-string/jumbo v10, "photokit"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "compressAndScale writeBitmap2 "

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v5}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v11}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 368
    .end local v5    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v9

    .line 369
    .local v9, "t":Ljava/lang/Throwable;
    :goto_2
    :try_start_5
    const-string/jumbo v10, "photokit"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "compressAndScale writeBitmap2 "

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v9}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v11}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 371
    if-eqz v7, :cond_1

    .line 373
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 377
    :catch_4
    move-exception v5

    .line 378
    .restart local v5    # "e":Ljava/io/IOException;
    const-string/jumbo v10, "photokit"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "compressAndScale writeBitmap2 "

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v5}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v11}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 371
    .end local v5    # "e":Ljava/io/IOException;
    .end local v9    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v10

    :goto_3
    if-eqz v7, :cond_7

    .line 373
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 379
    :cond_7
    :goto_4
    throw v10

    .line 377
    :catch_5
    move-exception v5

    .line 378
    .restart local v5    # "e":Ljava/io/IOException;
    const-string/jumbo v11, "photokit"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "compressAndScale writeBitmap2 "

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v5}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v12}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 371
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v10

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 368
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v9

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 366
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v5

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)Z
    .locals 10
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "stream"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    const/4 v7, 0x0

    .line 200
    if-eqz p2, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v7

    .line 204
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 206
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 209
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .local v0, "_file":Ljava/io/File;
    const/4 v1, 0x1

    .line 211
    .local v1, "bNew":Z
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 212
    const/4 v1, 0x0

    .line 213
    new-instance v0, Ljava/io/File;

    .end local v0    # "_file":Ljava/io/File;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, p0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .restart local v0    # "_file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 217
    :cond_3
    const/4 v4, 0x0

    .line 219
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p2, v5}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 229
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 231
    if-nez v1, :cond_4

    .line 232
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 236
    :cond_4
    :goto_1
    const/4 v7, 0x1

    goto :goto_0

    .line 234
    :catch_0
    move-exception v2

    .line 235
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 222
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 223
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 228
    if-eqz v4, :cond_5

    .line 229
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 231
    :cond_5
    if-nez v1, :cond_0

    .line 232
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 234
    :catch_2
    move-exception v2

    .line 235
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 224
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 225
    .local v6, "t":Ljava/lang/Throwable;
    :goto_3
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 228
    if-eqz v4, :cond_6

    .line 229
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 231
    :cond_6
    if-nez v1, :cond_0

    .line 232
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 234
    :catch_4
    move-exception v2

    .line 235
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 227
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    .line 228
    :goto_4
    if-eqz v4, :cond_7

    .line 229
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 231
    :cond_7
    if-nez v1, :cond_8

    .line 232
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 236
    :cond_8
    :goto_5
    throw v7

    .line 234
    :catch_5
    move-exception v2

    .line 235
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 227
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 224
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v6

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 222
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v2

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public static b(Ljava/io/InputStream;)Landroid/util/Pair;
    .locals 15
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1212
    if-nez p0, :cond_0

    move-object v4, v9

    .line 1251
    :goto_0
    return-object v4

    .line 1216
    :cond_0
    const/4 v3, 0x0

    .line 1218
    .local v3, "buf":[B
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1219
    const v4, 0x7fffffff

    invoke-virtual {p0, v4}, Ljava/io/InputStream;->mark(I)V

    .line 1222
    :cond_1
    const-wide/16 v10, 0x0

    .line 1223
    .local v10, "len":J
    instance-of v4, p0, Lcom/alibaba/doraemon/image/ImageInputStream;

    if-eqz v4, :cond_4

    .line 1224
    move-object v0, p0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageInputStream;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/alibaba/doraemon/image/ImageInputStream;->length()I

    move-result v4

    int-to-long v10, v4

    .line 1228
    :cond_2
    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    if-gtz v4, :cond_5

    .line 1229
    const-string/jumbo v4, "BitmapsFactory"

    const-string/jumbo v5, "decodeWebpDimensions stream len<=0"

    invoke-static {v4, v5}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1246
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1247
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 1249
    :cond_3
    invoke-static {v9}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    move-object v4, v9

    goto :goto_0

    .line 1225
    :cond_4
    :try_start_1
    instance-of v4, p0, Lhco;

    if-eqz v4, :cond_2

    .line 1226
    move-object v0, p0

    check-cast v0, Lhco;

    move-object v4, v0

    .line 2054
    iget-wide v10, v4, Lhco;->a:J

    .line 1226
    goto :goto_1

    .line 1233
    :cond_5
    long-to-int v4, v10

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v3

    .line 1234
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    .line 1236
    const/4 v4, 0x1

    new-array v6, v4, [I

    .line 1237
    .local v6, "width":[I
    const/4 v4, 0x1

    new-array v7, v4, [I

    .line 1238
    .local v7, "height":[I
    const/4 v4, 0x1

    new-array v8, v4, [I

    .line 1240
    .local v8, "alpha":[I
    array-length v4, v3

    int-to-long v4, v4

    invoke-static/range {v3 .. v8}, Lixh;->a([BJ[I[I[I)I

    .line 1241
    new-instance v4, Landroid/util/Pair;

    const/4 v5, 0x0

    aget v5, v6, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v12, 0x0

    aget v12, v7, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v4, v5, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1246
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1247
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 1249
    :cond_6
    invoke-static {v3}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    goto :goto_0

    .line 1242
    .end local v6    # "width":[I
    .end local v7    # "height":[I
    .end local v8    # "alpha":[I
    .end local v10    # "len":J
    :catch_0
    move-exception v2

    .line 1243
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1244
    const-string/jumbo v4, "BitmapsFactory"

    const-string/jumbo v5, "decode webp dimensions:%s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v4, v5, v12}, Lhcw;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1246
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1247
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 1249
    :cond_7
    invoke-static {v3}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    move-object v4, v9

    .line 1251
    goto/16 :goto_0

    .line 1246
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1247
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 1249
    :cond_8
    invoke-static {v3}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    throw v4
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1353
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1363
    :cond_0
    :goto_0
    return-void

    .line 1357
    :cond_1
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1358
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 1359
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1360
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1361
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "scanFile"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "scanFile failed, error="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhcw;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
