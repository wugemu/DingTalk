.class public Lcom/alibaba/android/user/certify/RPTakePhotoActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "RPTakePhotoActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/certify/RPTakePhotoActivity$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private A:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

.field private B:J

.field private C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;",
            ">;"
        }
    .end annotation
.end field

.field private D:I

.field private E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/user/certify/ImageData;",
            ">;"
        }
    .end annotation
.end field

.field private F:Ljava/lang/String;

.field private G:Landroid/hardware/Camera$Size;

.field private H:Lcom/alibaba/doraemon/image/ImageMagician;

.field private I:Landroid/hardware/Camera$ShutterCallback;

.field private J:Landroid/hardware/Camera$PictureCallback;

.field protected a:Landroid/os/Handler;

.field private c:I

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/widget/ImageView;

.field private i:Lcom/taobao/ma/camera/CameraManager;

.field private j:Landroid/view/View;

.field private k:Landroid/view/ViewGroup;

.field private l:Landroid/view/ViewGroup;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/view/ViewGroup;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/view/SurfaceHolder;

.field private u:Landroid/view/SurfaceView;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-class v0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 91
    iput v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->c:I

    .line 116
    iput-boolean v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->v:Z

    .line 117
    iput-boolean v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->w:Z

    .line 118
    iput-boolean v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->x:Z

    .line 120
    iput-boolean v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->y:Z

    .line 121
    iput-boolean v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->z:Z

    .line 133
    new-instance v0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$a;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$a;-><init>(Lcom/alibaba/android/user/certify/RPTakePhotoActivity;B)V

    iput-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->a:Landroid/os/Handler;

    .line 353
    new-instance v0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$2;-><init>(Lcom/alibaba/android/user/certify/RPTakePhotoActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->I:Landroid/hardware/Camera$ShutterCallback;

    .line 364
    new-instance v0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$3;-><init>(Lcom/alibaba/android/user/certify/RPTakePhotoActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->J:Landroid/hardware/Camera$PictureCallback;

    .line 723
    return-void
.end method

.method private static a(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    const/4 v3, 0x1

    .line 656
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 657
    .local v1, "opt":Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 658
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 659
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 661
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 662
    .local v0, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private a([BII)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "bytes"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/16 v5, 0x500

    .line 685
    const/4 v0, 0x0

    .line 686
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    array-length v4, p1

    if-gtz v4, :cond_1

    .line 710
    :cond_0
    :goto_0
    return-object v3

    .line 688
    :cond_1
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 690
    .local v2, "opts":Landroid/graphics/BitmapFactory$Options;
    iget-object v4, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->G:Landroid/hardware/Camera$Size;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->G:Landroid/hardware/Camera$Size;

    iget v4, v4, Landroid/hardware/Camera$Size;->width:I

    if-gt v4, v5, :cond_2

    iget-object v4, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->G:Landroid/hardware/Camera$Size;

    iget v4, v4, Landroid/hardware/Camera$Size;->height:I

    if-le v4, v5, :cond_3

    .line 691
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 692
    const/4 v4, 0x0

    array-length v5, p1

    invoke-static {p1, v4, v5, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 693
    const/16 v4, 0x320

    const/16 v5, 0x1e0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const v5, 0x5dc00

    invoke-static {v2, v4, v5}, Lhch;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v4

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 695
    :cond_3
    const/4 v4, 0x0

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 696
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v4, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 697
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 698
    const/4 v4, 0x0

    array-length v5, p1

    invoke-static {p1, v4, v5, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 699
    if-eqz v0, :cond_0

    .line 702
    sget-object v3, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->b:Ljava/lang/String;

    const-string/jumbo v4, "pic size:%dx%d,src:%dx%d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget v7, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget v7, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 703
    iget-boolean v3, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->w:Z

    if-eqz v3, :cond_4

    .line 704
    const/16 v3, -0x5a

    invoke-static {v0, v3}, Lhch;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_4
    move-object v3, v0

    .line 706
    goto :goto_0

    .line 707
    .end local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v1

    .line 708
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v0

    .line 710
    goto/16 :goto_0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/certify/RPTakePhotoActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/certify/RPTakePhotoActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->F:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/certify/RPTakePhotoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/certify/RPTakePhotoActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->F:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/certify/RPTakePhotoActivity;[B)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/certify/RPTakePhotoActivity;
    .param p1, "x1"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a([B)Ljava/lang/String;
    .locals 17
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 580
    const/4 v2, 0x0

    .line 581
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 584
    .local v6, "os":Ljava/io/FileOutputStream;
    const/16 v10, 0x320

    const/16 v11, 0x1e0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v11}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->a([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 585
    if-nez v2, :cond_1

    .line 602
    invoke-static {v2}, Lgzt;->a(Landroid/graphics/Bitmap;)V

    .line 607
    if-eqz v2, :cond_0

    .line 608
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v10, 0x0

    .line 612
    :goto_0
    return-object v10

    .line 589
    :cond_1
    :try_start_1
    invoke-static/range {p0 .. p0}, Lhcs;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 590
    .local v3, "dir":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    .line 591
    .local v9, "timeStamp":Ljava/lang/String;
    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v9, v10, v11

    const/4 v11, 0x3

    const-string/jumbo v12, "."

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string/jumbo v12, "jpg"

    aput-object v12, v10, v11

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 592
    .local v8, "path":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 593
    .local v5, "file":Ljava/io/File;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 595
    .end local v6    # "os":Ljava/io/FileOutputStream;
    .local v7, "os":Ljava/io/FileOutputStream;
    :try_start_2
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x50

    invoke-virtual {v2, v10, v11, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 596
    sget-object v10, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->b:Ljava/lang/String;

    const-string/jumbo v11, "File size:%d, path: %s "

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v14

    const/16 v16, 0xa

    shr-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 597
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v10

    .line 602
    invoke-static {v2}, Lgzt;->a(Landroid/graphics/Bitmap;)V

    .line 604
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 605
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 607
    if-eqz v2, :cond_2

    .line 608
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    move-object v6, v7

    .end local v7    # "os":Ljava/io/FileOutputStream;
    .restart local v6    # "os":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 598
    .end local v3    # "dir":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "timeStamp":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 599
    .local v4, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 600
    sget-object v10, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->b:Ljava/lang/String;

    const-string/jumbo v11, "onSavePicture fail: %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 602
    invoke-static {v2}, Lgzt;->a(Landroid/graphics/Bitmap;)V

    .line 603
    if-eqz v6, :cond_3

    .line 604
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 605
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 607
    :cond_3
    if-eqz v2, :cond_4

    .line 608
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 612
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 602
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    :goto_2
    invoke-static {v2}, Lgzt;->a(Landroid/graphics/Bitmap;)V

    .line 603
    if-eqz v6, :cond_5

    .line 604
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 605
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 607
    :cond_5
    if-eqz v2, :cond_6

    .line 608
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    throw v10

    .line 602
    .end local v6    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "dir":Ljava/lang/String;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "os":Ljava/io/FileOutputStream;
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v9    # "timeStamp":Ljava/lang/String;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7    # "os":Ljava/io/FileOutputStream;
    .restart local v6    # "os":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 598
    .end local v6    # "os":Ljava/io/FileOutputStream;
    .restart local v7    # "os":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    move-object v6, v7

    .end local v7    # "os":Ljava/io/FileOutputStream;
    .restart local v6    # "os":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private static a(Landroid/widget/ImageView;)V
    .locals 4
    .param p0, "view"    # Landroid/widget/ImageView;

    .prologue
    const/4 v3, 0x0

    .line 633
    if-eqz p0, :cond_1

    .line 634
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 635
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 636
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 637
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 640
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 644
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 645
    if-eqz v1, :cond_1

    .line 646
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 650
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method private a(Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;)V
    .locals 4
    .param p1, "type"    # Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 222
    iget-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 223
    iget-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->j:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 225
    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;->Front:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    if-ne p1, v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->q:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    iget-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->d:Landroid/widget/TextView;

    sget v2, Lezg$l;->dt_certify_take_photo_id_card_front:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->e:Landroid/widget/TextView;

    sget v2, Lezg$l;->dt_certify_take_photo_tip_message:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    sget v1, Lezg$g;->rp_frontcardpic:I

    invoke-static {p0, v1}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 230
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->q:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 231
    iput-boolean v3, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->w:Z

    .line 252
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 232
    :cond_0
    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;->Back:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    if-ne p1, v1, :cond_1

    .line 233
    iget-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->r:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    iget-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->d:Landroid/widget/TextView;

    sget v2, Lezg$l;->dt_certify_take_photo_id_card_back:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->e:Landroid/widget/TextView;

    sget v2, Lezg$l;->dt_certify_take_photo_tip_message:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    sget v1, Lezg$g;->rp_backcardpic:I

    invoke-static {p0, v1}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 237
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->r:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 238
    iput-boolean v3, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->w:Z

    goto :goto_0

    .line 239
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;->Body:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    if-ne p1, v1, :cond_2

    .line 240
    iget-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 241
    iget-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->d:Landroid/widget/TextView;

    sget v2, Lezg$l;->dt_certify_take_photo_id_card_back:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->e:Landroid/widget/TextView;

    sget v2, Lezg$l;->dt_certify_take_photo_upper_body_tip_message:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    sget v1, Lezg$g;->rp_upperbodypic:I

    invoke-static {p0, v1}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 244
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 245
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->w:Z

    goto :goto_0

    .line 246
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;->Test:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    if-ne p1, v1, :cond_3

    .line 247
    iget-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->j:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 248
    iput-boolean v3, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->w:Z

    goto :goto_0

    .line 250
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->finish()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/certify/RPTakePhotoActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/certify/RPTakePhotoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->v:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/certify/RPTakePhotoActivity;)Lcom/taobao/ma/camera/CameraManager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/certify/RPTakePhotoActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->i:Lcom/taobao/ma/camera/CameraManager;

    return-object v0
.end method

.method private b()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 438
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->i:Lcom/taobao/ma/camera/CameraManager;

    if-eqz v2, :cond_1

    .line 439
    iget-object v6, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->i:Lcom/taobao/ma/camera/CameraManager;

    iget-boolean v7, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->w:Z

    .line 7667
    new-instance v8, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v8}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 7668
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v9

    .line 7670
    if-ltz v9, :cond_5

    move v2, v5

    .line 7674
    :goto_0
    if-ge v2, v9, :cond_5

    .line 7675
    invoke-static {v2, v8}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 7676
    iget v10, v8, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-eqz v7, :cond_3

    move v3, v4

    :goto_1
    if-ne v10, v3, :cond_4

    .line 439
    :goto_2
    invoke-virtual {v6, v2}, Lcom/taobao/ma/camera/CameraManager;->a(I)V

    .line 440
    iget-object v2, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->i:Lcom/taobao/ma/camera/CameraManager;

    iget-object v3, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->t:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Lcom/taobao/ma/camera/CameraManager;->a(Landroid/view/SurfaceHolder;)V

    .line 442
    iget-object v2, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->i:Lcom/taobao/ma/camera/CameraManager;

    .line 8359
    iget-object v0, v2, Lcom/taobao/ma/camera/CameraManager;->b:Landroid/hardware/Camera;

    .line 443
    .local v0, "camera":Landroid/hardware/Camera;
    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->G:Landroid/hardware/Camera$Size;

    .line 447
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->i:Lcom/taobao/ma/camera/CameraManager;

    invoke-virtual {v2}, Lcom/taobao/ma/camera/CameraManager;->c()V

    .line 448
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->v:Z

    .line 449
    iget-object v2, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->f:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 450
    iget-object v2, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->s:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    .end local v0    # "camera":Landroid/hardware/Camera;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->i:Lcom/taobao/ma/camera/CameraManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->i:Lcom/taobao/ma/camera/CameraManager;

    invoke-virtual {v2}, Lcom/taobao/ma/camera/CameraManager;->a()Z

    move-result v2

    if-nez v2, :cond_2

    .line 457
    invoke-direct {p0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->d()V

    .line 460
    :cond_2
    :goto_3
    return-void

    :cond_3
    move v3, v5

    .line 7676
    goto :goto_1

    .line 7674
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7681
    :cond_5
    const/4 v2, -0x1

    goto :goto_2

    .line 452
    :catch_0
    move-exception v1

    .line 453
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 454
    sget-object v2, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "doStartCamera: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 456
    iget-object v2, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->i:Lcom/taobao/ma/camera/CameraManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->i:Lcom/taobao/ma/camera/CameraManager;

    invoke-virtual {v2}, Lcom/taobao/ma/camera/CameraManager;->a()Z

    move-result v2

    if-nez v2, :cond_2

    .line 457
    invoke-direct {p0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->d()V

    goto :goto_3

    .line 456
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->i:Lcom/taobao/ma/camera/CameraManager;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->i:Lcom/taobao/ma/camera/CameraManager;

    invoke-virtual {v3}, Lcom/taobao/ma/camera/CameraManager;->a()Z

    move-result v3

    if-nez v3, :cond_6

    .line 457
    invoke-direct {p0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->d()V

    :cond_6
    throw v2
.end method

.method private c()V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->i:Lcom/taobao/ma/camera/CameraManager;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->i:Lcom/taobao/ma/camera/CameraManager;

    invoke-virtual {v0}, Lcom/taobao/ma/camera/CameraManager;->d()V

    .line 465
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->i:Lcom/taobao/ma/camera/CameraManager;

    invoke-virtual {v0}, Lcom/taobao/ma/camera/CameraManager;->b()V

    .line 467
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/user/certify/RPTakePhotoActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/certify/RPTakePhotoActivity;

    .prologue
    const/4 v2, 0x0

    .line 79
    .line 9327
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 9328
    iget-boolean v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->x:Z

    if-eqz v0, :cond_0

    .line 9329
    iget-boolean v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->z:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->w:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->v:Z

    if-nez v0, :cond_1

    .line 9330
    iget v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->c:I

    .line 9333
    iget v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->c:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 9334
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 9349
    :cond_0
    :goto_0
    return-void

    .line 9339
    :cond_1
    iput-boolean v2, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->y:Z

    .line 9340
    iput-boolean v2, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->x:Z

    .line 9341
    iput-boolean v2, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->v:Z

    .line 9342
    iput v2, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->c:I

    .line 9345
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->i:Lcom/taobao/ma/camera/CameraManager;

    .line 9359
    iget-object v0, v0, Lcom/taobao/ma/camera/CameraManager;->b:Landroid/hardware/Camera;

    .line 9345
    iget-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->I:Landroid/hardware/Camera$ShutterCallback;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->J:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9346
    :catch_0
    move-exception v0

    .line 9347
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 9348
    invoke-virtual {p0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->finish()V

    goto :goto_0
.end method

.method private d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 542
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 543
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lezg$l;->check_camera_setting:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 544
    sget v1, Lezg$l;->sure:I

    new-instance v2, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$5;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$5;-><init>(Lcom/alibaba/android/user/certify/RPTakePhotoActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 550
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 551
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/user/certify/RPTakePhotoActivity;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/user/certify/RPTakePhotoActivity;

    .prologue
    const/4 v3, 0x0

    const/16 v1, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 79
    .line 10284
    iput-boolean v6, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->v:Z

    .line 10285
    iput-boolean v5, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->y:Z

    .line 10287
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 10288
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 10290
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->u:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 10291
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 10292
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 10294
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->H:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->n:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->F:Ljava/lang/String;

    const/4 v4, 0x6

    move-object v7, v3

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 79
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/user/certify/RPTakePhotoActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/certify/RPTakePhotoActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method private e()Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 714
    const/4 v0, 0x0

    .line 716
    .local v0, "autoFocus":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "android.hardware.camera.autofocus"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 721
    :goto_0
    return v0

    .line 717
    :catch_0
    move-exception v1

    .line 718
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 719
    sget-object v2, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "checkAutoFocus: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v9, 0x8

    const/4 v4, 0x6

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 299
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    .line 300
    .local v8, "i":I
    sget v0, Lezg$h;->iv_switch_camera:I

    if-ne v8, v0, :cond_2

    .line 5473
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 5474
    iget-boolean v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->w:Z

    if-nez v0, :cond_1

    :goto_0
    iput-boolean v5, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->w:Z

    .line 5475
    invoke-direct {p0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->c()V

    .line 5476
    invoke-direct {p0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->b()V

    .line 7270
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v5, v6

    .line 5474
    goto :goto_0

    .line 303
    :cond_2
    sget v0, Lezg$h;->cancel_text:I

    if-ne v8, v0, :cond_3

    .line 304
    invoke-virtual {p0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->finish()V

    goto :goto_1

    .line 305
    :cond_3
    sget v0, Lezg$h;->reget_button:I

    if-ne v8, v0, :cond_4

    .line 306
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 307
    iput-boolean v6, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->v:Z

    .line 308
    iput-boolean v6, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->y:Z

    .line 309
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->H:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->n:Landroid/widget/ImageView;

    move-object v3, v2

    move-object v7, v2

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 310
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->u:Landroid/view/SurfaceView;

    invoke-virtual {v0, v6}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_1

    .line 314
    :cond_4
    sget v0, Lezg$h;->next_button:I

    if-ne v8, v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 316
    iput-boolean v6, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->v:Z

    .line 317
    iput-boolean v6, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->y:Z

    .line 318
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->H:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->n:Landroid/widget/ImageView;

    move-object v3, v2

    move-object v7, v2

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 5617
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->A:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;->Front:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    if-ne v0, v1, :cond_9

    .line 5618
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->p:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5619
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->q:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->a(Landroid/widget/ImageView;)V

    .line 5620
    iput-object v2, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->q:Landroid/widget/ImageView;

    .line 6556
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->F:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 6557
    new-instance v0, Lcom/alibaba/android/user/certify/ImageData;

    iget-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->F:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->A:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/certify/ImageData;-><init>(Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;)V

    .line 6558
    iget-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7256
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 7258
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->C:Ljava/util/ArrayList;

    iget v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->D:I

    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;->Done:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7261
    iget v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->D:I

    iget-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->C:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_7

    .line 7263
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->C:Ljava/util/ArrayList;

    iget v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->D:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    iput-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->A:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    .line 7264
    iget v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->D:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->D:I

    .line 7268
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->C:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->C:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;->Done:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    if-ne v0, v1, :cond_b

    .line 7566
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "intent_action_rp_take_photo"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7567
    const-string/jumbo v1, "intent_key_menu_seed"

    iget-wide v2, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->B:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 7568
    iget-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->E:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 7569
    const-string/jumbo v1, "intent_action_rp_take_photo_result"

    iget-object v2, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 7571
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "activity_identify"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7572
    const-string/jumbo v2, "activity_identify"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7573
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 7574
    invoke-virtual {p0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->finish()V

    goto/16 :goto_1

    .line 5621
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->A:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;->Back:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    if-ne v0, v1, :cond_a

    .line 5622
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->p:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5623
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->r:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->a(Landroid/widget/ImageView;)V

    .line 5624
    iput-object v2, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->r:Landroid/widget/ImageView;

    goto/16 :goto_2

    .line 5625
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->A:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;->Body:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    if-ne v0, v1, :cond_5

    .line 5626
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->p:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5627
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->h:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->a(Landroid/widget/ImageView;)V

    .line 5628
    iput-object v2, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->h:Landroid/widget/ImageView;

    goto/16 :goto_2

    .line 7273
    :cond_b
    iget-boolean v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->y:Z

    if-nez v0, :cond_c

    .line 7274
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->A:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->a(Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;)V

    .line 7275
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->u:Landroid/view/SurfaceView;

    invoke-virtual {v0, v6}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 7277
    :cond_c
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7278
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 137
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    sget v0, Lezg$j;->activity_rp_take_photo:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->setContentView(I)V

    .line 139
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->H:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 1177
    sget v0, Lezg$h;->rp_take_photo_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->k:Landroid/view/ViewGroup;

    .line 1178
    sget v0, Lezg$h;->take_modle_parent:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->p:Landroid/view/ViewGroup;

    .line 1179
    sget v0, Lezg$h;->detile_parent:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->j:Landroid/view/View;

    .line 1181
    sget v0, Lezg$h;->shenfenzheng_front_tips_img:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->q:Landroid/widget/ImageView;

    .line 1182
    sget v0, Lezg$h;->shenfenzheng_back_tips_img:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->r:Landroid/widget/ImageView;

    .line 1183
    sget v0, Lezg$h;->upper_body_tips_img:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->h:Landroid/widget/ImageView;

    .line 1185
    sget v0, Lezg$h;->tv_card_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->d:Landroid/widget/TextView;

    .line 1187
    sget v0, Lezg$h;->tv_take_photo_hint:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->e:Landroid/widget/TextView;

    .line 1189
    sget v0, Lezg$h;->iv_switch_camera:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->f:Landroid/widget/ImageView;

    .line 1190
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1191
    sget v0, Lezg$h;->rl_switch_camera_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->g:Landroid/widget/RelativeLayout;

    .line 1193
    sget v0, Lezg$h;->cancel_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1194
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1196
    sget v0, Lezg$h;->take_photo:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->s:Landroid/widget/ImageView;

    .line 1197
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1198
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->s:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$1;-><init>(Lcom/alibaba/android/user/certify/RPTakePhotoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1210
    sget v0, Lezg$h;->my_surfaceView:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->u:Landroid/view/SurfaceView;

    .line 1213
    sget v0, Lezg$h;->rp_preview_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->l:Landroid/view/ViewGroup;

    .line 1214
    sget v0, Lezg$h;->reget_button:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->m:Landroid/widget/TextView;

    .line 1215
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1216
    sget v0, Lezg$h;->next_button:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->o:Landroid/widget/TextView;

    .line 1217
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1218
    sget v0, Lezg$h;->picture:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->n:Landroid/widget/ImageView;

    .line 2168
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->u:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->t:Landroid/view/SurfaceHolder;

    .line 2169
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 2170
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->t:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 2172
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->t:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 3151
    invoke-virtual {p0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 3152
    if-eqz v1, :cond_2

    .line 3153
    const-string/jumbo v0, "intent_key_rp_take_photo_modes"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->C:Ljava/util/ArrayList;

    .line 3154
    const-string/jumbo v0, "intent_key_menu_seed"

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->B:J

    .line 3155
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->C:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3156
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    iput-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->A:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    .line 144
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->A:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->a(Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;)V

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->E:Ljava/util/ArrayList;

    .line 146
    invoke-direct {p0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->z:Z

    .line 3399
    :try_start_0
    new-instance v0, Lcom/taobao/ma/camera/CameraManager;

    invoke-direct {v0, p0}, Lcom/taobao/ma/camera/CameraManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->i:Lcom/taobao/ma/camera/CameraManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3403
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->i:Lcom/taobao/ma/camera/CameraManager;

    if-nez v0, :cond_3

    .line 3404
    invoke-direct {p0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->d()V

    .line 3405
    :goto_2
    return-void

    .line 3158
    :cond_1
    sget-object v0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->b:Ljava/lang/String;

    const-string/jumbo v1, "NO_TYPE"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3159
    invoke-virtual {p0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->finish()V

    goto :goto_0

    .line 3162
    :cond_2
    sget-object v0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->b:Ljava/lang/String;

    const-string/jumbo v1, "Intent is null"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3163
    invoke-virtual {p0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->finish()V

    goto :goto_0

    .line 3400
    :catch_0
    move-exception v0

    .line 3401
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 3409
    :cond_3
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, " "

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 3410
    iget-boolean v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->w:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "nexus6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3411
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3412
    const-string/jumbo v1, "nexus6"

    const/16 v2, 0xb4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3413
    iget-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->i:Lcom/taobao/ma/camera/CameraManager;

    .line 4375
    iget-object v1, v1, Lcom/taobao/ma/camera/CameraManager;->a:Ljmu;

    .line 5253
    iput-object v0, v1, Ljmu;->f:Ljava/util/Map;

    .line 3416
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->i:Lcom/taobao/ma/camera/CameraManager;

    .line 5367
    const-wide/16 v2, 0x3e8

    iput-wide v2, v0, Lcom/taobao/ma/camera/CameraManager;->c:J

    .line 3417
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->i:Lcom/taobao/ma/camera/CameraManager;

    new-instance v1, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$4;-><init>(Lcom/alibaba/android/user/certify/RPTakePhotoActivity;)V

    .line 5371
    iput-object v1, v0, Lcom/taobao/ma/camera/CameraManager;->d:Ljmt$b;

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 495
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->i:Lcom/taobao/ma/camera/CameraManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->i:Lcom/taobao/ma/camera/CameraManager;

    invoke-virtual {v0}, Lcom/taobao/ma/camera/CameraManager;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    invoke-direct {p0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->c()V

    .line 497
    iput-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->i:Lcom/taobao/ma/camera/CameraManager;

    .line 500
    :cond_0
    iput-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->n:Landroid/widget/ImageView;

    .line 501
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 502
    iput-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->a:Landroid/os/Handler;

    .line 503
    iput-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->C:Ljava/util/ArrayList;

    .line 504
    iput-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->J:Landroid/hardware/Camera$PictureCallback;

    .line 505
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->p:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 506
    iput-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->p:Landroid/view/ViewGroup;

    .line 507
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 508
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 509
    iput-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->l:Landroid/view/ViewGroup;

    .line 510
    iput-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->k:Landroid/view/ViewGroup;

    .line 511
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 512
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 522
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 481
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 483
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->u:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 484
    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 488
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onStop()V

    .line 490
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->u:Landroid/view/SurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 491
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 534
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 527
    invoke-direct {p0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->b()V

    .line 528
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->x:Z

    .line 529
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 538
    invoke-direct {p0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->c()V

    .line 539
    return-void
.end method
