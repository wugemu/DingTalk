.class public Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;
.super Landroid/widget/RelativeLayout;
.source "FaceCirclePattern.java"

# interfaces
.implements Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;


# instance fields
.field a:I

.field b:I

.field c:Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;

.field d:Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

.field e:Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

.field f:Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

.field g:I

.field h:I

.field i:Landroid/view/WindowManager;

.field private j:Z

.field private k:I

.field private l:Landroid/os/Handler;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/ImageView;

.field private p:Lcom/alipay/biometrics/ui/widget/WaveView;

.field private q:I

.field private r:I

.field private s:Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;

.field private t:Landroid/os/Handler;

.field private u:Lcom/alipay/biometrics/ui/widget/TitleBar;

.field private v:Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/ImageView;

.field private y:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 53
    const-string/jumbo v0, "#44FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->q:I

    .line 54
    const/16 v0, 0xa

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->r:I

    .line 65
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->a()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const-string/jumbo v0, "#44FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->q:I

    .line 54
    const/16 v0, 0xa

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->r:I

    .line 70
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->a()V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    const-string/jumbo v0, "#44FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->q:I

    .line 54
    const/16 v0, 0xa

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->r:I

    .line 75
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->a()V

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->k:I

    return p1
.end method

.method static synthetic a(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->y:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->y:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Ligf$d;->face_circle_pattern:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 82
    .local v1, "parentView":Landroid/view/View;
    sget v2, Ligf$c;->face_circle_surfaceview:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;

    iput-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->c:Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;

    .line 83
    sget v2, Ligf$c;->face_circle_titlebar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/biometrics/ui/widget/TitleBar;

    iput-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->u:Lcom/alipay/biometrics/ui/widget/TitleBar;

    .line 84
    sget v2, Ligf$c;->face_circle_wave:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/biometrics/ui/widget/WaveView;

    iput-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->p:Lcom/alipay/biometrics/ui/widget/WaveView;

    .line 85
    sget v2, Ligf$c;->face_circle_guassian_background:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->o:Landroid/widget/ImageView;

    .line 86
    const-string/jumbo v2, "#44FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->q:I

    .line 87
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->p:Lcom/alipay/biometrics/ui/widget/WaveView;

    iget v3, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->r:I

    iget v4, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->q:I

    invoke-virtual {v2, v3, v4}, Lcom/alipay/biometrics/ui/widget/WaveView;->setBorder(II)V

    .line 88
    new-instance v2, Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;

    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->p:Lcom/alipay/biometrics/ui/widget/WaveView;

    invoke-direct {v2, v3}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;-><init>(Lcom/alipay/biometrics/ui/widget/WaveView;)V

    iput-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->s:Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;

    .line 91
    sget v2, Ligf$c;->face_circle_bottom_tip:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->w:Landroid/widget/TextView;

    .line 92
    sget v2, Ligf$c;->face_circle_bottom_image:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->x:Landroid/widget/ImageView;

    .line 93
    sget v2, Ligf$c;->face_circle_round_processbar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

    iput-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->d:Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

    .line 94
    sget v2, Ligf$c;->face_circle_round_inner:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

    iput-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->e:Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

    .line 95
    sget v2, Ligf$c;->face_circle_round_outer_bak:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

    iput-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->f:Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

    .line 96
    sget v2, Ligf$c;->face_circle_top_tip:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->m:Landroid/widget/TextView;

    .line 97
    sget v2, Ligf$c;->face_circle_top_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->n:Landroid/widget/LinearLayout;

    .line 98
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->i:Landroid/view/WindowManager;

    .line 100
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->i:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 101
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Ligf$a;->face_cicle_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->g:I

    .line 102
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Ligf$a;->face_cicle_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->h:I

    .line 103
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->a:I

    .line 104
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->b:I

    .line 106
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->l:Landroid/os/Handler;

    .line 109
    return-void
.end method

.method private a(IZ)V
    .locals 8
    .param p1, "process"    # I
    .param p2, "isAccelerate"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v6, 0x1f4

    const/4 v4, 0x1

    .line 270
    iget-boolean v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->j:Z

    if-eqz v2, :cond_0

    .line 313
    :goto_0
    return-void

    .line 273
    :cond_0
    iput-boolean v4, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->j:Z

    .line 274
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->l:Landroid/os/Handler;

    new-instance v3, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern$1;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern$1;-><init>(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 282
    move v1, p1

    .line 283
    .local v1, "targetProcess":I
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->d:Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

    invoke-virtual {v2}, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->getProgress()I

    move-result v0

    .line 284
    .local v0, "currentProcess":I
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->y:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1

    .line 285
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->y:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 288
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    aput v1, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->y:Landroid/animation/ValueAnimator;

    .line 289
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->y:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 293
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->y:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 295
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->y:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern$2;

    invoke-direct {v3, p0, v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern$2;-><init>(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 312
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->y:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->j:Z

    return v0
.end method

.method static synthetic b(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;

    .prologue
    .line 33
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->k:I

    return v0
.end method


# virtual methods
.method public disableSwitch()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public getBottomImage()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->x:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getBottomTip()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->w:Landroid/widget/TextView;

    return-object v0
.end method

.method public getCameraSurfaceView()Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->c:Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;

    return-object v0
.end method

.method public getGuassianBackgroud()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->o:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getInnerRoundProgressBar()Lcom/alipay/biometrics/ui/widget/RoundProgressBar;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->e:Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

    return-object v0
.end method

.method public getOuterRoundProgressBar()Lcom/alipay/biometrics/ui/widget/RoundProgressBar;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->d:Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

    return-object v0
.end method

.method public getOuterRoundProgressBarBak()Lcom/alipay/biometrics/ui/widget/RoundProgressBar;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->f:Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

    return-object v0
.end method

.method public getTip()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTipContainer()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->n:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getTitleBar()Lcom/alipay/biometrics/ui/widget/TitleBar;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->u:Lcom/alipay/biometrics/ui/widget/TitleBar;

    return-object v0
.end method

.method public getWaveView()Lcom/alipay/biometrics/ui/widget/WaveView;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->p:Lcom/alipay/biometrics/ui/widget/WaveView;

    return-object v0
.end method

.method public init(Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;)V
    .locals 4
    .param p1, "faceRemoteConfig"    # Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .prologue
    .line 115
    if-eqz p1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->c:Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;

    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getDeviceSettings()[Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->init([Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)V

    .line 120
    :cond_0
    iget v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->g:I

    .line 1160
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->c:Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;

    .line 1161
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1162
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1163
    iget v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->a:I

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->b:I

    div-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1164
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->c:Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1167
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->o:Landroid/widget/ImageView;

    .line 1168
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1169
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1170
    iget v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->a:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->b:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1171
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->c:Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    return-void
.end method

.method public setActionMode(Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;)V
    .locals 0
    .param p1, "actionMode"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->v:Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;

    .line 251
    return-void
.end method

.method public setWorkspaceHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->t:Landroid/os/Handler;

    .line 245
    return-void
.end method

.method public showProcessBar(F)V
    .locals 2
    .param p1, "weight"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 232
    const/high16 v0, 0x45610000    # 3600.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 1264
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->a(IZ)V

    .line 233
    return-void
.end method

.method public showProcessBar(FIZ)V
    .locals 2
    .param p1, "weight"    # F
    .param p2, "speed"    # I
    .param p3, "fresh"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 236
    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->j:Z

    .line 239
    const/high16 v0, 0x45610000    # 3600.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->a(IZ)V

    .line 240
    return-void

    :cond_0
    move v0, v1

    .line 236
    goto :goto_0
.end method

.method public showTost(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCirclePattern;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 216
    return-void
.end method
