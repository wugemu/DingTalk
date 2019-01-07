.class final Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$5;
.super Ljava/lang/Object;
.source "WeixinFriendShareUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$5;->b:Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;

    iput-object p2, p0, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 297
    iget-object v10, p0, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$5;->a:Ljava/lang/String;

    invoke-static {v10}, Lhcs;->a(Ljava/lang/String;)Z

    move-result v4

    .line 298
    .local v4, "exist":Z
    if-nez v4, :cond_0

    .line 299
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v10

    new-instance v11, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$5$1;

    invoke-direct {v11, p0}, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$5$1;-><init>(Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$5;)V

    invoke-virtual {v10, v11}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 305
    const-string/jumbo v10, "share"

    const/4 v11, 0x0

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "wxf"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string/jumbo v14, " compressLocalBitmap file not exist:"

    aput-object v14, v12, v13

    .line 306
    invoke-static {v12}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 305
    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :goto_0
    return-void

    .line 309
    :cond_0
    const/4 v1, 0x0

    .line 311
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 312
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 313
    .local v7, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v10, 0x1

    iput-boolean v10, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 314
    iget-object v10, p0, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$5;->a:Ljava/lang/String;

    invoke-static {v10, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 315
    const/4 v10, 0x0

    iput-boolean v10, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 316
    iget v10, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v11, 0x96

    if-gt v10, v11, :cond_1

    iget v10, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v11, 0x96

    if-le v10, v11, :cond_3

    .line 317
    :cond_1
    iget v10, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/lit16 v10, v10, 0x96

    iget v11, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/lit16 v11, v11, 0x96

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 318
    .local v8, "sampleSize":I
    const/4 v10, 0x0

    iput-boolean v10, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 319
    iput v8, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 320
    iget-object v10, p0, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$5;->a:Ljava/lang/String;

    invoke-static {v10, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 324
    .end local v8    # "sampleSize":I
    :goto_1
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x50

    invoke-virtual {v1, v10, v11, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 325
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 326
    .local v2, "bytes":[B
    const/4 v10, 0x0

    array-length v11, v2

    invoke-static {v2, v10, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 336
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "bytes":[B
    .end local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_2
    invoke-static {v1}, Lcom/alibaba/doraemon/image/utils/BitmapUtil;->getSizeInBytes(Landroid/graphics/Bitmap;)I

    move-result v10

    const v11, 0x8c00

    if-le v10, v11, :cond_2

    .line 338
    const/16 v10, 0x4b

    const/16 v11, 0x4b

    const/4 v12, 0x1

    :try_start_1
    invoke-static {v1, v10, v11, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    .line 344
    :cond_2
    :goto_3
    move-object v5, v1

    .line 345
    .local v5, "finalBitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v10

    new-instance v11, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$5$2;

    invoke-direct {v11, p0, v5}, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$5$2;-><init>(Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$5;Landroid/graphics/Bitmap;)V

    invoke-virtual {v10, v11}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 322
    .end local v5    # "finalBitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_3
    :try_start_2
    iget-object v10, p0, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$5;->a:Ljava/lang/String;

    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    goto :goto_1

    .line 327
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v3

    .line 328
    .local v3, "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 329
    const-string/jumbo v10, "share"

    const/4 v11, 0x0

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "wxf"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string/jumbo v14, " compressLocalBitmap exception:"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    .line 330
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v12}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 329
    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 331
    .end local v3    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 332
    .local v6, "oom":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v6}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 333
    const-string/jumbo v10, "share"

    const/4 v11, 0x0

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "wxf"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string/jumbo v14, " compressLocalBitmap oom:"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    .line 334
    invoke-virtual {v6}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v12}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 333
    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 339
    .end local v6    # "oom":Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v9

    .line 340
    .local v9, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v10, "share"

    const/4 v11, 0x0

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "wxf"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string/jumbo v14, " compressLocalBitmap scale exception:"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v12}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method
