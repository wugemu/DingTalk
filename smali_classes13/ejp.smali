.class public final Lejp;
.super Ljava/lang/Object;
.source "HomeAttendanceManger.java"


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Landroid/content/Context;

.field public c:Landroid/content/BroadcastReceiver;

.field d:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

.field public e:Z

.field f:Z

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;",
            ">;"
        }
    .end annotation
.end field

.field h:Landroid/view/View;

.field i:Landroid/view/View;

.field j:Lejr;

.field private volatile k:J

.field private l:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lejr;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "homePopupManger"    # Lejr;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lejp;->e:Z

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lejp;->f:Z

    .line 70
    iput-object p1, p0, Lejp;->a:Landroid/app/Activity;

    .line 71
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lejp;->b:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lejp;->j:Lejr;

    .line 1080
    iget-object v0, p0, Lejp;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Lejp;->a:Landroid/app/Activity;

    const v1, 0x7f1105d5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lejp;->h:Landroid/view/View;

    .line 1084
    iget-object v0, p0, Lejp;->a:Landroid/app/Activity;

    const v1, 0x7f1105d6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lejp;->l:Landroid/widget/ImageView;

    .line 1085
    iget-object v0, p0, Lejp;->a:Landroid/app/Activity;

    const v1, 0x7f1105d7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lejp;->i:Landroid/view/View;

    .line 1086
    invoke-static {}, Lcms;->n()Ljava/lang/String;

    move-result-object v0

    .line 1087
    if-eqz v0, :cond_2

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1088
    iget-object v0, p0, Lejp;->l:Landroid/widget/ImageView;

    const v1, 0x7f020ae7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1092
    :goto_0
    iget-object v0, p0, Lejp;->h:Landroid/view/View;

    new-instance v1, Lejp$1;

    invoke-direct {v1, p0}, Lejp$1;-><init>(Lejp;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1108
    iget-object v0, p0, Lejp;->a:Landroid/app/Activity;

    const v1, 0x7f1105d2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    iput-object v0, p0, Lejp;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    .line 1109
    iget-object v0, p0, Lejp;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    new-instance v1, Lejp$4;

    invoke-direct {v1, p0}, Lejp$4;-><init>(Lejp;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1171
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v0

    new-instance v1, Lejp$7;

    invoke-direct {v1, p0}, Lejp$7;-><init>(Lejp;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->setCheckInListener(Lgvg;)V

    .line 1182
    iget-object v0, p0, Lejp;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 1185
    iget-object v0, p0, Lejp;->c:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 1186
    new-instance v0, Lejp$8;

    invoke-direct {v0, p0}, Lejp$8;-><init>(Lejp;)V

    iput-object v0, p0, Lejp;->c:Landroid/content/BroadcastReceiver;

    .line 1203
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "action_checkin_privacy_dialog_showed"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1204
    iget-object v1, p0, Lejp;->b:Landroid/content/Context;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lejp;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 77
    :cond_1
    return-void

    .line 1090
    :cond_2
    iget-object v0, p0, Lejp;->l:Landroid/widget/ImageView;

    const v1, 0x7f020ae6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method static synthetic a(Lejp;)V
    .locals 3
    .param p0, "x0"    # Lejp;

    .prologue
    const/4 v2, 0x0

    .line 48
    .line 1318
    iput-boolean v2, p0, Lejp;->f:Z

    .line 1319
    iget-object v0, p0, Lejp;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    if-eqz v0, :cond_0

    .line 1320
    iget-object v0, p0, Lejp;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setVisibility(I)V

    .line 1322
    :cond_0
    const-string/jumbo v0, "pref_key_home_checkin_tips"

    invoke-static {v0, v2}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 48
    return-void
.end method

.method static synthetic a(Lejp;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
    .locals 7
    .param p0, "x0"    # Lejp;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    const-wide/16 v4, 0x32

    const/4 v6, 0x2

    .line 48
    .line 2367
    iget-object v0, p0, Lejp;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2370
    const-string/jumbo v0, "rotation"

    new-array v1, v6, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2371
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2372
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2373
    const-string/jumbo v1, "rotation"

    new-array v2, v6, [F

    fill-array-data v2, :array_1

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 2374
    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2375
    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 2376
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 2377
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2378
    const-string/jumbo v2, "rotation"

    new-array v3, v6, [F

    fill-array-data v3, :array_2

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2379
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2380
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2382
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2383
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    aput-object v2, v4, v6

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 2384
    if-eqz p2, :cond_0

    .line 2385
    invoke-virtual {v3, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2387
    :cond_0
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 48
    :cond_1
    return-void

    .line 2370
    .line 2373
    .line 2378
    nop

    :array_0
    .array-data 4
        0x0
        -0x3e100000    # -30.0f
    .end array-data

    :array_1
    .array-data 4
        -0x3e100000    # -30.0f
        0x41f00000    # 30.0f
    .end array-data

    :array_2
    .array-data 4
        0x41f00000    # 30.0f
        0x0
    .end array-data
.end method

.method static synthetic a(Lejp;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lejp;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    .line 2153
    const-string/jumbo v0, "fast_checkin"

    const-string/jumbo v1, ""

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "checkin notification nav to"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2154
    iget-object v0, p0, Lejp;->a:Landroid/app/Activity;

    .line 2155
    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2156
    :cond_0
    :goto_0
    return-void

    .line 2158
    :cond_1
    const-string/jumbo v1, "HomeAttendanceManger"

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lejp$6;

    invoke-direct {v2, p0, p1, v0}, Lejp$6;-><init>(Lejp;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 264
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 265
    .local v0, "currentTime":J
    iget-wide v2, p0, Lejp;->k:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lejp;->k:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 266
    iget-object v2, p0, Lejp;->g:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lejp;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 267
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lejp;->a(Z)V

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iput-wide v0, p0, Lejp;->k:J

    .line 272
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v3

    new-instance v2, Lejp$11;

    invoke-direct {v2, p0}, Lejp$11;-><init>(Lejp;)V

    const-class v4, Lcma;

    iget-object v5, p0, Lejp;->a:Landroid/app/Activity;

    invoke-static {v2, v4, v5}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    invoke-virtual {v3, v2}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getCheckInRemindPlan(Lcma;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 299
    iget-object v0, p0, Lejp;->j:Lejr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lejp;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lejp$2;

    invoke-direct {v1, p0, p1}, Lejp$2;-><init>(Lejp;Z)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
