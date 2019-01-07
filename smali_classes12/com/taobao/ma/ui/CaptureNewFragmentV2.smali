.class public Lcom/taobao/ma/ui/CaptureNewFragmentV2;
.super Lcom/taobao/ma/ui/ScanBaseFragment;
.source "CaptureNewFragmentV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lemp$a;


# annotations
.annotation build Lcom/alibaba/android/dingtalk/permission/annotation/RuntimePermissions;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/ma/ui/CaptureNewFragmentV2$a;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field public a:Lcom/alipay/mobile/bqcscanservice/f;

.field public b:Lemq;

.field private f:Lcom/alibaba/android/scan/widget/APTextureView;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:Landroid/media/SoundPool;

.field private m:Landroid/content/BroadcastReceiver;

.field private n:Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;

.field private o:Lcom/alibaba/android/scan/widget/ToolScanTopView;

.field private p:Lcom/alipay/mobile/bqcscanservice/d;

.field private q:Lemp;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Landroid/graphics/Rect;

.field private v:J

.field private w:Ljava/lang/String;

.field private x:Lcom/alipay/mobile/bqcscanservice/a;

.field private y:Lcom/alibaba/android/scan/widget/ToolScanTopView$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-class v0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Lcom/taobao/ma/ui/ScanBaseFragment;-><init>()V

    .line 85
    iput-boolean v1, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->g:Z

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->h:Z

    .line 87
    iput-boolean v1, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->i:Z

    .line 91
    sget-object v0, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;->ALL:Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;

    iput-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->n:Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;

    .line 97
    iput-boolean v1, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->r:Z

    .line 100
    iput-boolean v1, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->s:Z

    .line 101
    iput-boolean v1, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->t:Z

    .line 104
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->v:J

    .line 107
    new-instance v0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$1;

    invoke-direct {v0, p0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2$1;-><init>(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)V

    iput-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->x:Lcom/alipay/mobile/bqcscanservice/a;

    .line 190
    new-instance v0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$2;

    invoke-direct {v0, p0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2$2;-><init>(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)V

    iput-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->y:Lcom/alibaba/android/scan/widget/ToolScanTopView$a;

    .line 685
    return-void
.end method

.method static synthetic a(Lcom/taobao/ma/ui/CaptureNewFragmentV2;J)J
    .locals 1
    .param p0, "x0"    # Lcom/taobao/ma/ui/CaptureNewFragmentV2;
    .param p1, "x1"    # J

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->v:J

    return-wide p1
.end method

.method private a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 12
    .param p1, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x0

    .line 550
    const/4 v10, 0x0

    .line 552
    .local v10, "path":Ljava/lang/String;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 554
    .local v1, "originalUri":Landroid/net/Uri;
    const-string/jumbo v0, "file"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 555
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 568
    :goto_0
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 569
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "pick image file exists:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 575
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "pick image:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v1    # "originalUri":Landroid/net/Uri;
    .end local v9    # "file":Ljava/io/File;
    :cond_0
    :goto_2
    move-object v0, v10

    .line 580
    :goto_3
    return-object v0

    .line 557
    .restart local v1    # "originalUri":Landroid/net/Uri;
    :cond_1
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "_data"

    aput-object v3, v2, v0

    .line 560
    .local v2, "proj":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 561
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_2

    move-object v0, v11

    .line 562
    goto :goto_3

    .line 564
    :cond_2
    const-string/jumbo v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 565
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 566
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    goto :goto_0

    .line 573
    .end local v2    # "proj":[Ljava/lang/String;
    .end local v6    # "column_index":I
    .end local v7    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "file":Ljava/io/File;
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 577
    .end local v1    # "originalUri":Landroid/net/Uri;
    .end local v9    # "file":Ljava/io/File;
    :catch_0
    move-exception v8

    .line 578
    .local v8, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "get image error:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method static synthetic a(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->i()V

    return-void
.end method

.method static synthetic a(Lcom/taobao/ma/ui/CaptureNewFragmentV2;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/ma/ui/CaptureNewFragmentV2;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/taobao/ma/ui/CaptureNewFragmentV2;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/ma/ui/CaptureNewFragmentV2;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->t:Z

    return v0
.end method

.method static synthetic c(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)Lcom/alipay/mobile/bqcscanservice/d;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->p:Lcom/alipay/mobile/bqcscanservice/d;

    return-object v0
.end method

.method static synthetic d(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->s:Z

    return v0
.end method

.method static synthetic e(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)V
    .locals 8
    .param p0, "x0"    # Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v0, 0x3fc00000    # 1.5f

    const/4 v6, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 79
    .line 12331
    iget-object v2, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->o:Lcom/alibaba/android/scan/widget/ToolScanTopView;

    .line 13086
    iget-object v2, v2, Lcom/alibaba/android/scan/widget/ToolScanTopView;->b:Lcom/alibaba/android/scan/widget/ScanRayView;

    .line 14040
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alibaba/android/scan/widget/ScanRayView;->setVisibility(I)V

    .line 14041
    iget-object v3, v2, Lcom/alibaba/android/scan/widget/ScanRayView;->a:Landroid/view/animation/ScaleAnimation;

    if-nez v3, :cond_0

    .line 14042
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v3, v1, v1, v6, v1}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    iput-object v3, v2, Lcom/alibaba/android/scan/widget/ScanRayView;->a:Landroid/view/animation/ScaleAnimation;

    .line 14043
    iget-object v3, v2, Lcom/alibaba/android/scan/widget/ScanRayView;->a:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v4, 0x5dc

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 14044
    iget-object v3, v2, Lcom/alibaba/android/scan/widget/ScanRayView;->a:Landroid/view/animation/ScaleAnimation;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 14045
    iget-object v3, v2, Lcom/alibaba/android/scan/widget/ScanRayView;->a:Landroid/view/animation/ScaleAnimation;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    .line 14046
    iget-object v3, v2, Lcom/alibaba/android/scan/widget/ScanRayView;->a:Landroid/view/animation/ScaleAnimation;

    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 14047
    iget-object v3, v2, Lcom/alibaba/android/scan/widget/ScanRayView;->a:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/scan/widget/ScanRayView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 12332
    :cond_0
    iget-object v2, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->u:Landroid/graphics/Rect;

    if-nez v2, :cond_1

    .line 12333
    iget-object v2, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->o:Lcom/alibaba/android/scan/widget/ToolScanTopView;

    iget-object v3, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->a:Lcom/alipay/mobile/bqcscanservice/f;

    .line 12334
    invoke-interface {v3}, Lcom/alipay/mobile/bqcscanservice/f;->d()Landroid/hardware/Camera;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->f:Lcom/alibaba/android/scan/widget/APTextureView;

    invoke-virtual {v4}, Lcom/alibaba/android/scan/widget/APTextureView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->f:Lcom/alibaba/android/scan/widget/APTextureView;

    invoke-virtual {v5}, Lcom/alibaba/android/scan/widget/APTextureView;->getHeight()I

    move-result v5

    .line 12333
    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/android/scan/widget/ToolScanTopView;->a(Landroid/hardware/Camera;II)Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->u:Landroid/graphics/Rect;

    .line 12336
    iget-object v2, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->o:Lcom/alibaba/android/scan/widget/ToolScanTopView;

    invoke-virtual {v2}, Lcom/alibaba/android/scan/widget/ToolScanTopView;->getCropWidth()F

    move-result v2

    .line 12337
    cmpl-float v3, v2, v6

    if-lez v3, :cond_1

    .line 12339
    iget v3, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->j:I

    int-to-float v3, v3

    .line 12340
    iget v4, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->k:I

    int-to-float v4, v4

    .line 12341
    div-float v2, v3, v2

    .line 12342
    cmpg-float v5, v2, v1

    if-gez v5, :cond_3

    .line 12345
    :goto_0
    cmpl-float v2, v1, v0

    if-lez v2, :cond_2

    .line 12348
    :goto_1
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 12349
    div-float v2, v3, v7

    div-float v3, v4, v7

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 12350
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->f:Lcom/alibaba/android/scan/widget/APTextureView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/scan/widget/APTextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 12354
    :cond_1
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->a:Lcom/alipay/mobile/bqcscanservice/f;

    iget-object v1, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->u:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/bqcscanservice/f;->a(Landroid/graphics/Rect;)V

    .line 79
    return-void

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method static synthetic f(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)Lcom/alipay/mobile/bqcscanservice/f;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->a:Lcom/alipay/mobile/bqcscanservice/f;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)V
    .locals 3
    .param p0, "x0"    # Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    .prologue
    .line 79
    .line 14438
    iget-boolean v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->i:Z

    if-eqz v0, :cond_1

    .line 14446
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 14447
    sget v1, Lelh$h;->keep_scan_tips:I

    invoke-virtual {p0, v1}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 14449
    sget v1, Lelh$h;->sure:I

    new-instance v2, Lcom/taobao/ma/ui/CaptureNewFragmentV2$5;

    invoke-direct {v2, p0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2$5;-><init>(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 14456
    sget v1, Lelh$h;->cancel:I

    new-instance v2, Lcom/taobao/ma/ui/CaptureNewFragmentV2$6;

    invoke-direct {v2, p0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2$6;-><init>(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 14463
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 14439
    :cond_0
    :goto_0
    return-void

    .line 14440
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14441
    invoke-virtual {p0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method static synthetic h(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)V
    .locals 7
    .param p0, "x0"    # Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 79
    .line 14496
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->l:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 14497
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->l:Landroid/media/SoundPool;

    const/4 v1, 0x1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 79
    :cond_0
    return-void
.end method

.method private i()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 290
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->f:Lcom/alibaba/android/scan/widget/APTextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->a:Lcom/alipay/mobile/bqcscanservice/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->p:Lcom/alipay/mobile/bqcscanservice/d;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->a:Lcom/alipay/mobile/bqcscanservice/f;

    iget-object v1, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->f:Lcom/alibaba/android/scan/widget/APTextureView;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/bqcscanservice/f;->a(Landroid/view/TextureView;)V

    .line 292
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->q:Lemp;

    .line 6042
    iget-object v1, v0, Lemp;->b:Landroid/os/Handler;

    new-instance v2, Lemp$2;

    invoke-direct {v2, v0}, Lemp$2;-><init>(Lemp;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6298
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->a:Lcom/alipay/mobile/bqcscanservice/f;

    if-eqz v0, :cond_0

    .line 6301
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->q:Lemp;

    .line 7059
    iget-object v1, v0, Lemp;->b:Landroid/os/Handler;

    new-instance v2, Lemp$3;

    invoke-direct {v2, v0}, Lemp$3;-><init>(Lemp;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6302
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->q:Lemp;

    iget-object v1, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->n:Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;

    .line 7068
    iget-object v2, v0, Lemp;->b:Landroid/os/Handler;

    new-instance v3, Lemp$4;

    invoke-direct {v3, v0, v1}, Lemp$4;-><init>(Lemp;Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 295
    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->h:Z

    return v0
.end method

.method private j()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 316
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->q:Lemp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->p:Lcom/alipay/mobile/bqcscanservice/d;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->p:Lcom/alipay/mobile/bqcscanservice/d;

    .line 7151
    iget-object v1, v0, Lcom/alipay/mobile/bqcscanservice/d;->a:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/mobile/bqcscanservice/d$6;

    invoke-direct {v2, v0}, Lcom/alipay/mobile/bqcscanservice/d$6;-><init>(Lcom/alipay/mobile/bqcscanservice/d;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 318
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->q:Lemp;

    .line 8083
    iget-object v1, v0, Lemp;->b:Landroid/os/Handler;

    new-instance v2, Lemp$5;

    invoke-direct {v2, v0}, Lemp$5;-><init>(Lemp;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 319
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->p:Lcom/alipay/mobile/bqcscanservice/d;

    iget-wide v2, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->v:J

    .line 8193
    iget-object v1, v0, Lcom/alipay/mobile/bqcscanservice/d;->a:Landroid/os/Handler;

    new-instance v4, Lcom/alipay/mobile/bqcscanservice/d$2;

    invoke-direct {v4, v0, v2, v3}, Lcom/alipay/mobile/bqcscanservice/d$2;-><init>(Lcom/alipay/mobile/bqcscanservice/d;J)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 321
    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->j()V

    return-void
.end method

.method static synthetic k(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)Lcom/alibaba/android/scan/widget/ToolScanTopView;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->o:Lcom/alibaba/android/scan/widget/ToolScanTopView;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/scan/widget/ScanType;)Lcom/alipay/mobile/bqcscanservice/b$a;
    .locals 2
    .param p1, "type"    # Lcom/alibaba/android/scan/widget/ScanType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 643
    const/4 v0, 0x0

    .line 644
    .local v0, "maCallback":Lcom/taobao/ma/ui/CaptureNewFragmentV2$a;
    sget-object v1, Lcom/alibaba/android/scan/widget/ScanType;->SCAN_MA:Lcom/alibaba/android/scan/widget/ScanType;

    if-ne p1, v1, :cond_0

    .line 645
    new-instance v0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$9;

    .end local v0    # "maCallback":Lcom/taobao/ma/ui/CaptureNewFragmentV2$a;
    invoke-direct {v0, p0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2$9;-><init>(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)V

    .line 676
    .restart local v0    # "maCallback":Lcom/taobao/ma/ui/CaptureNewFragmentV2$a;
    :cond_0
    return-object v0
.end method

.method public final a(I)V
    .locals 1
    .param p1, "zoom"    # I

    .prologue
    .line 383
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->a:Lcom/alipay/mobile/bqcscanservice/f;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->a:Lcom/alipay/mobile/bqcscanservice/f;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/bqcscanservice/f;->a(I)V

    .line 386
    :cond_0
    return-void
.end method

.method public final a(Lcom/alipay/mobile/mascanengine/MaScanResult;)V
    .locals 1
    .param p1, "result"    # Lcom/alipay/mobile/mascanengine/MaScanResult;

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    :goto_0
    return-void

    .line 362
    :cond_0
    new-instance v0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$4;

    invoke-direct {v0, p0, p1}, Lcom/taobao/ma/ui/CaptureNewFragmentV2$4;-><init>(Lcom/taobao/ma/ui/CaptureNewFragmentV2;Lcom/alipay/mobile/mascanengine/MaScanResult;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 6
    .annotation runtime Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;
        value = {
            "android.permission.CAMERA"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x3

    .line 307
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->p:Lcom/alipay/mobile/bqcscanservice/d;

    invoke-virtual {p0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->x:Lcom/alipay/mobile/bqcscanservice/a;

    .line 7083
    iget-object v3, v0, Lcom/alipay/mobile/bqcscanservice/d;->a:Landroid/os/Handler;

    new-instance v4, Lcom/alipay/mobile/bqcscanservice/d$3;

    invoke-direct {v4, v0, v1, v2}, Lcom/alipay/mobile/bqcscanservice/d$3;-><init>(Lcom/alipay/mobile/bqcscanservice/d;Landroid/content/Context;Lcom/alipay/mobile/bqcscanservice/a;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 308
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->q:Lemp;

    invoke-virtual {p0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 7102
    iget-object v2, v0, Lemp;->b:Landroid/os/Handler;

    new-instance v3, Lemp$7;

    invoke-direct {v3, v0, v1, p0}, Lemp$7;-><init>(Lemp;Landroid/content/Context;Lemp$a;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 311
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->p:Lcom/alipay/mobile/bqcscanservice/d;

    .line 7116
    const-string/jumbo v1, "CameraScanHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "In openCamera()"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/alipay/mobile/bqcscanservice/d;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7117
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, v0, Lcom/alipay/mobile/bqcscanservice/d;->a:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 7118
    iget v1, v0, Lcom/alipay/mobile/bqcscanservice/d;->c:I

    if-le v5, v1, :cond_0

    .line 7121
    iget-object v1, v0, Lcom/alipay/mobile/bqcscanservice/d;->b:Lcom/alipay/mobile/bqcscanservice/f;

    invoke-interface {v1}, Lcom/alipay/mobile/bqcscanservice/f;->a()V

    .line 7122
    iput v5, v0, Lcom/alipay/mobile/bqcscanservice/d;->c:I

    .line 312
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->a:Lcom/alipay/mobile/bqcscanservice/f;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/bqcscanservice/f;->a(Z)V

    .line 313
    return-void

    .line 7124
    :cond_1
    iget-object v1, v0, Lcom/alipay/mobile/bqcscanservice/d;->a:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/mobile/bqcscanservice/d$4;

    invoke-direct {v2, v0}, Lcom/alipay/mobile/bqcscanservice/d$4;-><init>(Lcom/alipay/mobile/bqcscanservice/d;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method final d()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 415
    iget-boolean v1, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->r:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->t:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->o:Lcom/alibaba/android/scan/widget/ToolScanTopView;

    if-eqz v1, :cond_0

    .line 418
    :try_start_0
    invoke-static {p0}, Ljnd;->a(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->e:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "autoStartScan: Exception "

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final f()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 621
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 622
    invoke-virtual {p0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 623
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-virtual {p0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lelh$a;->scan_qr_option_menu2:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 624
    .local v1, "menus":[Ljava/lang/String;
    new-instance v2, Lcom/taobao/ma/ui/CaptureNewFragmentV2$8;

    invoke-direct {v2, p0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2$8;-><init>(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 637
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 638
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 639
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 535
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/ma/ui/ScanBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 536
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    .line 537
    invoke-virtual {p0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 538
    invoke-direct {p0, p3}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 11467
    sget-object v1, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->e:Ljava/lang/String;

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lcom/taobao/ma/ui/CaptureNewFragmentV2$7;

    invoke-direct {v2, p0, v0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2$7;-><init>(Lcom/taobao/ma/ui/CaptureNewFragmentV2;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 547
    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 544
    .restart local v0    # "path":Ljava/lang/String;
    :cond_1
    sget v1, Lelh$h;->pic_decode_fail:I

    invoke-static {v1}, Lcms;->a(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 601
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lelh$e;->img_back:I

    if-ne v0, v1, :cond_0

    .line 602
    invoke-virtual {p0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 604
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 225
    invoke-super {p0, p1}, Lcom/taobao/ma/ui/ScanBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 227
    iget-object v1, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->m:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 228
    new-instance v1, Lcom/taobao/ma/ui/CaptureNewFragmentV2$3;

    invoke-direct {v1, p0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2$3;-><init>(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)V

    iput-object v1, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->m:Landroid/content/BroadcastReceiver;

    .line 235
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 236
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.alibaba.dingtalk.telebase.action.CANCEL_SYSCALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    const-string/jumbo v1, "com.alibaba.dingtalk.telebase.action.CREATE_SYSCALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1258
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    new-instance v1, Lemq;

    invoke-direct {v1, p0}, Lemq;-><init>(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)V

    iput-object v1, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->b:Lemq;

    .line 1259
    new-instance v1, Liiz;

    invoke-direct {v1}, Liiz;-><init>()V

    iput-object v1, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->a:Lcom/alipay/mobile/bqcscanservice/f;

    .line 1260
    iget-object v1, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->a:Lcom/alipay/mobile/bqcscanservice/f;

    invoke-interface {v1}, Lcom/alipay/mobile/bqcscanservice/f;->g()V

    .line 1261
    iget-object v1, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->a:Lcom/alipay/mobile/bqcscanservice/f;

    invoke-interface {v1}, Lcom/alipay/mobile/bqcscanservice/f;->f()Lcom/alipay/mobile/bqcscanservice/d;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->p:Lcom/alipay/mobile/bqcscanservice/d;

    .line 1262
    new-instance v1, Lemp;

    invoke-direct {v1}, Lemp;-><init>()V

    iput-object v1, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->q:Lemp;

    .line 1263
    iget-object v1, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->q:Lemp;

    iget-object v2, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->a:Lcom/alipay/mobile/bqcscanservice/f;

    .line 2033
    iget-object v3, v1, Lemp;->b:Landroid/os/Handler;

    new-instance v4, Lemp$1;

    invoke-direct {v4, v1, v2}, Lemp$1;-><init>(Lemp;Lcom/alipay/mobile/bqcscanservice/f;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1265
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->r:Z

    .line 1267
    :try_start_0
    invoke-static {p0}, Ljnd;->a(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1270
    :goto_0
    return-void

    .line 1268
    :catch_0
    move-exception v1

    .line 1269
    sget-object v2, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "autoStartScan: Exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 246
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/ma/ui/ScanBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 2395
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "qrcode_jump_activity_key"

    .line 2396
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->h:Z

    .line 2397
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "intent_key_ma_code_type"

    sget-object v3, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;->ALL:Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;->value()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2398
    invoke-static {v0}, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;->fromValue(I)Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->n:Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;

    .line 2399
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "keep_scan_key"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->i:Z

    .line 2400
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "from"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->w:Ljava/lang/String;

    .line 3274
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->I:Landroid/view/View;

    sget v2, Lelh$e;->surfaceView:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/scan/widget/APTextureView;

    iput-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->f:Lcom/alibaba/android/scan/widget/APTextureView;

    .line 3275
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->I:Landroid/view/View;

    sget v2, Lelh$e;->top_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/scan/widget/ToolScanTopView;

    iput-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->o:Lcom/alibaba/android/scan/widget/ToolScanTopView;

    .line 3276
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->o:Lcom/alibaba/android/scan/widget/ToolScanTopView;

    iget-object v2, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->y:Lcom/alibaba/android/scan/widget/ToolScanTopView$a;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/scan/widget/ToolScanTopView;->setTopViewCallback(Lcom/alibaba/android/scan/widget/ToolScanTopView$a;)V

    .line 3277
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->o:Lcom/alibaba/android/scan/widget/ToolScanTopView;

    .line 4055
    iput-object p0, v0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->d:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    .line 3278
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->o:Lcom/alibaba/android/scan/widget/ToolScanTopView;

    iget-object v2, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/scan/widget/ToolScanTopView;->setFromPage(Ljava/lang/String;)V

    .line 3279
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "intent_key_tips"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3280
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3281
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->I:Landroid/view/View;

    sget v3, Lelh$e;->txt_qr_barcode_tip:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3283
    :cond_0
    invoke-direct {p0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->i()V

    .line 4609
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v2, "android.hardware.camera.autofocus"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 4614
    :goto_0
    if-nez v0, :cond_1

    .line 4615
    sget v0, Lelh$h;->loss_auto_focus:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 5488
    :cond_1
    :try_start_1
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    const/4 v2, 0x1

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->l:Landroid/media/SoundPool;

    .line 5489
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->l:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lelh$g;->kakalib_scan:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 252
    :goto_1
    invoke-virtual {p0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->j:I

    .line 253
    invoke-virtual {p0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->k:I

    .line 254
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->I:Landroid/view/View;

    return-object v0

    .line 4612
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 5491
    :catch_1
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->l:Landroid/media/SoundPool;

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 509
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->q:Lemp;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->q:Lemp;

    .line 9092
    iget-object v1, v0, Lemp;->b:Landroid/os/Handler;

    new-instance v2, Lemp$6;

    invoke-direct {v2, v0}, Lemp$6;-><init>(Lemp;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 511
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->q:Lemp;

    .line 10029
    iget-object v0, v0, Lemp;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->o:Lcom/alibaba/android/scan/widget/ToolScanTopView;

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->o:Lcom/alibaba/android/scan/widget/ToolScanTopView;

    .line 10059
    iput-object v3, v0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->d:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    .line 516
    :cond_1
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->b:Lemq;

    if-eqz v0, :cond_2

    .line 517
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->b:Lemq;

    .line 11023
    iput-object v3, v0, Lemq;->b:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    .line 520
    :cond_2
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->m:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 521
    invoke-virtual {p0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 522
    iput-object v3, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->m:Landroid/content/BroadcastReceiver;

    .line 525
    :cond_3
    invoke-super {p0}, Lcom/taobao/ma/ui/ScanBaseFragment;->onDestroy()V

    .line 526
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 427
    .line 8432
    iput-boolean v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->s:Z

    .line 8433
    iput-boolean v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->r:Z

    .line 8434
    invoke-direct {p0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->j()V

    .line 428
    invoke-super {p0}, Lcom/taobao/ma/ui/ScanBaseFragment;->onPause()V

    .line 429
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 503
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/ma/ui/ScanBaseFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 504
    invoke-static {p0, p1, p3}, Ljnd;->a(Lcom/taobao/ma/ui/CaptureNewFragmentV2;I[I)V

    .line 505
    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 405
    invoke-super {p0}, Lcom/taobao/ma/ui/ScanBaseFragment;->onResume()V

    .line 406
    iput-boolean v1, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->s:Z

    .line 408
    invoke-virtual {p0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.CAMERA"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->d()V

    .line 412
    :cond_0
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 530
    sget v0, Lelh$f;->layout_capture_fragment:I

    return v0
.end method
