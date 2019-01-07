.class public Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;
.super Landroid/app/Activity;
.source "CameraActivity2.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Lgsg;


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Lcom/alibaba/dingtalk/facebox/model/DetectResult;

.field private G:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

.field private H:Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;

.field private I:Lgtc;

.field private J:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter;

.field private K:J

.field private L:J

.field private M:J

.field private N:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

.field private O:Z

.field private P:Z

.field private Q:I

.field private R:Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;

.field private S:I

.field private T:Z

.field private U:J

.field private V:I

.field private W:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private X:Landroid/net/Uri;

.field private Y:Z

.field private Z:Z

.field a:Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;

.field private aa:I

.field private ab:I

.field private ac:Z

.field private ad:Lgsk;

.field private ae:Z

.field private af:Z

.field private ag:Ljava/lang/String;

.field private ah:Z

.field private ai:Landroid/graphics/Rect;

.field b:Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;

.field c:Landroid/content/BroadcastReceiver;

.field d:Landroid/os/Handler;

.field e:Lgse$a;

.field private g:Landroid/widget/ImageView;

.field private h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/view/View;

.field private o:Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;

.field private p:Landroid/view/View;

.field private q:Landroid/widget/ImageView;

.field private r:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private s:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private t:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private u:Landroid/view/View;

.field private v:Landroid/view/View;

