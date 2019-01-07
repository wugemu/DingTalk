.class public Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;
.super Landroid/widget/FrameLayout;
.source "VideoPlayerRender.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lecb$c;


# instance fields
.field private A:Leca$c;

.field private B:Leca$d;

.field private C:Leca$a;

.field private final a:Ljava/lang/String;

.field private final b:Z

.field private c:I

.field private d:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

.field private e:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

.field private f:I

.field private g:Z

.field private h:Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;

.field private i:Landroid/content/Context;

.field private j:Landroid/widget/FrameLayout;

.field private k:Landroid/view/TextureView;

.field private l:Lecb$d;

.field private m:Landroid/graphics/SurfaceTexture;

.field private n:Ljava/lang/String;

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Leca;

.field private q:I

.field private r:Lecb$a;

.field private s:Lecb$b;

.field private t:I

.field private u:I

.field private v:Landroid/view/Surface;

.field private w:Z

.field private x:Leca$e;

.field private y:Leca$g;

.field private z:Leca$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, -0x1

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->a:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->b:Z

    .line 43
    const/16 v0, 0xde

    iput v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->c:I

    .line 44
    sget-object v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->IDLE:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->d:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    .line 45
    sget-object v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->IDLE:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->e:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    .line 46
    iput v2, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->f:I

    .line 49
    sget-object v0, Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;->NORMAL:Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->h:Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;

    .line 368
    new-instance v0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$1;-><init>(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->x:Leca$e;

    .line 392
    new-instance v0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$2;-><init>(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->y:Leca$g;

    .line 486
    new-instance v0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$3;-><init>(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->z:Leca$b;

    .line 500
    new-instance v0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$4;-><init>(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->A:Leca$c;

    .line 514
    new-instance v0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$5;-><init>(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->B:Leca$d;

    .line 554
    new-instance v0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$6;-><init>(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->C:Leca$a;

    .line 75
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->i:Landroid/content/Context;

    .line 1080
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->j:Landroid/widget/FrameLayout;

    .line 1081
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->j:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1082
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1085
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->j:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;I)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;
    .param p1, "x1"    # I

    .prologue
    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->f:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;)Lcom/alibaba/android/dingtalkim/video/play/PlayerState;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->e:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    return-object v0
.end method

.method private a(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 319
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->v:Landroid/view/Surface;

    if-ne v0, p1, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->v:Landroid/view/Surface;

    if-eqz v0, :cond_2

    .line 323
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->v:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 325
    :cond_2
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->v:Landroid/view/Surface;

    .line 326
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->p:Leca;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->p:Leca;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->v:Landroid/view/Surface;

    invoke-interface {v0, v1}, Leca;->a(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;Lcom/alibaba/android/dingtalkim/video/play/PlayerState;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->setCurrentPlayState(Lcom/alibaba/android/dingtalkim/video/play/PlayerState;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    .prologue
    .line 37
    iget v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->f:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->u:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;Lcom/alibaba/android/dingtalkim/video/play/PlayerState;)Lcom/alibaba/android/dingtalkim/video/play/PlayerState;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->e:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    return-object p1
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->t:I

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;)Leca;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->p:Leca;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    .prologue
    .line 37
    iget v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->u:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->q:I

    return p1
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    .prologue
    .line 37
    iget v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->t:I

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    .prologue
    const/4 v2, 0x1

    .line 37
    .line 3408
    iget v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->u:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->t:I

    if-lez v0, :cond_0

    .line 3435
    iget v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->u:I

    iget v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->t:I

    if-le v0, v1, :cond_2

    .line 3436
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3437
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 3438
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    .line 3439
    if-ne v1, v2, :cond_1

    .line 3440
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->o()V

    .line 3450
    :cond_0
    :goto_0
    return-void

    .line 3442
    :cond_1
    invoke-static {v0, v2}, Lebh;->a(Landroid/app/Activity;I)V

    goto :goto_0

    .line 3446
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3447
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 3448
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    .line 3449
    if-nez v1, :cond_3

    .line 3450
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->o()V

    goto :goto_0

    .line 3452
    :cond_3
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lebh;->a(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;)Lecb$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->r:Lecb$a;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;)Lecb$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->s:Lecb$b;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;)Lcom/alibaba/android/dingtalkim/video/play/PlayerState;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->d:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    return-object v0
.end method

.method private n()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 334
    .line 2096
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 334
    :goto_0
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->m:Landroid/graphics/SurfaceTexture;

    if-nez v1, :cond_2

    .line 350
    :cond_0
    :goto_1
    return-void

    .line 2096
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 339
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->p:Leca;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->n:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->o:Ljava/util/Map;

    invoke-interface {v1, v2, v3, v4}, Leca;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 340
    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->m:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->a(Landroid/view/Surface;)V

    .line 341
    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->PREPARING:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->setCurrentPlayState(Lcom/alibaba/android/dingtalkim/video/play/PlayerState;)V

    .line 342
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->p:Leca;

    invoke-interface {v1}, Leca;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6253\u5f00\u64ad\u653e\u5668\u53d1\u751f\u9519\u8bef"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 346
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 347
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6253\u5f00\u64ad\u653e\u5668\u53d1\u751f\u9519\u8bef"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private o()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 461
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->k:Landroid/view/TextureView;

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->t:I

    if-lez v8, :cond_2

    iget v8, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->u:I

    if-lez v8, :cond_2

    .line 462
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->k:Landroid/view/TextureView;

    invoke-virtual {v8}, Landroid/view/TextureView;->getWidth()I

    move-result v5

    .line 463
    .local v5, "viewWidth":I
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->k:Landroid/view/TextureView;

    invoke-virtual {v8}, Landroid/view/TextureView;->getHeight()I

    move-result v4

    .line 464
    .local v4, "viewHeight":I
    if-lez v5, :cond_2

    if-lez v4, :cond_2

    .line 466
    int-to-double v8, v4

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v8, v10

    int-to-double v10, v5

    div-double v6, v8, v10

    .line 467
    .local v6, "viewRatio":D
    iget v8, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->u:I

    int-to-double v8, v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v8, v10

    iget v10, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->t:I

    int-to-double v10, v10

    div-double v2, v8, v10

    .line 468
    .local v2, "videoRatio":D
    cmpl-double v8, v6, v2

    if-lez v8, :cond_3

    .line 469
    int-to-double v8, v5

    mul-double/2addr v8, v2

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-int v4, v8

    .line 473
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->k:Landroid/view/TextureView;

    invoke-virtual {v8}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 474
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 475
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 476
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "after resize: width:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",height:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 477
    instance-of v8, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v8, :cond_1

    move-object v0, v1

    .line 478
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 479
    .local v0, "frameLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v8, 0x11

    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 481
    .end local v0    # "frameLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->k:Landroid/view/TextureView;

    invoke-virtual {v8, v1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 484
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "videoRatio":D
    .end local v4    # "viewHeight":I
    .end local v5    # "viewWidth":I
    .end local v6    # "viewRatio":D
    :cond_2
    return-void

    .line 470
    .restart local v2    # "videoRatio":D
    .restart local v4    # "viewHeight":I
    .restart local v5    # "viewWidth":I
    .restart local v6    # "viewRatio":D
    :cond_3
    cmpg-double v8, v6, v2

    if-gez v8, :cond_0

    .line 471
    int-to-double v8, v4

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v8, v10

    div-double/2addr v8, v2

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-int v5, v8

    goto :goto_0
.end method

.method private setCurrentPlayState(Lcom/alibaba/android/dingtalkim/video/play/PlayerState;)V
    .locals 3
    .param p1, "playState"    # Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 653
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->d:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    .line 654
    if-eqz p1, :cond_0

    .line 655
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->toString()Ljava/lang/String;

    .line 656
    sget-object v0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$7;->a:[I

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 662
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->setKeepScreenOn(Z)V

    .line 666
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->l:Lecb$d;

    if-eqz v0, :cond_1

    .line 667
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->l:Lecb$d;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->h:Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->d:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    invoke-interface {v0, v1, v2}, Lecb$d;->a(Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;Lcom/alibaba/android/dingtalkim/video/play/PlayerState;)V

    .line 669
    :cond_1
    return-void

    .line 659
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->setKeepScreenOn(Z)V

    goto :goto_0

    .line 656
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setCurrentScreenMode(Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;)V
    .locals 3
    .param p1, "playerScreenMode"    # Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 672
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->h:Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;

    .line 673
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->l:Lecb$d;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->l:Lecb$d;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->h:Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->d:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    invoke-interface {v0, v1, v2}, Lecb$d;->a(Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;Lcom/alibaba/android/dingtalkim/video/play/PlayerState;)V

    .line 676
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const v4, 0x106000c

    const/4 v3, -0x1

    .line 106
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->d:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->IDLE:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->d:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->ERROR:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    if-ne v0, v1, :cond_6

    .line 108
    :cond_0
    sget-object v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->PLAYING:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->e:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    .line 1257
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->p:Leca;

    if-nez v0, :cond_1

    .line 1258
    iget v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->c:I

    packed-switch v0, :pswitch_data_0

    .line 1267
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->p:Leca;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Leca;->a(I)V

    .line 1268
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->p:Leca;

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->g:Z

    invoke-interface {v0, v1}, Leca;->a(Z)V

    .line 1270
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->p:Leca;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->x:Leca$e;

    invoke-interface {v0, v1}, Leca;->a(Leca$e;)V

    .line 1271
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->p:Leca;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->y:Leca$g;

    invoke-interface {v0, v1}, Leca;->a(Leca$g;)V

    .line 1272
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->p:Leca;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->z:Leca$b;

    invoke-interface {v0, v1}, Leca;->a(Leca$b;)V

    .line 1273
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->p:Leca;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->A:Leca$c;

    invoke-interface {v0, v1}, Leca;->a(Leca$c;)V

    .line 1274
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->p:Leca;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->B:Leca$d;

    invoke-interface {v0, v1}, Leca;->a(Leca$d;)V

    .line 1275
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->p:Leca;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->C:Leca$a;

    invoke-interface {v0, v1}, Leca;->a(Leca$a;)V

    .line 1280
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->k:Landroid/view/TextureView;

    if-nez v0, :cond_3

    .line 1281
    new-instance v0, Landroid/view/TextureView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->k:Landroid/view/TextureView;

    .line 1282
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_2

    .line 1283
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_5

    .line 1284
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->k:Landroid/view/TextureView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Ldp;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1289
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->k:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1294
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->j:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->k:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1295
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1298
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->j:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->k:Landroid/view/TextureView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 115
    :cond_4
    :goto_2
    return-void

    .line 1260
    :pswitch_0
    new-instance v0, Lebz;

    invoke-direct {v0}, Lebz;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->p:Leca;

    goto/16 :goto_0

    .line 1286
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->k:Landroid/view/TextureView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Ldp;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 112
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->d:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->COMPLETED:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    if-ne v0, v1, :cond_4

    .line 113
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->b()V

    goto :goto_2

    .line 1258
    :pswitch_data_0
    .packed-switch 0xde
        :pswitch_0
    .end packed-switch
.end method

.method public final a(I)V
    .locals 4
    .param p1, "pos"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "seekTo:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->p:Leca;

    if-eqz v0, :cond_0

    .line 156
    if-ltz p1, :cond_0

    .line 157
    iput p1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->f:I

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "pos:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->h:Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->d:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->PREPARING:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->d:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->IDLE:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->d:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->ERROR:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    if-eq v0, v1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->d:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->COMPLETED:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    if-ne v0, v1, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->b()V

    .line 162
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->p:Leca;

    iget v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->f:I

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Leca;->a(J)V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->p:Leca;

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Leca;->a(J)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->n:Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->o:Ljava/util/Map;

    .line 92
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->j()V

    .line 93
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 120
    sget-object v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->PLAYING:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->e:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "targe state:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->e:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->d:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->PAUSED:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->d:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->PREPARED:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    if-ne v0, v1, :cond_2

    .line 123
    :cond_0
    sget-object v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->PLAYING:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->setCurrentPlayState(Lcom/alibaba/android/dingtalkim/video/play/PlayerState;)V

    .line 124
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->p:Leca;

    invoke-interface {v0}, Leca;->b()V

    .line 134
    :cond_1
    :goto_0
    return-void

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->d:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->BUFFERING_PAUSED:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    if-ne v0, v1, :cond_3

    .line 126
    sget-object v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->BUFFERING_PLAYING:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->setCurrentPlayState(Lcom/alibaba/android/dingtalkim/video/play/PlayerState;)V

    .line 127
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->p:Leca;

    invoke-interface {v0}, Leca;->b()V

    goto :goto_0

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->d:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->IDLE:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    if-ne v0, v1, :cond_4

    .line 129
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->n()V

    goto :goto_0

    .line 130
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->d:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->COMPLETED:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    if-ne v0, v1, :cond_1

    .line 131
    sget-object v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->PLAYING:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->setCurrentPlayState(Lcom/alibaba/android/dingtalkim/video/play/PlayerState;)V

    .line 132
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->p:Leca;

    invoke-interface {v0}, Leca;->b()V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 139
    sget-object v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->PAUSED:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->e:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "targe state:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->e:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->d:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->PLAYING:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    if-ne v0, v1, :cond_0

    .line 142
    sget-object v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->PAUSED:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->setCurrentPlayState(Lcom/alibaba/android/dingtalkim/video/play/PlayerState;)V

    .line 143
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->p:Leca;

    invoke-interface {v0}, Leca;->c()V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->d:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->BUFFERING_PLAYING:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    if-ne v0, v1, :cond_1

    .line 146
    sget-object v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->BUFFERING_PAUSED:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->setCurrentPlayState(Lcom/alibaba/android/dingtalkim/video/play/PlayerState;)V

    .line 147
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->p:Leca;

    invoke-interface {v0}, Leca;->c()V

    .line 150
    :cond_1
    return-void
.end method

.method public final d()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->d:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->IDLE:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 193
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->d:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->BUFFERING_PLAYING:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 198
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->d:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->BUFFERING_PAUSED:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 203
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->d:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->PLAYING:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->q:I

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 248
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->p:Leca;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->p:Leca;

    invoke-interface {v0}, Leca;->d()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 243
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->p:Leca;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->p:Leca;

    invoke-interface {v0}, Leca;->e()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getPlayingUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getTextureView()Landroid/view/TextureView;
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->k:Landroid/view/TextureView;

    return-object v0
.end method

.method public final h()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 208
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->d:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->PAUSED:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 218
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->d:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->COMPLETED:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 564
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->p:Leca;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->p:Leca;

    invoke-interface {v0}, Leca;->f()V

    .line 566
    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->p:Leca;

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->j:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->k:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 569
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->m:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->m:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 571
    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->m:Landroid/graphics/SurfaceTexture;

    .line 573
    :cond_1
    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->a(Landroid/view/Surface;)V

    .line 574
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->l:Lecb$d;

    if-eqz v0, :cond_2

    .line 575
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->l:Lecb$d;

    invoke-interface {v0}, Lecb$d;->a()V

    .line 577
    :cond_2
    sget-object v0, Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;->NORMAL:Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->h:Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;

    .line 578
    sget-object v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->IDLE:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->e:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    .line 579
    sget-object v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->IDLE:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->setCurrentPlayState(Lcom/alibaba/android/dingtalkim/video/play/PlayerState;)V

    .line 580
    return-void
.end method

.method public final k()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "handleConfigurationChanged: width:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->k:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->k:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 600
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->o()V

    .line 601
    return-void
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 613
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->w:Z

    return v0
.end method

.method public final m()V
    .locals 1

    .prologue
    .line 633
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->j()V

    .line 634
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->l:Lecb$d;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->l:Lecb$d;

    invoke-interface {v0}, Lecb$d;->c()V

    .line 636
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->l:Lecb$d;

    .line 638
    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 304
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->m:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 305
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->m:Landroid/graphics/SurfaceTexture;

    .line 306
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->n()V

    .line 316
    :goto_0
    return-void

    .line 308
    :cond_0
    const/16 v0, 0x10

    invoke-static {v0}, Lcms;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->k:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->m:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->m:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 312
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->m:Landroid/graphics/SurfaceTexture;

    .line 313
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->m:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->a(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->m:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 355
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 366
    return-void
.end method

.method public setEnableTopBottomVisible(Z)V
    .locals 2
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 605
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->w:Z

    .line 606
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->l:Lecb$d;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->l:Lecb$d;

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->w:Z

    invoke-interface {v0, v1}, Lecb$d;->setEnableTotBottomVisible(Z)V

    .line 609
    :cond_0
    return-void
.end method

.method public setLooping(Z)V
    .locals 3
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->g:Z

    .line 224
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->p:Leca;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->d:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    sget-object v2, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->ERROR:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->d:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    sget-object v2, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->PREPARING:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    if-eq v1, v2, :cond_0

    .line 226
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->p:Leca;

    invoke-interface {v1, p1}, Leca;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setOnCompleteListener(Lecb$a;)V
    .locals 0
    .param p1, "onCompleteListener"    # Lecb$a;

    .prologue
    .line 618
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->r:Lecb$a;

    .line 619
    return-void
.end method

.method public setOnErrorListener(Lecb$b;)V
    .locals 0
    .param p1, "onErrorListener"    # Lecb$b;

    .prologue
    .line 623
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->s:Lecb$b;

    .line 624
    return-void
.end method

.method public setPlayerType(I)V
    .locals 0
    .param p1, "playerType"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->c:I

    .line 102
    return-void
.end method

.method public setViewer(Lecb$d;)V
    .locals 4
    .param p1, "viewer"    # Lecb$d;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, -0x1

    .line 584
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->l:Lecb$d;

    if-eqz v1, :cond_0

    .line 585
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->l:Lecb$d;

    invoke-interface {v1}, Lecb$d;->c()V

    .line 586
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->j:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->l:Lecb$d;

    invoke-interface {v2}, Lecb$d;->b()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 588
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->l:Lecb$d;

    .line 589
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->l:Lecb$d;

    invoke-interface {v1, p0}, Lecb$d;->setPresenter(Lecb$c;)V

    .line 590
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->l:Lecb$d;

    .line 2613
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->w:Z

    .line 590
    invoke-interface {v1, v2}, Lecb$d;->setEnableTotBottomVisible(Z)V

    .line 591
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v3, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 594
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->j:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->l:Lecb$d;

    invoke-interface {v2}, Lecb$d;->b()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 595
    return-void
.end method
