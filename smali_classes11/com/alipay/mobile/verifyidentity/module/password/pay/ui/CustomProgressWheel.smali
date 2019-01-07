.class public Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;
.super Landroid/view/View;
.source "CustomProgressWheel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$ProgressCallback;,
        Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$WheelSavedState;
    }
.end annotation


# static fields
.field private static final w:Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z

.field private e:D

.field private f:D

.field private g:F

.field private h:Z

.field private i:J

.field private j:I

.field private k:I

.field private l:Landroid/graphics/Paint;

.field private m:Landroid/graphics/Paint;

.field private n:Landroid/graphics/RectF;

.field private o:F

.field private p:J

.field private q:Z

.field private r:F

.field private s:F

.field private t:Z

.field private u:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$ProgressCallback;

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 377
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->w:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 97
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 38
    const/16 v0, 0x1e

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->a:I

    .line 39
    iput v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->b:I

    .line 40
    iput v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->c:I

    .line 45
    iput-boolean v3, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->d:Z

    .line 47
    const-wide v0, 0x407f400000000000L    # 500.0

    iput-wide v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->e:D

    .line 48
    const-wide v0, 0x407cc00000000000L    # 460.0

    iput-wide v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->f:D

    .line 49
    iput v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->g:F

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->h:Z

    .line 52
    const-wide/16 v0, 0xd2

    iput-wide v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->i:J

    .line 56
    const-string/jumbo v0, "#108ee9"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->j:I

    .line 57
    const v0, 0xffffff

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->k:I

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->l:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->m:Landroid/graphics/Paint;

    .line 64
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->n:Landroid/graphics/RectF;

    .line 68
    const/high16 v0, 0x43660000    # 230.0f

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->o:F

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->p:J

    .line 74
    iput v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    .line 75
    iput v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->s:F

    .line 76
    iput-boolean v3, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->t:Z

    .line 375
    iput-boolean v3, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->v:Z

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/16 v0, 0x1e

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->a:I

    .line 39
    iput v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->b:I

    .line 40
    iput v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->c:I

    .line 45
    iput-boolean v4, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->d:Z

    .line 47
    const-wide v0, 0x407f400000000000L    # 500.0

    iput-wide v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->e:D

    .line 48
    const-wide v0, 0x407cc00000000000L    # 460.0

    iput-wide v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->f:D

    .line 49
    iput v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->g:F

    .line 50
    iput-boolean v3, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->h:Z

    .line 52
    const-wide/16 v0, 0xd2

    iput-wide v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->i:J

    .line 56
    const-string/jumbo v0, "#108ee9"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->j:I

    .line 57
    const v0, 0xffffff

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->k:I

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->l:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->m:Landroid/graphics/Paint;

    .line 64
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->n:Landroid/graphics/RectF;

    .line 68
    const/high16 v0, 0x43660000    # 230.0f

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->o:F

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->p:J

    .line 74
    iput v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    .line 75
    iput v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->s:F

    .line 76
    iput-boolean v4, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->t:Z

    .line 375
    iput-boolean v4, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->v:Z

    .line 88
    sget-object v0, Ligh$j;->ProgressWheel:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1218
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1219
    iget v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->b:I

    int-to-float v2, v2

    invoke-static {v3, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->b:I

    .line 1220
    iget v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->c:I

    int-to-float v2, v2

    invoke-static {v3, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->c:I

    .line 1221
    iget v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->a:I

    int-to-float v2, v2

    invoke-static {v3, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->a:I

    .line 1224
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->spin()V

    .line 1227
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->j:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->l:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->b:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->k:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->c:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 174
    return-void
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    .line 424
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->u:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$ProgressCallback;

    if-eqz v0, :cond_0

    .line 425
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    mul-float/2addr v0, v2

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 426
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->u:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$ProgressCallback;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$ProgressCallback;->onProgressUpdate(F)V

    .line 428
    :cond_0
    return-void
.end method


# virtual methods
.method public getBarColor()I
    .locals 1

    .prologue
    .line 560
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->j:I

    return v0
.end method

.method public getBarWidth()I
    .locals 1

    .prologue
    .line 541
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->b:I

    return v0
.end method

.method public getCircleRadius()I
    .locals 1

    .prologue
    .line 522
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->a:I

    return v0
.end method

.method public getProgress()F
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 503
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->t:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public getRimColor()I
    .locals 1

    .prologue
    .line 580
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->k:I

    return v0
.end method

.method public getRimWidth()I
    .locals 1

    .prologue
    .line 620
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->c:I

    return v0
.end method

.method public getSpinSpeed()F
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 602
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->o:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public isSpinning()Z
    .locals 1

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->t:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const/4 v4, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    .line 243
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 245
    sget-object v1, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->w:Ljava/lang/Object;

    monitor-enter v1

    .line 246
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->v:Z

    if-nez v0, :cond_1

    .line 247
    monitor-exit v1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->n:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->m:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 255
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->t:Z

    if-eqz v0, :cond_8

    .line 259
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v8, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->p:J

    sub-long/2addr v0, v8

    .line 260
    long-to-float v3, v0

    iget v5, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->o:F

    mul-float/2addr v3, v5

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v3, v5

    .line 2332
    iget-wide v8, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->i:J

    const-wide/16 v10, 0xc8

    cmp-long v5, v8, v10

    if-ltz v5, :cond_7

    .line 2333
    iget-wide v8, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->e:D

    long-to-double v0, v0

    add-double/2addr v0, v8

    iput-wide v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->e:D

    .line 2335
    iget-wide v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->e:D

    iget-wide v8, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->f:D

    cmpl-double v0, v0, v8

    if-lez v0, :cond_2

    .line 2338
    iget-wide v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->e:D

    iget-wide v8, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->f:D

    sub-double/2addr v0, v8

    iput-wide v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->e:D

    .line 2339
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->i:J

    .line 2340
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->h:Z

    if-nez v0, :cond_5

    move v0, v6

    :goto_1
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->h:Z

    .line 2343
    :cond_2
    iget-wide v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->e:D

    iget-wide v8, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->f:D

    div-double/2addr v0, v8

    add-double/2addr v0, v12

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    .line 2346
    iget-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->h:Z

    if-eqz v1, :cond_6

    .line 2347
    const/high16 v1, 0x437e0000    # 254.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->g:F

    .line 264
    :goto_2
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    add-float/2addr v0, v3

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    .line 265
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 266
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    .line 2418
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->u:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$ProgressCallback;

    if-eqz v0, :cond_3

    .line 2419
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->u:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$ProgressCallback;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-interface {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$ProgressCallback;->onProgressUpdate(F)V

    .line 273
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->p:J

    .line 275
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float v2, v0, v1

    .line 276
    const/high16 v0, 0x41800000    # 16.0f

    iget v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->g:F

    add-float v3, v0, v1

    .line 278
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 279
    const/4 v2, 0x0

    .line 280
    const/high16 v3, 0x43070000    # 135.0f

    .line 283
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->n:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->l:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 317
    :goto_3
    if-eqz v6, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->invalidate()V

    goto/16 :goto_0

    .line 249
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    move v0, v4

    .line 2340
    goto :goto_1

    .line 2349
    :cond_6
    const/high16 v1, 0x437e0000    # 254.0f

    sub-float v0, v7, v0

    mul-float/2addr v0, v1

    .line 2350
    iget v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    iget v5, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->g:F

    sub-float/2addr v5, v0

    add-float/2addr v1, v5

    iput v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    .line 2351
    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->g:F

    goto :goto_2

    .line 2354
    :cond_7
    iget-wide v8, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->i:J

    add-long/2addr v0, v8

    iput-wide v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->i:J

    goto :goto_2

    .line 285
    :cond_8
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    .line 287
    iget v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    iget v3, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->s:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_c

    .line 291
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->p:J

    sub-long/2addr v8, v10

    long-to-float v1, v8

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v1, v3

    .line 292
    iget v3, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->o:F

    mul-float/2addr v1, v3

    .line 294
    iget v3, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    add-float/2addr v1, v3

    iget v3, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->s:F

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    .line 295
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->p:J

    .line 298
    :goto_4
    iget v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9

    .line 299
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->b()V

    .line 302
    :cond_9
    const/4 v1, 0x0

    .line 303
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    .line 304
    iget-boolean v3, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->q:Z

    if-nez v3, :cond_b

    .line 306
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    div-float/2addr v0, v2

    sub-float v0, v7, v0

    float-to-double v0, v0

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double v0, v12, v0

    double-to-float v0, v0

    mul-float v1, v0, v2

    .line 307
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    div-float/2addr v0, v2

    sub-float v0, v7, v0

    float-to-double v8, v0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    sub-double v8, v12, v8

    double-to-float v0, v8

    mul-float/2addr v0, v2

    move v5, v1

    .line 310
    :goto_5
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_a

    move v3, v2

    .line 314
    :goto_6
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->n:Landroid/graphics/RectF;

    const/high16 v0, 0x42b40000    # 90.0f

    sub-float v2, v5, v0

    iget-object v5, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->l:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_a
    move v3, v0

    goto :goto_6

    :cond_b
    move v5, v1

    goto :goto_5

    :cond_c
    move v6, v4

    goto :goto_4
.end method

.method protected onMeasure(II)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v7, -0x80000000

    const/high16 v6, 0x40000000    # 2.0f

    .line 106
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 108
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->a:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->getPaddingRight()I

    move-result v1

    add-int v2, v0, v1

    .line 109
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->a:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 111
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 112
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 113
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 114
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 120
    if-eq v4, v6, :cond_4

    .line 123
    if-ne v4, v7, :cond_0

    .line 125
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 132
    :cond_0
    :goto_0
    if-eq v5, v6, :cond_1

    if-ne v4, v6, :cond_3

    :cond_1
    move v0, v1

    .line 143
    :cond_2
    :goto_1
    invoke-virtual {p0, v2, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->setMeasuredDimension(II)V

    .line 144
    return-void

    .line 135
    :cond_3
    if-ne v5, v7, :cond_2

    .line 137
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 153
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2180
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->getPaddingTop()I

    move-result v0

    .line 2181
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->getPaddingBottom()I

    move-result v1

    .line 2182
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->getPaddingLeft()I

    move-result v2

    .line 2183
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->getPaddingRight()I

    move-result v3

    .line 2185
    iget-boolean v4, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->d:Z

    if-nez v4, :cond_0

    .line 2187
    sub-int v4, p1, v2

    sub-int/2addr v4, v3

    sub-int v5, p2, v1

    sub-int/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2191
    iget v5, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->a:I

    mul-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->b:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2194
    sub-int v5, p1, v2

    sub-int v3, v5, v3

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 2196
    sub-int v3, p2, v0

    sub-int v1, v3, v1

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 2199
    new-instance v1, Landroid/graphics/RectF;

    iget v3, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->b:I

    add-int/2addr v3, v2

    int-to-float v3, v3

    iget v5, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->b:I

    add-int/2addr v5, v0

    int-to-float v5, v5

    add-int/2addr v2, v4

    iget v6, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->b:I

    sub-int/2addr v2, v6

    int-to-float v2, v2

    add-int/2addr v0, v4

    iget v4, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->b:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    invoke-direct {v1, v3, v5, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->n:Landroid/graphics/RectF;

    .line 156
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->a()V

    .line 157
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->invalidate()V

    .line 158
    return-void

    .line 2204
    :cond_0
    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->b:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    iget v5, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->b:I

    add-int/2addr v0, v5

    int-to-float v0, v0

    sub-int v3, p1, v3

    iget v5, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->b:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    sub-int v1, p2, v1

    iget v5, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->b:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    invoke-direct {v4, v2, v0, v3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->n:Landroid/graphics/RectF;

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 324
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 326
    if-nez p2, :cond_0

    .line 327
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->p:J

    .line 329
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 386
    sget-object v1, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->w:Ljava/lang/Object;

    monitor-enter v1

    .line 387
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->v:Z

    .line 388
    const-wide v2, 0x407f400000000000L    # 500.0

    iput-wide v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->e:D

    .line 389
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->g:F

    .line 390
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->h:Z

    .line 391
    const-wide/16 v2, 0xd2

    iput-wide v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->i:J

    .line 392
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->p:J

    .line 393
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    .line 394
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->s:F

    .line 395
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetCount()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 370
    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    .line 371
    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->s:F

    .line 372
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->invalidate()V

    .line 373
    return-void
.end method

.method public setBarColor(I)V
    .locals 1

    .prologue
    .line 569
    iput p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->j:I

    .line 570
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->a()V

    .line 571
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->t:Z

    if-nez v0, :cond_0

    .line 572
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->invalidate()V

    .line 574
    :cond_0
    return-void
.end method

.method public setBarWidth(I)V
    .locals 1

    .prologue
    .line 550
    iput p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->b:I

    .line 551
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->t:Z

    if-nez v0, :cond_0

    .line 552
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->invalidate()V

    .line 554
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$ProgressCallback;)V
    .locals 1

    .prologue
    .line 231
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->u:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$ProgressCallback;

    .line 233
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->t:Z

    if-nez v0, :cond_0

    .line 234
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->b()V

    .line 236
    :cond_0
    return-void
.end method

.method public setCircleRadius(I)V
    .locals 1

    .prologue
    .line 531
    iput p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->a:I

    .line 532
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->t:Z

    if-nez v0, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->invalidate()V

    .line 535
    :cond_0
    return-void
.end method

.method public setInstantProgress(F)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 473
    iget-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->t:Z

    if-eqz v1, :cond_0

    .line 474
    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    .line 475
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->t:Z

    .line 478
    :cond_0
    cmpl-float v1, p1, v2

    if-lez v1, :cond_2

    .line 479
    sub-float/2addr p1, v2

    .line 484
    :cond_1
    :goto_0
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->s:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    .line 492
    :goto_1
    return-void

    .line 480
    :cond_2
    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    move p1, v0

    .line 481
    goto :goto_0

    .line 488
    :cond_3
    mul-float v0, p1, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->s:F

    .line 489
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->s:F

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    .line 490
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->p:J

    .line 491
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->invalidate()V

    goto :goto_1
.end method

.method public setLinearProgress(Z)V
    .locals 1

    .prologue
    .line 512
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->q:Z

    .line 513
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->t:Z

    if-nez v0, :cond_0

    .line 514
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->invalidate()V

    .line 516
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 437
    iget-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->t:Z

    if-eqz v1, :cond_0

    .line 438
    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    .line 439
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->t:Z

    .line 441
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->b()V

    .line 444
    :cond_0
    cmpl-float v1, p1, v2

    if-lez v1, :cond_2

    .line 445
    sub-float/2addr p1, v2

    .line 450
    :cond_1
    :goto_0
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->s:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    .line 464
    :goto_1
    return-void

    .line 446
    :cond_2
    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    move p1, v0

    .line 447
    goto :goto_0

    .line 457
    :cond_3
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    iget v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->s:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    .line 458
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->p:J

    .line 461
    :cond_4
    mul-float v0, p1, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->s:F

    .line 463
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->invalidate()V

    goto :goto_1
.end method

.method public setRimColor(I)V
    .locals 1

    .prologue
    .line 589
    iput p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->k:I

    .line 590
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->a()V

    .line 591
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->t:Z

    if-nez v0, :cond_0

    .line 592
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->invalidate()V

    .line 594
    :cond_0
    return-void
.end method

.method public setRimWidth(I)V
    .locals 1

    .prologue
    .line 629
    iput p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->c:I

    .line 630
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->t:Z

    if-nez v0, :cond_0

    .line 631
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->invalidate()V

    .line 633
    :cond_0
    return-void
.end method

.method public setSpinSpeed(F)V
    .locals 1

    .prologue
    .line 613
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->o:F

    .line 614
    return-void
.end method

.method public spin()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 412
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->p:J

    .line 413
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->t:Z

    .line 414
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->invalidate()V

    .line 415
    return-void
.end method

.method public start()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 380
    sget-object v1, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->w:Ljava/lang/Object;

    monitor-enter v1

    .line 381
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->v:Z

    .line 382
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopSpinning()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 402
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->t:Z

    .line 403
    iput v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    .line 404
    iput v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->s:F

    .line 405
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->invalidate()V

    .line 406
    return-void
.end method
