.class public final Ldjx;
.super Ljava/lang/Object;
.source "InputSmartTipViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldjx$b;,
        Ldjx$a;
    }
.end annotation


# instance fields
.field a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

.field public b:Ldiz;

.field c:Ldjx$b;

.field d:Landroid/view/View;

.field e:Landroid/view/View;

.field f:Landroid/view/View;

.field g:Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;

.field h:Landroid/view/View;

.field i:Landroid/view/View;

.field j:Landroid/widget/TextView;

.field k:Landroid/widget/TextView;

.field l:Landroid/widget/ImageView;

.field m:Lcom/alibaba/doraemon/image/ImageMagician;

.field n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lgwo;",
            ">;"
        }
    .end annotation
.end field

.field o:Landroid/animation/ValueAnimator;

.field p:Landroid/os/Handler;

.field private q:Ldjx$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldjx$a",
            "<",
            "Lgwo;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/regex/Pattern;

.field private s:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;Landroid/view/View;Ldiz;Ldjx$b;)V
    .locals 2
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;
    .param p2, "mainView"    # Landroid/view/View;
    .param p3, "chatMessageSender"    # Ldiz;
    .param p4, "smartTipListener"    # Ldjx$b;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldjx;->n:Ljava/util/Map;

    .line 114
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Ldjx$1;

    invoke-direct {v1, p0}, Ldjx$1;-><init>(Ldjx;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Ldjx;->p:Landroid/os/Handler;

    .line 102
    iput-object p1, p0, Ldjx;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .line 103
    iput-object p2, p0, Ldjx;->d:Landroid/view/View;

    .line 104
    iput-object p3, p0, Ldjx;->b:Ldiz;

    .line 105
    iput-object p4, p0, Ldjx;->c:Ldjx$b;

    .line 106
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Ldjx;->m:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldjx;->s:Z

    .line 108
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 185
    invoke-virtual {p0}, Ldjx;->b()V

    .line 186
    invoke-virtual {p0}, Ldjx;->c()V

    .line 187
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;II)V
    .locals 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 148
    iget-boolean v2, p0, Ldjx;->s:Z

    if-nez v2, :cond_0

    .line 168
    :goto_0
    return-void

    .line 153
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ldjx;->a()V

    .line 158
    if-nez p2, :cond_1

    if-le p3, v3, :cond_1

    .line 159
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ldjx;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "im"

    const-string/jumbo v3, "InputSmartTipViewManager"

    invoke-static {v0}, Lcpt;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v2, p0, Ldjx;->p:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 163
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Ldjx;->p:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 249
    .line 2539
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2540
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2541
    iget-object v2, p0, Ldjx;->r:Ljava/util/regex/Pattern;

    if-nez v2, :cond_0

    .line 2542
    const-string/jumbo v2, "(^[a-z0-9._-]+\\.(com|cn|net|org|edu|gov|mil|biz|info|name|museum|us|ca|uk|hk|tw|jp|it|io|me)(/[a-zA-Z0-9&%_./-~-,\'+$#]*)?$)|((http|https)://(([a-zA-Z0-9._-]+\\.[a-zA-Z]{2,6})|([0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}))(:[0-9]{1,4})?(/[a-zA-Z0-9&%_./-~-,\'+$#]*)?)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Ldjx;->r:Ljava/util/regex/Pattern;

    .line 2544
    :cond_0
    iget-object v2, p0, Ldjx;->r:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2545
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2546
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 2562
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 2563
    const-string/jumbo v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2564
    :cond_1
    const/4 v2, 0x1

    .line 2547
    :goto_0
    if-nez v2, :cond_2

    .line 2548
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "http://"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object p1, v0

    .line 250
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 3258
    iget-object v0, p0, Ldjx;->q:Ldjx$a;

    if-eqz v0, :cond_3

    .line 3259
    iget-object v0, p0, Ldjx;->q:Ldjx$a;

    .line 3591
    iput-object v1, v0, Ldjx$a;->a:Lcma;

    .line 3260
    iput-object v1, p0, Ldjx;->q:Ldjx$a;

    .line 3262
    :cond_3
    new-instance v0, Ldjx$a;

    new-instance v1, Ldjx$3;

    invoke-direct {v1, p0, p1}, Ldjx$3;-><init>(Ldjx;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ldjx$a;-><init>(Lcma;)V

    iput-object v0, p0, Ldjx;->q:Ldjx$a;

    .line 4298
    iget-object v0, p0, Ldjx;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v0, :cond_8

    .line 4299
    invoke-virtual {p0}, Ldjx;->d()V

    .line 4300
    invoke-virtual {p0}, Ldjx;->e()V

    .line 4301
    iget-object v0, p0, Ldjx;->f:Landroid/view/View;

    if-nez v0, :cond_4

    .line 4302
    iget-object v0, p0, Ldjx;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    sget v1, Lctk$f;->input_smart_tip_loading_panel:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldjx;->f:Landroid/view/View;

    .line 4303
    iget-object v0, p0, Ldjx;->f:Landroid/view/View;

    sget v1, Lctk$f;->shimmer_view_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;

    iput-object v0, p0, Ldjx;->g:Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;

    .line 4305
    :cond_4
    iget-object v0, p0, Ldjx;->f:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4306
    iget-object v0, p0, Ldjx;->g:Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;

    .line 5120
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->a:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-nez v1, :cond_5

    .line 5121
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 4307
    :cond_5
    iget-object v0, p0, Ldjx;->e:Landroid/view/View;

    if-nez v0, :cond_6

    .line 4308
    iget-object v0, p0, Ldjx;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    sget v1, Lctk$f;->input_smart_tip_bg:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldjx;->e:Landroid/view/View;

    .line 4310
    :cond_6
    iget-object v0, p0, Ldjx;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 4311
    iget-object v1, p0, Ldjx;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 4312
    iget-object v1, p0, Ldjx;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 4313
    iget-object v1, p0, Ldjx;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4314
    iget-object v0, p0, Ldjx;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4315
    iget-object v0, p0, Ldjx;->f:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 4316
    iget-object v0, p0, Ldjx;->e:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 4317
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Ldjx;->o:Landroid/animation/ValueAnimator;

    .line 4318
    iget-object v0, p0, Ldjx;->o:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4319
    iget-object v0, p0, Ldjx;->o:Landroid/animation/ValueAnimator;

    new-instance v1, Ldjx$4;

    invoke-direct {v1, p0}, Ldjx$4;-><init>(Ldjx;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4326
    iget-object v0, p0, Ldjx;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 4327
    iget-object v0, p0, Ldjx;->h:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 4328
    iget-object v0, p0, Ldjx;->h:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 4330
    :cond_7
    iget-object v0, p0, Ldjx;->i:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 4331
    iget-object v0, p0, Ldjx;->i:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3289
    :cond_8
    iget-object v0, p0, Ldjx;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3290
    iget-object v0, p0, Ldjx;->q:Ldjx$a;

    iget-object v1, p0, Ldjx;->n:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldjx$a;->onDataReceived(Ljava/lang/Object;)V

    :cond_9
    :goto_2
    return-void

    :cond_a
    move v2, v3

    .line 2567
    goto/16 :goto_0

    :cond_b
    move-object p1, v1

    .line 2553
    goto/16 :goto_1

    .line 3293
    :cond_c
    invoke-static {}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    move-result-object v0

    iget-object v1, p0, Ldjx;->q:Ldjx$a;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->parseUrlFilter(Ljava/lang/String;Lcma;)V

    goto :goto_2

    .line 4317
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 132
    iget-boolean v0, p0, Ldjx;->s:Z

    if-eq p1, v0, :cond_0

    .line 133
    iput-boolean p1, p0, Ldjx;->s:Z

    .line 134
    iget-boolean v0, p0, Ldjx;->s:Z

    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p0}, Ldjx;->a()V

    .line 138
    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 194
    iget-object v0, p0, Ldjx;->p:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 196
    iget-object v0, p0, Ldjx;->p:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 198
    iget-object v0, p0, Ldjx;->q:Ldjx$a;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Ldjx;->q:Ldjx$a;

    .line 1591
    iput-object v2, v0, Ldjx$a;->a:Lcma;

    .line 200
    iput-object v2, p0, Ldjx;->q:Ldjx$a;

    .line 202
    :cond_0
    return-void
.end method

.method c()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 208
    iget-object v0, p0, Ldjx;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldjx;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 209
    invoke-virtual {p0}, Ldjx;->d()V

    .line 210
    iget-object v0, p0, Ldjx;->d:Landroid/view/View;

    const-string/jumbo v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Ldjx;->o:Landroid/animation/ValueAnimator;

    .line 211
    iget-object v0, p0, Ldjx;->o:Landroid/animation/ValueAnimator;

    const/high16 v1, 0x43480000    # 200.0f

    iget-object v2, p0, Ldjx;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 212
    iget-object v0, p0, Ldjx;->o:Landroid/animation/ValueAnimator;

    new-instance v1, Ldjx$2;

    invoke-direct {v1, p0}, Ldjx$2;-><init>(Ldjx;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 235
    iget-object v0, p0, Ldjx;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 237
    :cond_0
    return-void
.end method

.method d()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Ldjx;->o:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Ldjx;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 242
    iget-object v0, p0, Ldjx;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Ldjx;->o:Landroid/animation/ValueAnimator;

    .line 245
    :cond_0
    return-void
.end method

.method e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 524
    iget-object v0, p0, Ldjx;->d:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p0, Ldjx;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Ldjx;->d:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Ldjx;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    sget v1, Lctk$f;->input_smart_tip_root:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldjx;->d:Landroid/view/View;

    .line 529
    :cond_0
    iget-object v0, p0, Ldjx;->d:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 531
    :cond_1
    return-void
.end method
