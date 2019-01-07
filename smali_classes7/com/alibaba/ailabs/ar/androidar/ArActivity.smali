.class public Lcom/alibaba/ailabs/ar/androidar/ArActivity;
.super Landroid/app/Activity;
.source "ArActivity.java"


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Landroid/widget/ImageView;

.field private D:Z

.field private E:Landroid/content/BroadcastReceiver;

.field public a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;

.field public b:Landroid/view/View;

.field public c:F

.field public d:F

.field public e:Lgwu;

.field public f:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;

.field public g:Lgxd;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/RelativeLayout;

.field private o:Landroid/widget/RelativeLayout;

.field private p:I

.field private q:I

.field private r:Landroid/animation/ObjectAnimator;

.field private s:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Landroid/app/AlertDialog;

.field private x:Landroid/app/AlertDialog;

.field private y:Landroid/app/AlertDialog;

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 97
    iput-boolean v2, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->v:Z

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->z:I

    .line 109
    iput-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->f:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;

    .line 110
    iput-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->g:Lgxd;

    .line 112
    iput-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->C:Landroid/widget/ImageView;

    .line 113
    iput-boolean v2, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->D:Z

    .line 115
    new-instance v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/ar/androidar/ArActivity$1;-><init>(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->E:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/ailabs/ar/androidar/ArActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/ailabs/ar/androidar/ArActivity;
    .param p1, "x1"    # F

    .prologue
    .line 53
    iput p1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->c:F

    return p1
.end method

.method static synthetic a(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .prologue
    .line 53
    iget v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->z:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/ailabs/ar/androidar/ArActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/ailabs/ar/androidar/ArActivity;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->z:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/ailabs/ar/androidar/ArActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/ailabs/ar/androidar/ArActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->u:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/ailabs/ar/androidar/ArActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/ailabs/ar/androidar/ArActivity;
    .param p1, "x1"    # F

    .prologue
    .line 53
    iput p1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->d:F

    return p1
.end method

.method static synthetic b(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)Lgwu;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->e:Lgwu;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/ailabs/ar/androidar/ArActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/ailabs/ar/androidar/ArActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->t:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->x:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->w:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->u:Z

    return v0
.end method

.method static synthetic g(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .prologue
    .line 53
    iget v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->p:I

    return v0
.end method

.method static synthetic h(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .prologue
    .line 53
    iget v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->q:I

    return v0
.end method

.method static synthetic i(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->j:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->m:Landroid/view/View;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->l:Landroid/view/View;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->C:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->t:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 402
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->r:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->r:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->n:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 407
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 408
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->o:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 409
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 410
    :cond_3
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 371
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->C:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->D:Z

    if-eq p1, v0, :cond_0

    .line 377
    if-eqz p1, :cond_2

    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->D:Z

    .line 379
    new-instance v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/ar/androidar/ArActivity$3;-><init>(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 388
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->D:Z

    .line 389
    new-instance v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/ar/androidar/ArActivity$4;-><init>(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v1, 0x8

    .line 416
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->n:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->o:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 421
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 422
    :cond_2
    return-void
.end method

.method public final c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 457
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 458
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 460
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 463
    iput-boolean v2, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->v:Z

    .line 464
    invoke-virtual {p0}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->a()V

    .line 465
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->e:Lgwu;

    .line 7041
    iget-object v0, v0, Lgwu;->h:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    .line 465
    invoke-virtual {v0, v2}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->enableDetectRequest(Z)Z

    .line 467
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;

    invoke-virtual {v0, v1}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->setUseMobileNetwork(Z)V

    .line 469
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;

    invoke-virtual {v0, v1}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;

    invoke-virtual {v0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->c()V

    .line 471
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->setLastTargetTime(J)V

    .line 473
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 24
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 148
    invoke-static/range {p0 .. p0}, Lpe;->a(Landroid/content/Context;)V

    .line 151
    new-instance v17, Lcom/alibaba/ailabs/ar/androidar/utils/CustomExceptionHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/alibaba/ailabs/ar/androidar/utils/CustomExceptionHandler;-><init>(Landroid/content/Context;)V

    invoke-static/range {v17 .. v17}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 153
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 155
    new-instance v17, Lgwu;

    invoke-direct/range {v17 .. v17}, Lgwu;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->e:Lgwu;

    .line 157
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->requestWindowFeature(I)Z

    .line 160
    sget v17, Lov$c;->activity_ar:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->setContentView(I)V

    .line 162
    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 163
    .local v4, "abis":Ljava/lang/String;
    const-string/jumbo v17, "x86"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string/jumbo v17, "x86_64"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1668
    :cond_0
    new-instance v17, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1669
    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "unsupport CPU_ABIS:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    sget v19, Lov$d;->ar_go_on:I

    new-instance v20, Lcom/alibaba/ailabs/ar/androidar/ArActivity$8;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity$8;-><init>(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)V

    .line 1670
    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1676
    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->y:Landroid/app/AlertDialog;

    .line 1677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->y:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->y:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog;->show()V

    .line 355
    :goto_0
    return-void

    .line 1682
    :cond_1
    new-instance v17, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1683
    sget v18, Lov$d;->ar_toast_not_wifi_2:I

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    sget v19, Lov$d;->ar_go_on:I

    new-instance v20, Lcom/alibaba/ailabs/ar/androidar/ArActivity$10;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity$10;-><init>(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)V

    .line 1684
    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    sget v19, Lov$d;->ar_quit:I

    new-instance v20, Lcom/alibaba/ailabs/ar/androidar/ArActivity$9;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity$9;-><init>(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)V

    .line 1692
    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1700
    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->x:Landroid/app/AlertDialog;

    .line 1701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->x:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 170
    sget v17, Lov$b;->camera_view:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->setVisibility(I)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->c()V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->e:Lgwu;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lgwu;->a(Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;)V

    .line 176
    sget v17, Lov$b;->scan_line:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->h:Landroid/widget/ImageView;

    .line 3030
    sget v17, Lpg;->b:I

    if-gtz v17, :cond_2

    .line 4016
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 4017
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    .line 4018
    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    sput v18, Lpg;->a:I

    .line 4019
    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    sput v17, Lpg;->b:I

    .line 3033
    :cond_2
    sget v17, Lpg;->b:I

    .line 2477
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    .line 2478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->h:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const-string/jumbo v19, "translationY"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/high16 v22, -0x3bea0000    # -600.0f

    aput v22, v20, v21

    const/16 v21, 0x1

    aput v17, v20, v21

    invoke-static/range {v18 .. v20}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->r:Landroid/animation/ObjectAnimator;

    .line 2479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->r:Landroid/animation/ObjectAnimator;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 2480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->r:Landroid/animation/ObjectAnimator;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    invoke-virtual/range {v18 .. v19}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 2481
    new-instance v18, Lcom/alibaba/ailabs/ar/androidar/ArActivity$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/alibaba/ailabs/ar/androidar/ArActivity$5;-><init>(Lcom/alibaba/ailabs/ar/androidar/ArActivity;F)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->s:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 2501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->r:Landroid/animation/ObjectAnimator;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->s:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->r:Landroid/animation/ObjectAnimator;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x870

    invoke-virtual/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 179
    sget v17, Lov$b;->back:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->i:Landroid/widget/ImageView;

    .line 182
    new-instance v5, Lcom/alibaba/ailabs/ar/androidar/ArActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/alibaba/ailabs/ar/androidar/ArActivity$11;-><init>(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)V

    .line 188
    .local v5, "backListener":Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->i:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    new-instance v7, Lcom/alibaba/ailabs/ar/androidar/ArActivity$12;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/alibaba/ailabs/ar/androidar/ArActivity$12;-><init>(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)V

    .line 208
    .local v7, "feedbackListener":Landroid/view/View$OnClickListener;
    sget v17, Lov$b;->light:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->j:Landroid/widget/ImageView;

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->j:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    new-instance v10, Lcom/alibaba/ailabs/ar/androidar/ArActivity$13;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/alibaba/ailabs/ar/androidar/ArActivity$13;-><init>(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)V

    .line 222
    .local v10, "lightListener":Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->j:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    sget v17, Lov$b;->mask:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->b:Landroid/view/View;

    .line 225
    sget v17, Lov$b;->tips:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->k:Landroid/view/View;

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->b:Landroid/view/View;

    move-object/from16 v17, v0

    new-instance v18, Lcom/alibaba/ailabs/ar/androidar/ArActivity$14;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity$14;-><init>(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->k:Landroid/view/View;

    move-object/from16 v17, v0

    new-instance v18, Lcom/alibaba/ailabs/ar/androidar/ArActivity$15;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity$15;-><init>(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    sget v17, Lov$b;->menu:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->l:Landroid/view/View;

    .line 252
    sget v17, Lov$b;->menu_container:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->m:Landroid/view/View;

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->l:Landroid/view/View;

    move-object/from16 v17, v0

    new-instance v18, Lcom/alibaba/ailabs/ar/androidar/ArActivity$16;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity$16;-><init>(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    sget v17, Lov$b;->menu_feedback:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 267
    .local v11, "menuFeedback":Landroid/view/View;
    invoke-virtual {v11, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    sget v17, Lov$b;->menu_feedback_icon:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 269
    .local v12, "menuFeedbackIcon":Landroid/view/View;
    invoke-virtual {v12, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    new-instance v9, Lcom/alibaba/ailabs/ar/androidar/ArActivity$17;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/alibaba/ailabs/ar/androidar/ArActivity$17;-><init>(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)V

    .line 280
    .local v9, "helpListener":Landroid/view/View$OnClickListener;
    sget v17, Lov$b;->menu_help:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 281
    .local v13, "menuHelp":Landroid/view/View;
    invoke-virtual {v13, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    sget v17, Lov$b;->menu_help_icon:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 283
    .local v14, "menuHelpIcon":Landroid/view/View;
    invoke-virtual {v14, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4506
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    .line 4507
    if-nez v17, :cond_5

    .line 4536
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    .line 4537
    if-nez v18, :cond_8

    .line 288
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->setUseMobileNetwork(Z)V

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lpf;->a(Landroid/content/Context;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->z:I

    .line 290
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->z:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 4644
    new-instance v17, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4645
    sget v18, Lov$d;->ar_toast_not_wifi_1:I

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    sget v19, Lov$d;->ar_go_on:I

    new-instance v20, Lcom/alibaba/ailabs/ar/androidar/ArActivity$7;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity$7;-><init>(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)V

    .line 4646
    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    sget v19, Lov$d;->ar_quit:I

    new-instance v20, Lcom/alibaba/ailabs/ar/androidar/ArActivity$6;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity$6;-><init>(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)V

    .line 4654
    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4660
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->isFinishing()Z

    move-result v18

    if-nez v18, :cond_4

    .line 4661
    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->w:Landroid/app/AlertDialog;

    .line 4662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->w:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 4663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->w:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog;->show()V

    .line 297
    :cond_4
    :goto_3
    new-instance v8, Landroid/content/IntentFilter;

    const-string/jumbo v17, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 298
    .local v8, "filter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->E:Landroid/content/BroadcastReceiver;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5359
    new-instance v17, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;

    const-string/jumbo v18, "cache"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 5505
    const/high16 v18, 0x3e800000    # 0.25f

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    const/high16 v19, 0x44800000    # 1024.0f

    div-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;->a:I

    .line 5364
    new-instance v18, Lgxd;

    const/16 v19, 0x3e8

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lgxd;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->g:Lgxd;

    .line 5365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->g:Lgxd;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lgxd;->a(Lcom/alibaba/ailabs/ar/androidar/ArActivity;Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;)V

    .line 5366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->g:Lgxd;

    move-object/from16 v17, v0

    .line 6173
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lgxf;->d:Z

    .line 302
    sget v17, Lov$b;->rescan:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->C:Landroid/widget/ImageView;

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->C:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x64

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 304
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->D:Z

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->C:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    new-instance v18, Lcom/alibaba/ailabs/ar/androidar/ArActivity$18;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity$18;-><init>(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    sget v17, Lov$b;->title:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout;

    .line 314
    .local v16, "title_layout":Landroid/widget/RelativeLayout;
    new-instance v17, Lcom/alibaba/ailabs/ar/androidar/ArActivity$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity$2;-><init>(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 344
    sget v17, Lov$b;->showtips:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->n:Landroid/widget/RelativeLayout;

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 346
    .local v6, "dm":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 347
    .local v15, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    iget v0, v15, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    iput v0, v15, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    sget v17, Lov$b;->showCons:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->o:Landroid/widget/RelativeLayout;

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->c()V

    goto/16 :goto_0

    .line 4511
    .end local v6    # "dm":Landroid/util/DisplayMetrics;
    .end local v8    # "filter":Landroid/content/IntentFilter;
    .end local v15    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v16    # "title_layout":Landroid/widget/RelativeLayout;
    :cond_5
    const-string/jumbo v18, "icon_back"

    const/16 v19, -0x1

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 4512
    if-lez v18, :cond_6

    .line 4513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->i:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4514
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4517
    :cond_6
    const-string/jumbo v18, "icon_feedback"

    const/16 v19, -0x1

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 4522
    sget v18, Lov$a;->light_on:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->p:I

    .line 4523
    sget v18, Lov$a;->light_off:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->q:I

    .line 4524
    const-string/jumbo v18, "icon_light_on"

    const/16 v19, -0x1

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 4525
    const-string/jumbo v19, "icon_light_off"

    const/16 v20, -0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 4526
    if-lez v18, :cond_7

    .line 4527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->j:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4528
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->p:I

    .line 4530
    :cond_7
    if-lez v17, :cond_3

    .line 4531
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->q:I

    goto/16 :goto_1

    .line 4540
    :cond_8
    const-string/jumbo v17, "phone_number"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->A:Ljava/lang/String;

    .line 4541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->A:Ljava/lang/String;

    move-object/from16 v17, v0

    sput-object v17, Lgxi;->n:Ljava/lang/String;

    .line 4544
    const-string/jumbo v17, "top_app_key"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 4545
    if-eqz v17, :cond_9

    .line 4546
    sput-object v17, Lgxi;->c:Ljava/lang/String;

    .line 4551
    :cond_9
    const-string/jumbo v17, "top_app_url"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 4552
    if-eqz v17, :cond_a

    .line 4553
    sput-object v17, Lgxi;->d:Ljava/lang/String;

    .line 4557
    :cond_a
    :try_start_0
    const-string/jumbo v17, "top_secret"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 4559
    if-eqz v17, :cond_c

    .line 4560
    sput-object v17, Lgxi;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4583
    :cond_b
    :goto_4
    const-string/jumbo v17, "cop_name"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->B:Ljava/lang/String;

    .line 4584
    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "number="

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->A:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", cop="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->B:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lpe;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4562
    :cond_c
    :try_start_1
    const-string/jumbo v17, "com.taobao.wireless.security.sdk.SecurityGuardManager"

    invoke-static/range {v17 .. v17}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v17

    .line 4563
    const-string/jumbo v19, "getInstance"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-class v22, Landroid/content/Context;

    aput-object v22, v20, v21

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 4564
    const/16 v19, 0x0

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 4566
    if-eqz v17, :cond_b

    .line 4567
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    const-string/jumbo v20, "getStaticDataStoreComp"

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v19

    .line 4568
    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 4569
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    const-string/jumbo v20, "getExtraData"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-class v23, Ljava/lang/String;

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v19

    .line 4570
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "23601161"

    aput-object v22, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 4571
    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v19, v0

    if-eqz v19, :cond_b

    .line 4572
    check-cast v17, Ljava/lang/String;

    .line 4573
    sput-object v17, Lgxi;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 4578
    :catch_0
    move-exception v17

    .line 4579
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 292
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->z:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 293
    sget v17, Lov$d;->ar_toast_no_network:I

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 295
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->e:Lgwu;

    move-object/from16 v17, v0

    .line 5041
    move-object/from16 v0, v17

    iget-object v0, v0, Lgwu;->h:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    move-object/from16 v17, v0

    .line 295
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->enableDetectRequest(Z)Z

    goto/16 :goto_3
.end method

.method public onDestroy()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 615
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 618
    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->r:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    .line 619
    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->r:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->end()V

    .line 620
    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->r:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->s:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 621
    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->r:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 622
    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->r:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 625
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->E:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 627
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->E:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;

    if-eqz v1, :cond_2

    .line 634
    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->setVisibility(I)V

    .line 635
    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;

    invoke-virtual {v1}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->d()V

    .line 636
    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;

    invoke-virtual {v1}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->getRenderer()Low;

    move-result-object v1

    .line 8171
    iget-object v2, v1, Low;->m:Loy;

    .line 9049
    iget-object v3, v2, Loy;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->stop()V

    .line 9050
    iget-object v3, v2, Loy;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 9051
    iput-object v4, v2, Loy;->a:Landroid/media/MediaPlayer;

    .line 8172
    iget-object v1, v1, Low;->n:Lox;

    .line 10036
    iget-object v2, v1, Lox;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 10037
    iget-object v2, v1, Lox;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 10038
    iput-object v4, v1, Lox;->a:Landroid/media/MediaPlayer;

    .line 639
    :cond_2
    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->e:Lgwu;

    if-eqz v1, :cond_3

    .line 640
    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->e:Lgwu;

    invoke-virtual {v1}, Lgwu;->a()V

    .line 641
    :cond_3
    return-void

    .line 628
    :catch_0
    move-exception v0

    .line 629
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onDestroy:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 589
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 591
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;

    .line 7170
    invoke-virtual {v0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->a()V

    .line 593
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->setVisibility(I)V

    .line 594
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;

    invoke-virtual {v0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->d()V

    .line 596
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 600
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 602
    iget-boolean v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->v:Z

    if-eqz v0, :cond_0

    .line 603
    invoke-virtual {p0}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->a()V

    .line 604
    invoke-virtual {p0}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->c()V

    .line 606
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->v:Z

    .line 608
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;

    if-eqz v0, :cond_1

    .line 609
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->setVisibility(I)V

    .line 610
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;

    invoke-virtual {v0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->c()V

    .line 612
    :cond_1
    return-void
.end method
