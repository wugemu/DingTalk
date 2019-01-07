.class public final Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;
.super Ljava/lang/Object;
.source "TopicEmotionSearchCenter.java"

# interfaces
.implements Ldih$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$a;,
        Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;
    }
.end annotation


# instance fields
.field a:Landroid/app/Activity;

.field public b:Z

.field public c:Z

.field d:Landroid/view/ViewStub;

.field public e:Landroid/view/View;

.field f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field g:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field h:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

.field i:Landroid/widget/FrameLayout;

.field j:Landroid/widget/GridView;

.field k:Landroid/widget/RelativeLayout;

.field l:Landroid/widget/RelativeLayout;

.field m:Landroid/widget/RelativeLayout;

.field n:Ldih$a;

.field o:Lcom/alibaba/android/dingtalkim/gifemotion/search/HotwordsAdapter;

.field p:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

.field public q:Ldiz;

.field public r:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$a;

.field public s:Ldie;

.field t:Landroid/widget/AbsListView$OnScrollListener;

.field private final u:I

.field private v:Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;

.field private w:I

.field private x:Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ldie;Landroid/view/ViewStub;Ldpy;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "topicEmotionCenter"    # Ldie;
    .param p3, "topicEmotionSearch"    # Landroid/view/ViewStub;
    .param p4, "imEmotionManager"    # Ldpy;

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    new-instance v1, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$8;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$8;-><init>(Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->x:Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$a;

    .line 565
    new-instance v1, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$9;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$9;-><init>(Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->t:Landroid/widget/AbsListView$OnScrollListener;

    .line 84
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 85
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "TopicEmotionSearchCenter params cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_1
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->a:Landroid/app/Activity;

    .line 88
    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->s:Ldie;

    .line 89
    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->d:Landroid/view/ViewStub;

    .line 90
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->d:Landroid/view/ViewStub;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->c:Z

    .line 91
    new-instance v1, Ldii;

    invoke-direct {v1, p0, p1, p4}, Ldii;-><init>(Ldih$b;Landroid/app/Activity;Ldpy;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->n:Ldih$a;

    .line 92
    const/high16 v1, 0x43660000    # 230.0f

    invoke-static {p1, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->u:I

    .line 93
    sget-object v1, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;->INIT:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->p:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    .line 94
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 95
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Lctk$d;->im_topic_search_hls_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sget v3, Lctk$d;->im_topic_search_hls_margin_bottom:I

    .line 96
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Lctk$d;->im_topic_search_hls_height:I

    .line 97
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->w:I

    .line 98
    iget v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->w:I

    if-gez v1, :cond_2

    .line 99
    iput v2, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->w:I

    .line 101
    :cond_2
    return-void

    .end local v0    # "resources":Landroid/content/res/Resources;
    :cond_3
    move v1, v2

    .line 90
    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    .prologue
    .line 53
    .line 3240
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->p:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    sget-object v1, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;->HAS_DISMISSED:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    if-ne v0, v1, :cond_1

    .line 3241
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->n:Ldih$a;

    invoke-interface {v0}, Ldih$a;->c()V

    .line 3242
    sget-object v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;->PREPARE_TO_SHOW:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->p:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    .line 3243
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->e()V

    .line 3244
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->a()V

    .line 3245
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->requestFocus()Z

    :cond_0
    :goto_0
    return-void

    .line 3246
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->p:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    sget-object v1, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;->HAS_SHOWN:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    if-ne v0, v1, :cond_0

    .line 3247
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->n:Ldih$a;

    invoke-interface {v0}, Ldih$a;->c()V

    goto :goto_0
.end method

.method private c(Z)V
    .locals 2
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 496
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->l:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 497
    return-void

    .line 496
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private d(Z)V
    .locals 2
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 500
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->m:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 501
    return-void

    .line 500
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private e(Z)V
    .locals 2
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 504
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->k:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 505
    return-void

    .line 504
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private f(Z)V
    .locals 2
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 508
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->j:Landroid/widget/GridView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setVisibility(I)V

    .line 509
    return-void

    .line 508
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private k()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 273
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 274
    return-void
.end method

.method private l()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 512
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->p:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    sget-object v1, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;->PREPARE_TO_SHOW:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->p:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    sget-object v1, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;->HAS_SHOWN:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->o:Lcom/alibaba/android/dingtalkim/gifemotion/search/HotwordsAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->o:Lcom/alibaba/android/dingtalkim/gifemotion/search/HotwordsAdapter;

    .line 513
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/gifemotion/search/HotwordsAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->setVisibility(I)V

    .line 518
    :goto_0
    return-void

    .line 516
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 269
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-static {v0, v1}, Lcms;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 270
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 3
    .param p1, "word"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 287
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->p:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    sget-object v1, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;->HAS_SHOWN:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    if-ne v0, v1, :cond_2

    .line 291
    sget-object v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;->PREPARE_TO_DISMISS:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->p:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    .line 1393
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1394
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1395
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setCursorVisible(Z)V

    .line 1396
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->l()V

    .line 1397
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->j()V

    .line 293
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 294
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->k()V

    .line 295
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->n:Ldih$a;

    invoke-interface {v0, p1}, Ldih$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->p:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    sget-object v1, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;->HAS_DISMISSED:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    if-ne v0, v1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->n:Ldih$a;

    invoke-interface {v0, p1}, Ldih$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 469
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/idl/HotSearchWordObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 422
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/idl/HotSearchWordObject;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->p:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->p:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    sget-object v1, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;->INIT:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    if-ne v0, v1, :cond_1

    .line 423
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->o:Lcom/alibaba/android/dingtalkim/gifemotion/search/HotwordsAdapter;

    if-nez v0, :cond_0

    .line 424
    new-instance v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/HotwordsAdapter;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkim/gifemotion/search/HotwordsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->o:Lcom/alibaba/android/dingtalkim/gifemotion/search/HotwordsAdapter;

    .line 425
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->o:Lcom/alibaba/android/dingtalkim/gifemotion/search/HotwordsAdapter;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->o:Lcom/alibaba/android/dingtalkim/gifemotion/search/HotwordsAdapter;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/gifemotion/search/HotwordsAdapter;->a(Ljava/util/List;)V

    .line 428
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->l()V

    .line 430
    :cond_1
    return-void
.end method

.method public a(Z)Z
    .locals 3
    .param p1, "clearEditText"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 252
    if-eqz p1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->n:Ldih$a;

    invoke-interface {v1}, Ldih$a;->c()V

    .line 257
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->p:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    sget-object v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;->HAS_SHOWN:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    if-ne v1, v2, :cond_1

    .line 258
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->k()V

    .line 265
    :goto_0
    return v0

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->p:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    sget-object v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;->HAS_DISMISSED:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    if-ne v1, v2, :cond_2

    .line 261
    sget-object v1, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;->INIT:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->p:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    .line 262
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->d()V

    goto :goto_0

    .line 265
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;>;"
    const/4 v2, 0x0

    .line 434
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->v:Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;

    if-nez v0, :cond_0

    .line 435
    new-instance v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->v:Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;

    .line 436
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->v:Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->x:Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$a;

    .line 2163
    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;->a:Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$a;

    .line 437
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->j:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->v:Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->v:Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;->a(Ljava/util/List;)V

    .line 440
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->v:Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 441
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->f(Z)V

    .line 442
    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->e(Z)V

    .line 443
    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->c(Z)V

    .line 444
    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->d(Z)V

    .line 449
    :goto_0
    return-void

    .line 446
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->h()V

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 3
    .param p1, "visible"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 346
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->e:Landroid/view/View;

    if-nez v0, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    if-eqz p1, :cond_2

    .line 350
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->p:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    sget-object v1, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;->PREPARE_TO_SHOW:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    if-ne v0, v1, :cond_0

    .line 351
    sget-object v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;->HAS_SHOWN:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->p:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    .line 352
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->e()V

    goto :goto_0

    .line 355
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->p:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    sget-object v1, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;->HAS_SHOWN:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    if-ne v0, v1, :cond_3

    .line 356
    sget-object v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;->INIT:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->p:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    .line 358
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->d()V

    goto :goto_0

    .line 359
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->p:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    sget-object v1, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;->PREPARE_TO_DISMISS:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    if-ne v0, v1, :cond_0

    .line 360
    sget-object v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;->HAS_DISMISSED:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->p:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    .line 1401
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1402
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1403
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setCursorVisible(Z)V

    .line 1404
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->l()V

    .line 1405
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->j()V

    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 327
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->e:Landroid/view/View;

    if-nez v1, :cond_1

    .line 330
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->a(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->p:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->p:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    sget-object v1, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;->INIT:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 367
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->i:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setCursorVisible(Z)V

    .line 370
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->requestFocus()Z

    .line 372
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setSelection(I)V

    .line 374
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->l()V

    .line 375
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->j()V

    .line 377
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->n:Ldih$a;

    invoke-interface {v0}, Ldih$a;->c()V

    .line 378
    return-void
.end method

.method e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 381
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->i:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setCursorVisible(Z)V

    .line 384
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->requestFocus()Z

    .line 386
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setSelection(I)V

    .line 388
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->l()V

    .line 389
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->j()V

    .line 390
    return-void
.end method

.method public final f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 453
    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->f(Z)V

    .line 454
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->e(Z)V

    .line 455
    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->c(Z)V

    .line 456
    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->d(Z)V

    .line 457
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 461
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->f(Z)V

    .line 462
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->e(Z)V

    .line 463
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->c(Z)V

    .line 464
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->d(Z)V

    .line 465
    return-void
.end method

.method public final h()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 481
    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->f(Z)V

    .line 482
    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->e(Z)V

    .line 483
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->c(Z)V

    .line 484
    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->d(Z)V

    .line 485
    return-void
.end method

.method public final i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 489
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->f(Z)V

    .line 490
    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->e(Z)V

    .line 491
    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->c(Z)V

    .line 492
    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->d(Z)V

    .line 493
    return-void
.end method

.method public final j()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 524
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->i:Landroid/widget/FrameLayout;

    if-nez v3, :cond_1

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->a:Landroid/app/Activity;

    const-string/jumbo v4, "pref_keyboard_height"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v1

    .line 528
    .local v1, "realHeight":I
    iget v3, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->u:I

    if-gt v1, v3, :cond_2

    .line 529
    iget v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->u:I

    .line 2410
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->p:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->p:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    sget-object v4, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;->INIT:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->p:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    sget-object v4, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;->PREPARE_TO_SHOW:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->p:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    sget-object v4, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;->HAS_SHOWN:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    if-eq v3, v4, :cond_3

    .line 2413
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->o:Lcom/alibaba/android/dingtalkim/gifemotion/search/HotwordsAdapter;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->o:Lcom/alibaba/android/dingtalkim/gifemotion/search/HotwordsAdapter;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/gifemotion/search/HotwordsAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 2414
    iget v2, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->w:I

    .line 531
    :cond_3
    add-int/2addr v1, v2

    .line 533
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 534
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v1, :cond_0

    .line 537
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 538
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