.field private w:I

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const-class v0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 119
    iput v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->w:I

    .line 131
    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->F:Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    .line 133
    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->G:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    .line 134
    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->H:Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;

    .line 135
    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->I:Lgtc;

    .line 136
    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->J:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter;

    .line 138
    iput-wide v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->K:J

    .line 139
    iput-wide v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->L:J

    .line 140
    iput-wide v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->M:J

    .line 141
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->N:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 147
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->P:Z

    .line 156
    iput v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->S:I

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->T:Z

    .line 164
    iput v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->V:I

    .line 167
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->W:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 177
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->aa:I

    .line 180
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->ac:Z

    .line 182
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->ae:Z

    .line 183
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->af:Z

    .line 418
    new-instance v0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$17;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$17;-><init>(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->c:Landroid/content/BroadcastReceiver;

    .line 481
    new-instance v0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$2;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$2;-><init>(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->d:Landroid/os/Handler;

    .line 507
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->ah:Z

    .line 620
    new-instance v0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;-><init>(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->e:Lgse$a;

    return-void
.end method

.method static synthetic A(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->M:J

    return-wide v0
.end method

.method static synthetic B(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->L:J

    return-wide v0
.end method

.method static synthetic C(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->N:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    return-object v0
.end method

.method static synthetic D(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->f()V

    return-void
.end method

.method private static a(Ljava/lang/String;)F
    .locals 2
    .param p0, "num"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1238
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1245
    :goto_0
    return v0

    .line 1242
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1245
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    .prologue
    .line 86
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->Q:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;
    .param p1, "x1"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->Q:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;
    .param p1, "x1"    # J

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->M:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->ai:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;Lcom/alibaba/dingtalk/facebox/model/DetectResult;)Lcom/alibaba/dingtalk/facebox/model/DetectResult;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->F:Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;Landroid/net/Uri;)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;
    .param p1, "x1"    # Landroid/net/Uri;

    #test 修改考勤打卡图片uri
    invoke-static {p1}, Lcom/langzu/baozha/ddutil/DDUtil;->getCinfImgUri(Landroid/net/Uri;)Landroid/net/Uri;
    move-result-object p1

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 86
    .line 19509
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->ah:Z

    if-nez v0, :cond_2

    .line 19512
    if-eqz p1, :cond_2

    .line 19513
    iput-boolean v4, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->ah:Z

    .line 19514
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19515
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 19516
    invoke-static {}, Lciz;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 19518
    const-string/jumbo v1, "time"

    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19519
    const-string/jumbo v1, "username"

    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19520
    const-string/jumbo v1, "address"

    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19521
    const-string/jumbo v1, "dateWeather"

    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19522
    const-string/jumbo v1, "mode"

    iget v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->S:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 19523
    const-string/jumbo v1, "photoStatus"

    iget v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->V:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 19524
    const-string/jumbo v1, "orientation"

    iget v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->Q:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 19525
    const-string/jumbo v1, "userId"

    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->C:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19526
    const-string/jumbo v1, "corpId"

    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->B:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19532
    iget v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->ab:I

    if-lez v1, :cond_3

    .line 19533
    const-string/jumbo v1, "smileScore"

    iget v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->ab:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19545
    :cond_0
    :goto_0
    iget v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->S:I

    if-ne v1, v4, :cond_1

    .line 19546
    const-string/jumbo v1, "decorate"

    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->ai:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 19547
    const-string/jumbo v1, "decorateUri"

    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->ag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19549
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 19551
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 19552
    const-string/jumbo v4, "duration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->U:J

    sub-long/2addr v2, v6

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19554
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    sget-object v3, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->f:Ljava/lang/String;

    const-string/jumbo v4, "oa_m2_attendance_appcheck_suc"

    invoke-interface {v2, v3, v4, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 19556
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_4

    .line 19557
    new-array v1, v8, [Landroid/util/Pair;

    invoke-static {p0, v1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v8, v1}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    :cond_2
    :goto_1
    return-void

    .line 19535
    :cond_3
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->F:Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    if-eqz v1, :cond_0

    .line 19536
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->F:Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    iget-object v1, v1, Lcom/alibaba/dingtalk/facebox/model/DetectResult;->smileFaceScore:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->a(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 19537
    const-string/jumbo v2, "smileScore"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 19559
    :cond_4
    invoke-virtual {p0, v0, v8}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->startActivityForResult(Landroid/content/Intent;I)V

    .line 19560
    sget v0, Lgrv$a;->pic_edit_in:I

    sget v1, Lgrv$a;->camera_out:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->overridePendingTransition(II)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 86
    .line 19834
    invoke-direct {p0, v3}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->a(Z)V

    .line 19835
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->i:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 19836
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->p:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19837
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 19838
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19839
    sget v1, Lgrv$f;->iatc_system_busy_try_again:I

    invoke-static {v1}, Leda;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 19841
    .end local p1    # "x1":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 19842
    sget v1, Lgrv$f;->dt_common_i_know:I

    new-instance v2, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$6;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$6;-><init>(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 19849
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 19850
    if-eqz v1, :cond_1

    .line 19851
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 19852
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 86
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->a(Z)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->a(ZLjava/lang/String;)V

    return-void
.end method

.method private a(Z)V
    .locals 2
    .param p1, "score"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1197
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->S:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->ae:Z

    if-eqz v0, :cond_1

    .line 1208
    :cond_0
    :goto_0
    return-void

    .line 1200
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->H:Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->H:Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;

    .line 13100
    iget-boolean v0, v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->e:Z

    .line 1200
    if-eqz v0, :cond_0

    .line 1203
    if-eqz p1, :cond_2

    .line 1204
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->u:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1206
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->u:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(ZLjava/lang/String;)V
    .locals 2
    .param p1, "tips"    # Z
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1211
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->S:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1212
    if-eqz p1, :cond_1

    .line 1213
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->m:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1214
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1215
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1221
    :cond_0
    :goto_0
    return-void

    .line 1218
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->m:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;
    .param p1, "x1"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->ab:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->X:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->o:Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->af:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;
    .param p1, "x1"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->V:I

    return p1
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->W:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->ac:Z

    return v0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;
    .param p1, "x1"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->aa:I

    return p1
.end method

.method private d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 462
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->c:Landroid/content/BroadcastReceiver;

    .line 463
    return-void
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    .prologue
    .line 86
    .line 13674
    const-string/jumbo v0, "facebox"

    sget-object v1, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->f:Ljava/lang/String;

    const-string/jumbo v2, "[Camera] takePhoto start ..."

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13675
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->R:Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;

    if-eqz v0, :cond_0

    .line 13676
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->R:Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->getCameraRenderer()Lgse;

    move-result-object v0

    .line 14122
    const/4 v1, 0x1

    iput-boolean v1, v0, Lgse;->d:Z

    .line 13678
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->L:J

    .line 13679
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->N:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string/jumbo v1, "RECOG_BF_TIME"

    iget-wide v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->L:J

    iget-wide v4, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->K:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 86
    return-void
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->Y:Z

    return v0
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->r:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    return-object v0
.end method

.method private e()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 566
    invoke-direct {p0, v3}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->a(Z)V

    .line 567
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lgrv$f;->dt_facebox_face_recognition_default_tips:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->a(ZLjava/lang/String;)V

    .line 568
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->i:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 569
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->p:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 570
    return-void
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->Z:Z

    return v0
.end method

.method static synthetic f(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->s:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    return-object v0
.end method

.method private f()V
    .locals 0

    .prologue
    .line 867
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->a()V

    .line 868
    invoke-direct {p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->g()V

    .line 869
    invoke-direct {p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->e()V

    .line 870
    return-void
.end method

.method static synthetic g(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->t:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    return-object v0
.end method

.method private g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 966
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->o:Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->o:Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;

    .line 8110
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->b:[Landroid/hardware/Camera$Face;

    .line 8111
    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->c:I

    .line 8112
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->invalidate()V

    .line 969
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    .prologue
    .line 86
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->ab:I

    return v0
.end method

.method static synthetic i(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->H:Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 86
    .line 14467
    invoke-direct {p0, v1}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->a(Z)V

    .line 14468
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lgrv$f;->dt_facebox_face_recognition:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->a(ZLjava/lang/String;)V

    .line 14469
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->i:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 14470
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->p:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14471
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->ad:Lgsk;

    if-nez v2, :cond_0

    .line 14472
    new-instance v2, Lgsk;

    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->o:Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;

    invoke-direct {v2, v3}, Lgsk;-><init>(Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;)V

    iput-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->ad:Lgsk;

    .line 14474
    :cond_0
    invoke-static {}, Lgsp;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 14475
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->ad:Lgsk;

    invoke-virtual {v2}, Lgsk;->a()V

    .line 14477
    :cond_1
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->ae:Z

    .line 14687
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    sget-object v3, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->f:Ljava/lang/String;

    const-string/jumbo v4, "oa_m2_attendance_facecheck_start"

    invoke-interface {v2, v3, v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 14691
    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->X:Landroid/net/Uri;

    .line 14692
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->Y:Z

    .line 14693
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->Z:Z

    .line 14698
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 15049
    new-instance v3, Lgsa;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lgsa;-><init>(ZZZ)V

    .line 14699
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14700
    iget-boolean v3, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->T:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->H:Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->H:Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;

    .line 16040
    iget-object v4, v3, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->b:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->a(Landroid/content/Context;)Lhyz;

    move-result-object v3

    .line 16041
    if-eqz v3, :cond_3

    .line 14700
    :goto_0
    if-eqz v0, :cond_4

    .line 16053
    :cond_2
    new-instance v0, Lgsa;

    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4}, Lgsa;-><init>(ZZZ)V

    .line 14701
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14706
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->U:J

    .line 14708
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->G:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    new-instance v1, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;-><init>(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)V

    .line 17221
    const-string/jumbo v3, "facebox"

    sget-object v4, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->a:Ljava/lang/String;

    const-string/jumbo v5, "[Face] startFaceRecognize ...."

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17222
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eq v3, v7, :cond_5

    .line 17223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14829
    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->f()V

    .line 14830
    :goto_2
    return-void

    :cond_3
    move v0, v1

    .line 16041
    goto :goto_0

    .line 17045
    :cond_4
    :try_start_1
    new-instance v0, Lgsa;

    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {v0, v1, v3, v4}, Lgsa;-><init>(ZZZ)V

    .line 14703
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17226
    :cond_5
    const/4 v3, 0x0

    iput v3, v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->e:I

    .line 17227
    iput-object v1, v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->c:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$b;

    .line 17228
    iput-object v2, v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->d:Ljava/util/List;

    .line 17234
    const/4 v1, 0x2

    iput v1, v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->f:I

    .line 17240
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->g:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method static synthetic k(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->u:Landroid/view/View;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 86
    .line 18225
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->g:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 18226
    invoke-direct {p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->g()V

    .line 18228
    iget-boolean v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->P:Z

    if-nez v2, :cond_1

    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->P:Z

    .line 18229
    const/4 v2, -0x1

    iput v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->aa:I

    .line 18230
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->R:Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;

    iget-boolean v3, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->P:Z

    .line 19100
    invoke-static {}, Lgsd;->a()Lgsd;

    move-result-object v4

    .line 19443
    if-eqz v3, :cond_2

    :goto_1
    iput v0, v4, Lgsd;->d:I

    .line 19101
    iget-object v0, v2, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 19102
    iget-object v0, v2, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->b:Landroid/os/Handler;

    iget-object v2, v2, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->b:Landroid/os/Handler;

    const/16 v3, 0x1005

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18234
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v2, v0

    .line 18228
    goto :goto_0

    :cond_2
    move v0, v1

    .line 19443
    goto :goto_1

    .line 18231
    :catch_0
    move-exception v0

    .line 18232
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 18233
    const-string/jumbo v1, "facebox"

    sget-object v2, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[Camera] switch camera err "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic m(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->R:Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    .prologue
    .line 86
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->aa:I

    return v0
.end method

.method static synthetic p(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    .prologue
    .line 86
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->S:I

    return v0
.end method

.method static synthetic q(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->Y:Z

    return v0
.end method

.method static synthetic s(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->Z:Z

    return v0
.end method

.method static synthetic t(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->X:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic u(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->v:Landroid/view/View;

    return-object v0
.end method

.method static synthetic v(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->ac:Z

    return v0
.end method

.method static synthetic w(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->af:Z

    return v0
.end method

.method static synthetic x(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->g()V

    return-void
.end method

.method static synthetic y(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->i:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic z(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/dingtalk/facebox/model/DetectResult;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->F:Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 858
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->G:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->G:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    .line 7247
    const-string/jumbo v1, "facebox"

    sget-object v2, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->a:Ljava/lang/String;

    const-string/jumbo v3, "stopFaceRecognize"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7248
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->g:Z

    .line 7249
    iput-object v4, v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->c:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$b;

    .line 7250
    iput-object v4, v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->d:Ljava/util/List;

    .line 7251
    const/4 v1, -0x1

    iput v1, v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->f:I

    .line 861
    :cond_0
    return-void
.end method

.method public final a(Landroid/hardware/Camera;II)V
    .locals 7
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "width"    # I
    .param p3, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1124
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1149
    :cond_0
    :goto_0
    return-void

    .line 1126
    :cond_1
    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->R:Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;

    invoke-virtual {v3, p2, p3}, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->a(II)V

    .line 1127
    if-eqz p1, :cond_2

    .line 1129
    mul-int v3, p2, p3

    mul-int/lit8 v3, v3, 0x3

    :try_start_0
    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [B

    invoke-virtual {p1, v3}, Landroid/hardware/Camera;->addCallbackBuffer([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1134
    :goto_1
    :try_start_1
    invoke-virtual {p1, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1140
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->o:Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;

    if-eqz v3, :cond_4

    .line 1141
    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->o:Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;

    invoke-virtual {v3, v1}, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->setVisibility(I)V

    .line 1142
    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->o:Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;

    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->R:Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->getDisplayOrientation()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->setDisplayOrientation(I)V

    .line 1143
    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->o:Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;

    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->G:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    .line 12284
    iget v4, v4, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->h:I

    .line 1143
    invoke-virtual {v3, v4}, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->setOrientation$2563266(I)V

    .line 1144
    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->o:Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;

    iget-boolean v4, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->P:Z

    if-nez v4, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v3, v1}, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->setMirror(Z)V

    .line 1145
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->o:Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->setFaces([Landroid/hardware/Camera$Face;)V

    .line 1148
    :cond_4
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 1130
    :catch_0
    move-exception v0

    .line 1131
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "facebox"

    sget-object v4, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->f:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[Camera] onCameraConfigure addCallbackBuffer err "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1135
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1136
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "facebox"

    sget-object v4, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->f:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[Camera] onCameraConfigure setPreviewCallbackWithBuffer err "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1153
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$8;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$8;-><init>(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1173
    return-void
.end method

.method public finish()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1086
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 1087
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_return_from_camera_activity2"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1088
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->sendBroadcast(Landroid/content/Intent;)V

    .line 1089
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 1051
    const-string/jumbo v1, "facebox"

    sget-object v2, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->f:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "[Camera] FaceRecognize onActivityResult. requestCode="

    aput-object v4, v3, v7

    .line 1052
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    const/4 v4, 0x2

    const-string/jumbo v5, " resultCode="

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1051
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1055
    if-ne p2, v6, :cond_1

    if-nez p1, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1056
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->N:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string/jumbo v2, "RECOG_AF_TIME"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->M:J

    sub-long/2addr v4, v6

    long-to-double v4, v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1057
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "DD"

    const-string/jumbo v3, "FACE"

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->N:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 1059
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_face_box_face_detected"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1060
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->F:Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    if-eqz v1, :cond_0

    .line 1061
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->F:Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->E:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/dingtalk/facebox/model/DetectResult;->callbackId:Ljava/lang/String;

    .line 1062
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->F:Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/dingtalk/facebox/model/DetectResult;->url:Ljava/lang/String;

    .line 1063
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->F:Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    iget v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->V:I

    iput v2, v1, Lcom/alibaba/dingtalk/facebox/model/DetectResult;->photoStatus:I

    .line 1071
    :goto_0
    const-string/jumbo v1, "intent_key_face_box_face_detect_result"

    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->F:Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1072
    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->sendBroadcast(Landroid/content/Intent;)V

    .line 1074
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->finish()V

    .line 1082
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 1065
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/facebox/model/DetectResult;-><init>()V

    iput-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->F:Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    .line 1066
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->F:Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->E:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/dingtalk/facebox/model/DetectResult;->callbackId:Ljava/lang/String;

    .line 1067
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->F:Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/dingtalk/facebox/model/DetectResult;->url:Ljava/lang/String;

    .line 1068
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->F:Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    iget v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->V:I

    iput v2, v1, Lcom/alibaba/dingtalk/facebox/model/DetectResult;->photoStatus:I

    goto :goto_0

    .line 1075
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    if-ne p2, v6, :cond_2

    .line 1076
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->finish()V

    goto :goto_1

    .line 1078
    :cond_2
    const-string/jumbo v1, "facebox"

    sget-object v2, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->f:Ljava/lang/String;

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "[Camera] FaceRecognize onActivityResult. restartUi"

    aput-object v4, v3, v7

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    invoke-direct {p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->e()V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x2

    const/high16 v4, 0x3f000000    # 0.5f

    const/16 v10, 0x8

    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 189
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 190
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 192
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 194
    invoke-static {}, Lgsc;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "DD"

    const-string/jumbo v2, "FACE"

    const-string/jumbo v3, "CAMERA"

    const-string/jumbo v4, "20"

    const-string/jumbo v5, ""

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->finish()V

    .line 198
    sget v0, Lgrv$f;->dt_face_open_beautify_camera_error:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 317
    :goto_0
    return-void

    .line 202
    :cond_0
    sget v0, Lgrv$e;->camera_activity2:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->setContentView(I)V

    .line 204
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->K:J

    .line 1320
    sget v0, Lgrv$d;->camera_year:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->j:Landroid/widget/TextView;

    .line 1321
    sget v0, Lgrv$d;->camera_location:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->k:Landroid/widget/TextView;

    .line 1322
    sget v0, Lgrv$d;->camera_time:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->l:Landroid/widget/TextView;

    .line 1323
    sget v0, Lgrv$d;->error_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->m:Landroid/widget/TextView;

    .line 1324
    sget v0, Lgrv$d;->camera_info_lly:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->a:Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;

    .line 1325
    sget v0, Lgrv$d;->camera_logo_lly:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->b:Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;

    .line 1327
    sget v0, Lgrv$d;->loading_fl:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->p:Landroid/view/View;

    .line 1328
    sget v0, Lgrv$d;->camera_location_info_lly:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->n:Landroid/view/View;

    .line 1330
    sget v0, Lgrv$d;->face_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->o:Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;

    .line 1331
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "face_detect_decorate_close"

    invoke-virtual {v0, v1, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1332
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->o:Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;

    invoke-virtual {v0, v3}, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->setDecorateEnabled(Z)V

    .line 1336
    :goto_1
    sget v0, Lgrv$d;->ll_smile_index:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->u:Landroid/view/View;

    .line 1338
    sget v0, Lgrv$d;->camera_alternate:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->g:Landroid/widget/ImageView;

    .line 1339
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$13;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$13;-><init>(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1346
    sget v0, Lgrv$d;->camera_flash:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1347
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v1, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$14;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$14;-><init>(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1365
    sget v0, Lgrv$d;->camera_takephoto:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->i:Landroid/widget/Button;

    .line 1366
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->i:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$15;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$15;-><init>(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1391
    sget v0, Lgrv$d;->camera_cancel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1392
    new-instance v1, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$16;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$16;-><init>(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1401
    sget v0, Lgrv$d;->face_detect_loading:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->q:Landroid/widget/ImageView;

    .line 1402
    sget v0, Lgrv$d;->smile_score_num1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->r:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1403
    sget v0, Lgrv$d;->smile_score_num2:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->s:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1404
    sget v0, Lgrv$d;->smile_score_num3:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->t:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1406
    sget v0, Lgrv$d;->auto_take_photo_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->v:Landroid/view/View;

    .line 1408
    sget v0, Lgrv$d;->camera_glsurfaceview:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->R:Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;

    .line 207
    new-instance v0, Lgtc;

    const-wide/16 v8, 0x32

    invoke-direct {v0, v8, v9}, Lgtc;-><init>(J)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->I:Lgtc;

    .line 1875
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1877
    :try_start_0
    const-string/jumbo v1, "detectObject"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 1881
    :goto_2
    if-eqz v1, :cond_5

    .line 1883
    iget-object v0, v1, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->callbackId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->E:Ljava/lang/String;

    .line 1884
    iget-object v0, v1, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->userId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->C:Ljava/lang/String;

    .line 1885
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->C:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1887
    const-string/jumbo v0, "facebox"

    sget-object v2, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->f:Ljava/lang/String;

    new-array v5, v3, [Ljava/lang/String;

    const-string/jumbo v6, "[Camera] initData uid is empty"

    aput-object v6, v5, v7

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v2, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1889
    :cond_1
    iget-object v0, v1, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->groupId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->D:Ljava/lang/String;

    .line 1890
    iget-object v0, v1, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->corpId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->B:Ljava/lang/String;

    .line 1891
    iget-boolean v0, v1, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->needBeauty:Z

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->O:Z

    .line 1892
    iget v0, v1, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->cameraDevice:I

    if-nez v0, :cond_b

    move v0, v3

    :goto_3
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->P:Z

    .line 1893
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->P:Z

    if-eqz v0, :cond_2

    .line 1894
    iput v7, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->w:I

    .line 1897
    :cond_2
    iget v0, v1, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->mode:I

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->S:I

    .line 1898
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->S:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->S:I

    if-eq v0, v3, :cond_3

    .line 1899
    iput v7, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->S:I

    .line 1901
    :cond_3
    iget-boolean v0, v1, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->smileScore:Z

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->T:Z

    .line 1903
    iget-object v0, v1, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->stickers:Lcom/alibaba/dingtalk/facebox/model/DetectObject$Stickers;

    .line 1904
    if-eqz v0, :cond_5

    .line 1905
    iget-object v1, v0, Lcom/alibaba/dingtalk/facebox/model/DetectObject$Stickers;->username:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->x:Ljava/lang/String;

    .line 1906
    iget-object v1, v0, Lcom/alibaba/dingtalk/facebox/model/DetectObject$Stickers;->address:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->y:Ljava/lang/String;

    .line 1907
    iget-object v1, v0, Lcom/alibaba/dingtalk/facebox/model/DetectObject$Stickers;->time:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->z:Ljava/lang/String;

    .line 1908
    iget-object v1, v0, Lcom/alibaba/dingtalk/facebox/model/DetectObject$Stickers;->dateWeather:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->A:Ljava/lang/String;

    .line 1911
    :try_start_1
    iget-object v0, v0, Lcom/alibaba/dingtalk/facebox/model/DetectObject$Stickers;->decorateUri:Ljava/lang/String;

    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->ag:Ljava/lang/String;
    :try_end_1
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1915
    :goto_4
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->S:I

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->ag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1916
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->J:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter;

    if-nez v0, :cond_4

    .line 1917
    new-instance v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->J:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter;

    .line 1918
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->J:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter;

    .line 2043
    iput-boolean v3, v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter;->a:Z

    .line 1920
    :cond_4
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->J:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter;

    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->ag:Ljava/lang/String;

    new-instance v0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$7;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$7;-><init>(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)V

    const-class v5, Lcma;

    invoke-static {v0, v5, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2047
    iget-boolean v5, v1, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter;->a:Z

    if-eqz v5, :cond_5

    .line 2050
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2051
    if-eqz v0, :cond_5

    .line 2052
    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "Url is empty"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1947
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1949
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1950
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->n:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1956
    :goto_6
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->S:I

    if-nez v0, :cond_6

    .line 1957
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1958
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->u:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2576
    :cond_6
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, 0x43b40000    # 360.0f

    const/4 v2, 0x0

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 2577
    const-wide/16 v4, 0x5dc

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 2578
    const-wide/16 v4, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setStartOffset(J)V

    .line 2579
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 2580
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2581
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->q:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2582
    invoke-virtual {v0}, Landroid/view/animation/RotateAnimation;->start()V

    .line 2585
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->S:I

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->H:Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;

    if-eqz v0, :cond_7

    .line 2586
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->v:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2587
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->v:Landroid/view/View;

    const-string/jumbo v1, "alpha"

    new-array v2, v11, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2588
    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2589
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2590
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    const-wide/16 v4, 0x9c4

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    .line 2591
    new-instance v0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$3;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$3;-><init>(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2610
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 2613
    :cond_7
    const-string/jumbo v0, "scaleX"

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 2614
    const-string/jumbo v1, "scaleY"

    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_2

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 2615
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->i:Landroid/widget/Button;

    new-array v4, v11, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v4, v7

    aput-object v1, v4, v3

    invoke-static {v2, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2616
    const-wide/16 v4, 0x4b0

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2617
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 213
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->S:I

    if-ne v0, v3, :cond_8

    .line 3176
    invoke-static {}, Lgsd;->a()Lgsd;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$9;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$9;-><init>(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)V

    .line 4083
    iput-object v1, v0, Lgsd;->j:Landroid/hardware/Camera$FaceDetectionListener;

    .line 217
    :cond_8
    new-instance v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->B:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->C:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->D:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->G:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    .line 218
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->G:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    new-instance v1, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$1;-><init>(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)V

    .line 4214
    iput-object v1, v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->k:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$c;

    .line 233
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->G:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    new-instance v1, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$10;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$10;-><init>(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)V

    .line 4263
    iput-object v1, v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->j:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$a;

    .line 261
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->T:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->S:I

    if-ne v0, v3, :cond_9

    invoke-static {}, Lgsp;->a()Z

    move-result v0

    if-nez v0, :cond_9

    .line 262
    new-instance v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->H:Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;

    .line 263
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->H:Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;

    new-instance v1, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11;-><init>(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)V

    .line 5243
    iput-object v1, v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->c:Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter$a;

    .line 5413
    :cond_9
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "CameraController.BROADCAST_ACTION_OPEN_CAMERA_ERROR"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 5414
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 308
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->R:Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;

    invoke-virtual {v0, p0}, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->setCameraCallback(Lgsg;)V

    .line 309
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->R:Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;

    iget-boolean v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->O:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->setFaceBeautyEnable(Z)V

    .line 310
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->R:Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->getCameraRenderer()Lgse;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->e:Lgse$a;

    .line 6352
    iput-object v1, v0, Lgse;->h:Lgse$a;

    .line 312
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.CAMERA"

    aput-object v1, v0, v7

    new-instance v1, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$12;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$12;-><init>(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)V

    invoke-static {p0, v7, v0, v1}, Lbyy;->a(Landroid/app/Activity;I[Ljava/lang/String;Lbzc;)V

    goto/16 :goto_0

    .line 1334
    :cond_a
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->o:Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;

    invoke-virtual {v0, v7}, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->setDecorateEnabled(Z)V

    goto/16 :goto_1

    .line 1879
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    move-object v1, v0

    goto/16 :goto_2

    :cond_b
    move v0, v7

    .line 1892
    goto/16 :goto_3

    .line 1912
    :catch_1
    move-exception v0

    .line 1913
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto/16 :goto_4

    .line 2056
    :cond_c
    const-string/jumbo v5, "facebox"

    invoke-static {v5}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v5

    new-instance v6, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$1;

    invoke-direct {v6, v1, v2, v0}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$1;-><init>(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter;Ljava/lang/String;Lcma;)V

    invoke-interface {v5, v6}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 1952
    :cond_d
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 2587
    .line 2613
    .line 2614
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3fa66666    # 1.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3fa66666    # 1.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onDestroy()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1093
    const-string/jumbo v0, "facebox"

    sget-object v1, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[Camera] onDestroy "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    invoke-direct {p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->d()V

    .line 1096
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->a()V

    .line 1098
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->G:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->G:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    .line 11255
    iput-object v4, v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->j:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$a;

    .line 11256
    iput-object v4, v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->k:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$c;

    .line 11257
    iget-object v1, v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->b:Lgrz;

    if-eqz v1, :cond_0

    .line 11258
    iget-object v0, v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->b:Lgrz;

    .line 12061
    iget-object v1, v0, Lgrz;->b:Lgso;

    if-eqz v1, :cond_0

    .line 12062
    iget-object v0, v0, Lgrz;->b:Lgso;

    invoke-virtual {v0}, Lgso;->b()V

    .line 1101
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->H:Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;

    if-eqz v0, :cond_2

    .line 1102
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->H:Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;

    .line 12104
    const-string/jumbo v1, "facebox"

    const-string/jumbo v2, "SmileDetectPresenter"

    const-string/jumbo v3, "[Face] Release smile detect"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12105
    iget-object v1, v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->a:Lhyz;

    if-eqz v1, :cond_1

    .line 12106
    iget-object v1, v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->a:Lhyz;

    invoke-interface {v1}, Lhyz;->a()V

    .line 12107
    iput-object v4, v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->a:Lhyz;

    .line 12109
    :cond_1
    iput-object v4, v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->c:Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter$a;

    .line 1104
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->J:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter;

    if-eqz v0, :cond_3

    .line 1105
    iput-object v4, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->J:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter;

    .line 1107
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->R:Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;

    if-eqz v0, :cond_5

    .line 1108
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->R:Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;

    .line 12206
    iput-object v4, v1, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->c:Lgsg;

    .line 12208
    iget-object v0, v1, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->a:Lgsh;

    invoke-virtual {v0}, Lgsh;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_4

    .line 12210
    :try_start_0
    iget-object v0, v1, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->a:Lgsh;

    invoke-virtual {v0}, Lgsh;->quit()Z

    .line 12211
    iget-object v0, v1, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->a:Lgsh;

    invoke-virtual {v0}, Lgsh;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12216
    :cond_4
    :goto_0
    iput-object v4, v1, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->b:Landroid/os/Handler;

    .line 12217
    invoke-static {}, Lgsd;->a()Lgsd;

    move-result-object v0

    invoke-virtual {v0}, Lgsd;->h()V

    .line 1111
    :cond_5
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->d:Landroid/os/Handler;

    if-eqz v0, :cond_6

    .line 1112
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->d:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1114
    :cond_6
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->ad:Lgsk;

    if-eqz v0, :cond_7

    .line 1115
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->ad:Lgsk;

    invoke-virtual {v0}, Lgsk;->b()V

    .line 1116
    iput-object v4, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->ad:Lgsk;

    .line 1118
    :cond_7
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1119
    return-void

    .line 12212
    :catch_0
    move-exception v0

    .line 12213
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 996
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 998
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->R:Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;

    if-eqz v0, :cond_0

    .line 999
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->R:Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->onPause()V

    .line 1000
    invoke-static {}, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->b()V

    .line 1003
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->G:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    if-eqz v0, :cond_1

    .line 1004
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->G:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    .line 10208
    iget-object v1, v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->i:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10209
    iget-object v0, v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->i:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 1007
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->H:Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;

    if-eqz v0, :cond_2

    .line 1008
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->H:Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->a()V

    .line 1011
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->ad:Lgsk;

    if-eqz v0, :cond_3

    .line 1012
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->ad:Lgsk;

    invoke-virtual {v0}, Lgsk;->b()V

    .line 1014
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->g()V

    .line 1015
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 1020
    if-eqz p2, :cond_0

    .line 1021
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 1023
    :cond_0
    iget v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->S:I

    if-ne v2, v6, :cond_3

    .line 1024
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->G:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    .line 1025
    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->G:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->R:Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->getCameraRotation()I

    move-result v4

    .line 10270
    iget-object v2, v3, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->b:Lgrz;

    if-eqz v2, :cond_2

    .line 10272
    iget v2, v3, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->h:I

    .line 10273
    rem-int/lit16 v5, v2, 0xb4

    if-eqz v5, :cond_1

    .line 10274
    iget v2, v3, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->h:I

    rsub-int v2, v2, 0x168

    .line 10276
    :cond_1
    add-int/2addr v2, v4

    rem-int/lit16 v2, v2, 0x168

    .line 10279
    iget-object v3, v3, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->b:Lgrz;

    invoke-virtual {v3, p1, p2, v6, v2}, Lgrz;->a([BLandroid/hardware/Camera;ZI)V

    .line 1027
    :cond_2
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->H:Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;

    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    .line 1028
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->I:Lgtc;

    invoke-virtual {v2}, Lgtc;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11075
    :cond_3
    :goto_0
    return-void

    .line 1031
    :cond_4
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->I:Lgtc;

    .line 11023
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lgtc;->a:J

    .line 1033
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->Q:I

    .line 1034
    .local v0, "o":I
    rem-int/lit16 v2, v0, 0xb4

    if-eqz v2, :cond_5

    .line 1035
    iget v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->Q:I

    rsub-int v0, v2, 0x168

    .line 1037
    :cond_5
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->R:Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->getCameraRotation()I

    move-result v2

    add-int/2addr v2, v0

    rem-int/lit16 v1, v2, 0x168

    .line 1038
    .local v1, "rotate":I
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->H:Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;

    .line 11067
    iget-boolean v3, v2, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->d:Z

    if-nez v3, :cond_3

    .line 11070
    iget-object v3, v2, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->b:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->a(Landroid/content/Context;)Lhyz;

    move-result-object v3

    .line 11071
    if-nez v3, :cond_6

    .line 11072
    iget-object v3, v2, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->c:Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter$a;

    if-eqz v3, :cond_3

    .line 11073
    iget-object v2, v2, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->c:Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter$a;

    invoke-interface {v2}, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter$a;->a()V

    goto :goto_0

    .line 11077
    :cond_6
    invoke-static {v3, p1, p2, v1}, Lgsp;->a(Lhyz;[BLandroid/hardware/Camera;I)F

    move-result v3

    .line 11078
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_3

    .line 11079
    iget-object v4, v2, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->c:Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter$a;

    if-eqz v4, :cond_3

    .line 11080
    iget-object v2, v2, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->c:Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter$a;

    invoke-interface {v2, v3}, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter$a;->a(F)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 973
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 974
    iput-boolean v4, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->ah:Z

    .line 975
    iput-boolean v4, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->ae:Z

    .line 976
    iput v4, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->ab:I

    .line 8988
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->R:Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;

    if-eqz v0, :cond_0

    .line 8989
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->R:Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->onResume()V

    .line 8990
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->R:Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;

    .line 9094
    iget-object v1, v0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->b:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 9095
    iget-object v0, v0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->b:Landroid/os/Handler;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 979
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->G:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    if-eqz v0, :cond_1

    .line 980
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->G:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    .line 9202
    iget-object v1, v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->i:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9203
    iget-object v0, v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->i:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 982
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->H:Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;

    if-eqz v0, :cond_2

    .line 983
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->H:Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;

    .line 10091
    const-string/jumbo v1, "facebox"

    const-string/jumbo v2, "SmileDetectPresenter"

    const-string/jumbo v3, "[Face] Resume smile detect"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10092
    iput-boolean v4, v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->d:Z

    .line 985
    :cond_2
    return-void
.end method
