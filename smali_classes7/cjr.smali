.class Lcjr;
.super Ljava/lang/Object;
.source "FloatWindowShowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcjr$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Lcjr;


# instance fields
.field private final c:F

.field private final d:F

.field private e:Landroid/content/Context;

.field private f:Landroid/view/WindowManager;

.field private g:Landroid/view/WindowManager$LayoutParams;

.field private h:Landroid/animation/ObjectAnimator;

.field private i:Landroid/animation/ObjectAnimator;

.field private j:Lcjs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcjr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcjr;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcjr;->e:Landroid/content/Context;

    .line 51
    iget-object v0, p0, Lcjr;->e:Landroid/content/Context;

    const/high16 v1, -0x3c510000    # -350.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcjr;->c:F

    .line 52
    iput v4, p0, Lcjr;->d:F

    .line 53
    iget-object v0, p0, Lcjr;->e:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcjr;->f:Landroid/view/WindowManager;

    .line 1193
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcjr;->g:Landroid/view/WindowManager$LayoutParams;

    .line 1196
    iget-object v0, p0, Lcjr;->g:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1199
    iget-object v0, p0, Lcjr;->g:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1200
    iget-object v0, p0, Lcjr;->g:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1203
    iget-object v0, p0, Lcjr;->g:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x208

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1207
    iget-object v0, p0, Lcjr;->g:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1212
    const-string/jumbo v0, "translationY"

    new-array v1, v7, [F

    iget v2, p0, Lcjr;->c:F

    aput v2, v1, v5

    aput v4, v1, v6

    .line 1213
    invoke-static {v8, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    .line 1214
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcjr;->h:Landroid/animation/ObjectAnimator;

    .line 1217
    const-string/jumbo v0, "translationY"

    new-array v1, v7, [F

    aput v4, v1, v5

    iget v2, p0, Lcjr;->c:F

    aput v2, v1, v6

    .line 1218
    invoke-static {v8, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    .line 1219
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcjr;->i:Landroid/animation/ObjectAnimator;

    .line 56
    return-void
.end method

.method public static a()Lcjr;
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lcjr;->b:Lcjr;

    if-nez v0, :cond_1

    .line 60
    const-class v1, Lcjr;

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v0, Lcjr;->b:Lcjr;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcjr;

    invoke-direct {v0}, Lcjr;-><init>()V

    sput-object v0, Lcjr;->b:Lcjr;

    .line 64
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_1
    sget-object v0, Lcjr;->b:Lcjr;

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcjr;)Lcjs;
    .locals 1
    .param p0, "x0"    # Lcjr;

    .prologue
    .line 28
    iget-object v0, p0, Lcjr;->j:Lcjs;

    return-object v0
.end method

.method static synthetic a(Lcjr;Lcjr$a;)V
    .locals 2
    .param p0, "x0"    # Lcjr;
    .param p1, "x1"    # Lcjr$a;

    .prologue
    .line 28
    .line 11156
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcjr$3;

    invoke-direct {v1, p0, p1}, Lcjr$3;-><init>(Lcjr;Lcjr$a;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 28
    return-void
.end method

.method static synthetic a(Lcjr;Lcjs;)V
    .locals 7
    .param p0, "x0"    # Lcjr;
    .param p1, "x1"    # Lcjs;

    .prologue
    const/4 v6, 0x1

    .line 28
    .line 5093
    if-eqz p1, :cond_0

    .line 6049
    iget-object v0, p1, Lcjs;->c:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatBaseView;

    .line 5093
    if-nez v0, :cond_1

    .line 5116
    :cond_0
    :goto_0
    return-void

    .line 5096
    :cond_1
    iput-object p1, p0, Lcjr;->j:Lcjs;

    .line 5097
    invoke-direct {p0}, Lcjr;->c()V

    .line 5099
    iget-object v0, p0, Lcjr;->g:Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatWindowUtil;->b()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 5101
    :try_start_0
    iget-object v0, p0, Lcjr;->f:Landroid/view/WindowManager;

    iget-object v1, p0, Lcjr;->j:Lcjs;

    .line 7049
    iget-object v1, v1, Lcjs;->c:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatBaseView;

    .line 5101
    iget-object v2, p0, Lcjr;->g:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7053
    iget-object v0, p1, Lcjs;->d:Lcjs$b;

    .line 5102
    if-eqz v0, :cond_2

    .line 8053
    iget-object v0, p1, Lcjs;->d:Lcjs$b;

    .line 5103
    invoke-interface {v0}, Lcjs$b;->b()V

    .line 9049
    :cond_2
    iget-object v0, p1, Lcjs;->c:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatBaseView;

    .line 5105
    iget-object v1, p0, Lcjr;->j:Lcjs;

    .line 9057
    iget-object v1, v1, Lcjs;->e:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;

    .line 5105
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatBaseView;->a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;)V

    .line 5106
    iget-object v0, p0, Lcjr;->j:Lcjs;

    .line 10049
    iget-object v0, v0, Lcjs;->c:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatBaseView;

    .line 5106
    iget v1, p0, Lcjr;->c:F

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatBaseView;->setTranslationY(F)V

    .line 5107
    iget-object v0, p0, Lcjr;->h:Landroid/animation/ObjectAnimator;

    .line 11049
    iget-object v1, p1, Lcjs;->c:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatBaseView;

    .line 5107
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 5108
    iget-object v0, p0, Lcjr;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5109
    :catch_0
    move-exception v0

    .line 5110
    const-string/jumbo v1, "dingtalkbase"

    sget-object v2, Lcjr;->a:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "[FloatWindowShowManager] addView failed:"

    aput-object v5, v3, v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5111
    const-string/jumbo v1, "[FloatWindow] show error"

    invoke-static {v1}, Lcnt;->a(Ljava/lang/String;)V

    .line 5112
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v2, "pref_key_has_float_window_failed"

    invoke-static {v1, v2, v6}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 5113
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v1, v2, :cond_0

    .line 5114
    throw v0
.end method

.method private static a(Landroid/view/View;)Z
    .locals 2
    .param p0, "floatView"    # Landroid/view/View;

    .prologue
    .line 183
    if-nez p0, :cond_0

    .line 184
    const/4 v0, 0x0

    .line 189
    :goto_0
    return v0

    .line 186
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    goto :goto_0

    .line 189
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcjr;Landroid/view/View;)Z
    .locals 1
    .param p0, "x0"    # Lcjr;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 28
    invoke-static {p1}, Lcjr;->a(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcjr;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcjr;

    .prologue
    .line 28
    iget-object v0, p0, Lcjr;->f:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic b(Lcjr;Lcjs;)Lcjs;
    .locals 1
    .param p0, "x0"    # Lcjr;
    .param p1, "x1"    # Lcjs;

    .prologue
    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcjr;->j:Lcjs;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcjr;->a:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcjr;->i:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 224
    iget-object v0, p0, Lcjr;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 225
    iget-object v0, p0, Lcjr;->i:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 226
    return-void
.end method


# virtual methods
.method a(Lcjr$a;)V
    .locals 4
    .param p1, "hideCallback"    # Lcjr$a;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 120
    iget-object v0, p0, Lcjr;->j:Lcjs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcjr;->j:Lcjs;

    .line 2049
    iget-object v0, v0, Lcjs;->c:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatBaseView;

    .line 120
    if-nez v0, :cond_2

    .line 121
    :cond_0
    if-eqz p1, :cond_1

    .line 122
    invoke-interface {p1}, Lcjr$a;->a()V

    .line 152
    :cond_1
    :goto_0
    return-void

    .line 127
    :cond_2
    iget-object v0, p0, Lcjr;->j:Lcjs;

    .line 3049
    iget-object v0, v0, Lcjs;->c:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatBaseView;

    .line 127
    invoke-static {v0}, Lcjr;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcjr;->j:Lcjs;

    .line 129
    if-eqz p1, :cond_1

    .line 130
    invoke-interface {p1}, Lcjr$a;->a()V

    goto :goto_0

    .line 135
    :cond_3
    invoke-direct {p0}, Lcjr;->c()V

    .line 136
    iget-object v0, p0, Lcjr;->i:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcjr;->j:Lcjs;

    .line 4049
    iget-object v1, v1, Lcjs;->c:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatBaseView;

    .line 136
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lcjr;->i:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcjr;->j:Lcjs;

    .line 5049
    iget-object v3, v3, Lcjs;->c:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatBaseView;

    .line 137
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatBaseView;->getTranslationY()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcjr;->c:F

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 138
    iget-object v0, p0, Lcjr;->i:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcjr$2;

    invoke-direct {v1, p0, p1}, Lcjr$2;-><init>(Lcjr;Lcjr$a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 151
    iget-object v0, p0, Lcjr;->i:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method
