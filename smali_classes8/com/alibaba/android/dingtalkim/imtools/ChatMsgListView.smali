.class public Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;
.super Landroid/widget/LinearLayout;
.source "ChatMsgListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$a;,
        Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$b;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/AbsListView$OnScrollListener;

.field public a:Landroid/widget/ListView;

.field public b:Landroid/widget/RelativeLayout;

.field public c:Landroid/animation/ObjectAnimator;

.field public d:Landroid/widget/TextView;

.field public e:Z

.field public f:J

.field public g:Z

.field private h:Lcqr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcqr",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$b;

.field private j:Landroid/widget/AbsListView$OnScrollListener;

.field private k:Landroid/view/GestureDetector;

.field private l:F

.field private m:F

.field private n:Z

.field private o:Landroid/animation/ObjectAnimator;

.field private p:F

.field private q:F

.field private r:Landroid/view/GestureDetector;

.field private s:Z

.field private t:Lecg;

.field private u:Z

.field private v:F

.field private w:Landroid/animation/ObjectAnimator;

.field private x:F

.field private y:I

.field private z:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->e:Z

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->f:J

    .line 122
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$2;-><init>(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->r:Landroid/view/GestureDetector;

    .line 614
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->x:F

    .line 615
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->y:I

    .line 617
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$4;-><init>(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->z:Landroid/view/View$OnTouchListener;

    .line 698
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$5;-><init>(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->A:Landroid/widget/AbsListView$OnScrollListener;

    .line 92
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a(Landroid/content/Context;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->e:Z

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->f:J

    .line 122
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$2;-><init>(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->r:Landroid/view/GestureDetector;

    .line 614
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->x:F

    .line 615
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->y:I

    .line 617
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$4;-><init>(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->z:Landroid/view/View$OnTouchListener;

    .line 698
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$5;-><init>(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->A:Landroid/widget/AbsListView$OnScrollListener;

    .line 87
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a(Landroid/content/Context;)V

    .line 88
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;
    .param p1, "x1"    # F

    .prologue
    .line 47
    iput p1, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->x:F

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->y:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->o:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->r:Landroid/view/GestureDetector;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 96
    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->setOrientation(I)V

    .line 97
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->setGravity(I)V

    .line 98
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lctk$g;->chat_list_content:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 99
    sget v0, Lctk$f;->list_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    .line 100
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->d:Landroid/widget/TextView;

    .line 101
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->d:Landroid/widget/TextView;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lctk$d;->chat_listview_footer_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 104
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->d:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->d:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 106
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 107
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 108
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->A:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 109
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->z:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 110
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$d;->chatting_item_time_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->p:F

    .line 111
    iget v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->p:F

    iput v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->q:F

    .line 113
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$1;-><init>(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 120
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 5
    .param p1, "isCancel"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 514
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->g:Z

    if-eqz v0, :cond_1

    .line 515
    iput-boolean v3, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->g:Z

    .line 516
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->t:Lecg;

    if-eqz v0, :cond_0

    .line 517
    if-eqz p1, :cond_2

    .line 518
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->t:Lecg;

    invoke-virtual {v0}, Lecg;->b()V

    .line 519
    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->t:Lecg;

    .line 525
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v0, :cond_1

    .line 526
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->V()Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 527
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->V()Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setEnabled(Z)V

    .line 531
    :cond_1
    return-void

    .line 521
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->t:Lecg;

    .line 6283
    iget-boolean v1, v0, Lecg;->g:Z

    if-eqz v1, :cond_3

    .line 6284
    iput-boolean v3, v0, Lecg;->g:Z

    .line 6285
    iget v1, v0, Lecg;->f:I

    if-ne v1, v2, :cond_4

    .line 6286
    iput v2, v0, Lecg;->i:I

    .line 6290
    :goto_1
    iget-object v1, v0, Lecg;->c:Lcom/alibaba/doraemon/audio/AudioMagicianEx;

    if-eqz v1, :cond_3

    .line 6291
    iget-object v1, v0, Lecg;->c:Lcom/alibaba/doraemon/audio/AudioMagicianEx;

    invoke-interface {v1}, Lcom/alibaba/doraemon/audio/AudioMagicianEx;->stopRecord()V

    .line 6294
    :cond_3
    invoke-virtual {v0}, Lecg;->dismiss()V

    .line 522
    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->t:Lecg;

    goto :goto_0

    .line 6288
    :cond_4
    const/4 v1, 0x2

    iput v1, v0, Lecg;->i:I

    goto :goto_1
.end method

.method private b(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 394
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->h:Lcqr;

    if-eqz v0, :cond_2

    .line 395
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p1, v0

    .line 397
    if-gez p1, :cond_1

    .line 398
    const/4 p1, 0x0

    :cond_0
    :goto_0
    move v0, p1

    .line 405
    :goto_1
    return v0

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->h:Lcqr;

    invoke-virtual {v0}, Lcqr;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->h:Lcqr;

    invoke-virtual {v0}, Lcqr;->getCount()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_0

    .line 405
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->u:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->g:Z

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)Lecg;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->t:Lecg;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    .prologue
    .line 47
    iget v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->x:F

    return v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    .prologue
    .line 47
    iget v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->y:I

    return v0
.end method

.method private getFirstVisibleDataBottomOffset()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 410
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    if-eqz v3, :cond_0

    .line 411
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    sub-int v1, v3, v4

    .line 414
    .local v1, "dataPosition":I
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    neg-int v3, v3

    if-gt v1, v3, :cond_1

    .line 429
    .end local v1    # "dataPosition":I
    :cond_0
    :goto_0
    return v2

    .line 417
    .restart local v1    # "dataPosition":I
    :cond_1
    if-gez v1, :cond_2

    .line 419
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    neg-int v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 424
    .local v0, "child":Landroid/view/View;
    :goto_1
    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 422
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "child":Landroid/view/View;
    goto :goto_1
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->o:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    .prologue
    .line 47
    iget v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->q:F

    return v0
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    .prologue
    .line 47
    iget v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->p:F

    return v0
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    .prologue
    .line 47
    .line 8583
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->w:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 8584
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->w:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 8585
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->w:Landroid/animation/ObjectAnimator;

    .line 8586
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->setHiddenSelectOffset(F)V

    .line 47
    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    .prologue
    .line 47
    .line 8679
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->o:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 8680
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->o:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 8681
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->o:Landroid/animation/ObjectAnimator;

    .line 8683
    :cond_0
    const-string/jumbo v0, "hiddenTimeCurrentOffset"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->q:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->p:F

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->o:Landroid/animation/ObjectAnimator;

    .line 8684
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->o:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 8685
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->o:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 47
    return-void
.end method

.method static synthetic m(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->j:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->i:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$b;

    return-object v0
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 243
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr p1, v0

    .line 245
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr p1, v0

    .line 247
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 250
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 210
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->b:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 214
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->e:Z

    .line 216
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->c:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->c:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 219
    :cond_1
    return-void
.end method

.method public final a(IIZZ)V
    .locals 6
    .param p1, "dataPosition"    # I
    .param p2, "offset"    # I
    .param p3, "smooth"    # Z
    .param p4, "safe"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 309
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->h:Lcqr;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->h:Lcqr;

    invoke-virtual {v2}, Lcqr;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 311
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->h:Lcqr;

    invoke-virtual {v2}, Lcqr;->getCount()I

    move-result v2

    rem-int/2addr p1, v2

    .line 312
    if-gez p1, :cond_0

    .line 313
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->h:Lcqr;

    invoke-virtual {v2}, Lcqr;->getCount()I

    move-result v2

    add-int/2addr p1, v2

    .line 315
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 317
    .local v0, "headerCount":I
    add-int v1, p1, v0

    .line 318
    .local v1, "position":I
    if-eqz p3, :cond_2

    .line 319
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    invoke-virtual {v2, v1, p2}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(II)V

    .line 339
    .end local v0    # "headerCount":I
    .end local v1    # "position":I
    :cond_1
    :goto_0
    return-void

    .line 321
    .restart local v0    # "headerCount":I
    .restart local v1    # "position":I
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    invoke-virtual {v2, v1, p2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 322
    if-eqz p4, :cond_1

    .line 324
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    new-instance v3, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$3;

    invoke-direct {v3, p0, v1, p2}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$3;-><init>(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;II)V

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final a(Landroid/graphics/PointF;)V
    .locals 14
    .param p1, "point"    # Landroid/graphics/PointF;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v12, 0x1f4

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 489
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v3

    const-string/jumbo v4, "user_settings"

    const-string/jumbo v5, "full_screen_voice"

    invoke-virtual {v3, v4, v5}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 490
    .local v1, "fullScreenVoice":Ljava/lang/String;
    const-string/jumbo v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 491
    const/4 v2, 0x1

    .line 495
    .local v2, "hasFullScreenVoice":Z
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getContext()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v3, :cond_1

    .line 496
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->T()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    .line 497
    .local v0, "c":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    const-wide/16 v6, 0x7

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    const-wide/16 v6, 0xa

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 498
    :cond_0
    const/4 v2, 0x0

    .line 501
    .end local v0    # "c":Lcom/alibaba/wukong/im/Conversation;
    :cond_1
    iget-boolean v3, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->g:Z

    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    .line 502
    iput-boolean v10, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->g:Z

    .line 503
    new-instance v4, Lecg;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-direct {v4, v3}, Lecg;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;)V

    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->t:Lecg;

    .line 504
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->t:Lecg;

    .line 4253
    iget-object v3, v4, Lecg;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-wide/16 v6, 0x3c

    invoke-static {v3, v6, v7}, Lcms;->a(Landroid/content/Context;J)V

    .line 4255
    invoke-static {}, Lciu;->a()Lciu;

    move-result-object v3

    invoke-virtual {v3, v10, v10}, Lciu;->a(II)Z

    move-result v3

    if-nez v3, :cond_5

    .line 4256
    sget v3, Lctk$i;->audio_in_focues:I

    invoke-static {v3}, Lcms;->a(I)V

    .line 505
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getContext()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v3, :cond_3

    .line 506
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->V()Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 507
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->V()Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setEnabled(Z)V

    .line 511
    :cond_3
    return-void

    .line 493
    .end local v2    # "hasFullScreenVoice":Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "hasFullScreenVoice":Z
    goto/16 :goto_0

    .line 4260
    :cond_5
    iget-object v3, v4, Lecg;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v4, v3, v8, v8, v8}, Lecg;->showAtLocation(Landroid/view/View;III)V

    .line 4261
    iput-object p1, v4, Lecg;->e:Landroid/graphics/PointF;

    .line 4262
    iput-object p1, v4, Lecg;->d:Landroid/graphics/PointF;

    .line 4263
    if-eqz p1, :cond_6

    .line 4264
    invoke-virtual {v4, p1}, Lecg;->a(Landroid/graphics/PointF;)V

    .line 5241
    :cond_6
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 5242
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v9, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 5243
    invoke-virtual {v5, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 5244
    invoke-virtual {v3, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 5245
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    iget-object v6, v4, Lecg;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    const/high16 v7, 0x43160000    # 150.0f

    invoke-static {v6, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v5, v9, v9, v6, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 5246
    invoke-virtual {v5, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 5247
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 5248
    invoke-virtual {v3, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 5249
    iget-object v5, v4, Lecg;->k:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5359
    iget-boolean v3, v4, Lecg;->g:Z

    if-nez v3, :cond_2

    .line 5362
    iget-object v3, v4, Lecg;->c:Lcom/alibaba/doraemon/audio/AudioMagicianEx;

    if-nez v3, :cond_7

    .line 5363
    const-string/jumbo v3, "AUDIOEX"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/audio/AudioMagicianEx;

    iput-object v3, v4, Lecg;->c:Lcom/alibaba/doraemon/audio/AudioMagicianEx;

    .line 5364
    iget-object v3, v4, Lecg;->c:Lcom/alibaba/doraemon/audio/AudioMagicianEx;

    new-instance v5, Lctc;

    invoke-direct {v5}, Lctc;-><init>()V

    invoke-interface {v3, v5}, Lcom/alibaba/doraemon/audio/AudioMagicianEx;->setSampleConverter(Lcom/alibaba/doraemon/audio/SampleConverter;)Lcom/alibaba/doraemon/audio/AudioMagician;

    .line 5366
    :cond_7
    iput-boolean v10, v4, Lecg;->g:Z

    .line 5367
    iput-boolean v8, v4, Lecg;->h:Z

    .line 5368
    const/4 v3, 0x0

    iput-object v3, v4, Lecg;->j:Ljava/io/File;

    .line 5369
    iget-object v3, v4, Lecg;->c:Lcom/alibaba/doraemon/audio/AudioMagicianEx;

    new-instance v5, Lecg$4;

    invoke-direct {v5, v4}, Lecg$4;-><init>(Lecg;)V

    invoke-interface {v3, v5}, Lcom/alibaba/doraemon/audio/AudioMagicianEx;->record(Lcom/alibaba/doraemon/audio/OnRecordListener;)Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$a;)V
    .locals 4
    .param p1, "anchor"    # Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$a;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 284
    if-eqz p1, :cond_0

    .line 1059
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$a;->a:Lcom/alibaba/wukong/im/Message;

    .line 284
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->h:Lcqr;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->h:Lcqr;

    invoke-virtual {v1}, Lcqr;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->h:Lcqr;

    invoke-virtual {v1}, Lcqr;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 286
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->h:Lcqr;

    invoke-virtual {v1}, Lcqr;->c()Ljava/util/List;

    move-result-object v1

    .line 2059
    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$a;->a:Lcom/alibaba/wukong/im/Message;

    .line 286
    invoke-static {v1, v2}, Ldqq;->a(Ljava/util/List;Lcom/alibaba/wukong/im/Message;)I

    move-result v0

    .line 287
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 290
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->h:Lcqr;

    invoke-virtual {v1}, Lcqr;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_1

    .line 291
    invoke-virtual {p0, v0, v3, v3, v3}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a(IIZZ)V

    .line 299
    .end local v0    # "position":I
    :cond_0
    :goto_0
    return-void

    .line 294
    .restart local v0    # "position":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 3059
    iget v1, p1, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$a;->b:I

    .line 295
    invoke-virtual {p0, v0, v1, v3, v3}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a(IIZZ)V

    goto :goto_0
.end method

.method public final a(ZLdru;)V
    .locals 8
    .param p1, "show"    # Z
    .param p2, "manager"    # Ldru;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 538
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->u:Z

    .line 6605
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->o:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 6606
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->o:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 6607
    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->o:Landroid/animation/ObjectAnimator;

    .line 6609
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->x:F

    .line 6610
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->y:I

    .line 6611
    iget v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->p:F

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->setHiddenTimeCurrentOffset(F)V

    .line 540
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->w:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->w:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 542
    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->w:Landroid/animation/ObjectAnimator;

    .line 544
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 545
    if-eqz p1, :cond_3

    .line 546
    const-string/jumbo v0, "hiddenSelectOffset"

    new-array v1, v1, [F

    iget v2, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->v:F

    aput v2, v1, v3

    invoke-virtual {p2}, Ldru;->e()F

    move-result v2

    aput v2, v1, v4

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->w:Landroid/animation/ObjectAnimator;

    .line 547
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->w:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 548
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->w:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 555
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->s:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->setBottomMode(Z)V

    .line 556
    return-void

    .line 550
    :cond_3
    const-string/jumbo v0, "hiddenSelectOffset"

    new-array v1, v1, [F

    iget v2, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->v:F

    aput v2, v1, v3

    const/4 v2, 0x0

    aput v2, v1, v4

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->w:Landroid/animation/ObjectAnimator;

    .line 551
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->w:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 552
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->w:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public final a(ZZ)V
    .locals 2
    .param p1, "smooth"    # Z
    .param p2, "safe"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 347
    const/4 v0, -0x1

    const v1, -0xf4240

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a(IIZZ)V

    .line 348
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->t:Lecg;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->t:Lecg;

    .line 3332
    invoke-virtual {v0}, Lecg;->b()V

    .line 372
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 381
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 382
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x3

    const/4 v7, 0x0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 384
    :cond_0
    return-void
.end method

.method public getCurrentAnchor()Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$a;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getFirstVisibleDataPosition()I

    move-result v1

    .line 270
    .local v1, "firstVisibleDataPosition":I
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->h:Lcqr;

    if-eqz v2, :cond_0

    .line 271
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->h:Lcqr;

    invoke-virtual {v2, v1}, Lcqr;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 272
    .local v0, "data":Lcom/alibaba/wukong/im/Message;
    if-eqz v0, :cond_0

    .line 273
    new-instance v2, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$a;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getFirstVisibleDataBottomOffset()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$a;-><init>(Lcom/alibaba/wukong/im/Message;IB)V

    .line 276
    .end local v0    # "data":Lcom/alibaba/wukong/im/Message;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getFirstVisibleDataPosition()I
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->b(I)I

    move-result v0

    .line 228
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getLastVisibleDataPosition()I
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->b(I)I

    move-result v0

    .line 239
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method public getTotalDataCount()I
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->h:Lcqr;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->h:Lcqr;

    invoke-virtual {v0}, Lcqr;->getCount()I

    move-result v0

    .line 261
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->o:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->o:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 692
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->o:Landroid/animation/ObjectAnimator;

    .line 694
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 695
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 436
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->k:Landroid/view/GestureDetector;

    if-eqz v4, :cond_0

    .line 437
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->k:Landroid/view/GestureDetector;

    invoke-virtual {v4, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 440
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    packed-switch v4, :pswitch_data_0

    .line 473
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->g:Z

    if-eqz v4, :cond_5

    .line 476
    :cond_2
    :goto_1
    return v2

    .line 442
    :pswitch_0
    iget-boolean v4, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->g:Z

    if-nez v4, :cond_1

    .line 443
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->l:F

    .line 444
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->m:F

    .line 445
    iput-boolean v3, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->n:Z

    goto :goto_0

    .line 449
    :pswitch_1
    iget-boolean v4, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->n:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->g:Z

    if-nez v4, :cond_1

    .line 450
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->l:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 451
    .local v0, "dx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->m:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 452
    .local v1, "dy":F
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v1, v4

    if-ltz v4, :cond_1

    .line 455
    :cond_3
    cmpl-float v4, v0, v1

    if-lez v4, :cond_4

    iget v4, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->l:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_2

    .line 458
    :cond_4
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->n:Z

    goto :goto_0

    .line 463
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    :pswitch_2
    iget-boolean v4, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->g:Z

    if-eqz v4, :cond_1

    .line 464
    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a(Z)V

    goto :goto_0

    .line 468
    :pswitch_3
    iget-boolean v4, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->g:Z

    if-eqz v4, :cond_1

    .line 469
    invoke-direct {p0, v3}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a(Z)V

    goto :goto_0

    :cond_5
    move v2, v3

    .line 476
    goto :goto_1

    .line 440
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAdapter(Lcqr;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcqr",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "adapter":Lcqr;, "Lcqr<Lcom/alibaba/wukong/im/Message;>;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->h:Lcqr;

    .line 157
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 158
    return-void
.end method

.method public setBottomMode(Z)V
    .locals 2
    .param p1, "isBottomMode"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 358
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 359
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->s:Z

    .line 360
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->u:Z

    if-nez v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTranscriptMode(I)V

    goto :goto_0
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 390
    :cond_0
    return-void
.end method

.method public setGestureDetector(Landroid/view/GestureDetector;)V
    .locals 0
    .param p1, "gestureDetector"    # Landroid/view/GestureDetector;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->k:Landroid/view/GestureDetector;

    .line 174
    return-void
.end method

.method public setHiddenSelectOffset(F)V
    .locals 5
    .param p1, "offset"    # F

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 559
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    if-eqz v3, :cond_5

    .line 560
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 561
    .local v1, "l":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 562
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 563
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 564
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lctv;

    if-eqz v3, :cond_1

    .line 565
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lctv;

    invoke-virtual {v3, p1}, Lctv;->b(F)V

    .line 561
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 566
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcxr;

    if-eqz v3, :cond_0

    .line 567
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-lez v3, :cond_2

    .line 568
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcxr;

    const/4 v4, 0x1

    .line 7261
    iput-boolean v4, v3, Lcxr;->a:Z

    goto :goto_1

    .line 570
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcxr;

    const/4 v4, 0x0

    .line 8261
    iput-boolean v4, v3, Lcxr;->a:Z

    goto :goto_1

    .line 575
    .end local v2    # "v":Landroid/view/View;
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->h:Lcqr;

    instance-of v3, v3, Lcug;

    if-eqz v3, :cond_4

    .line 576
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->h:Lcqr;

    check-cast v3, Lcug;

    .line 8308
    iput p1, v3, Lcug;->k:F

    .line 578
    :cond_4
    iput p1, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->v:F

    .line 580
    .end local v0    # "i":I
    .end local v1    # "l":I
    :cond_5
    return-void
.end method

.method public setHiddenTimeCurrentOffset(F)V
    .locals 5
    .param p1, "offset"    # F

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 591
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    if-eqz v4, :cond_2

    .line 592
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 593
    .local v2, "l":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 594
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 595
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcts;

    if-eqz v4, :cond_0

    .line 596
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcts;

    .line 597
    .local v0, "holder":Lcts;
    invoke-virtual {v0, p1}, Lcts;->a(F)V

    .line 593
    .end local v0    # "holder":Lcts;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 600
    .end local v3    # "v":Landroid/view/View;
    :cond_1
    iput p1, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->q:F

    .line 602
    .end local v1    # "i":I
    .end local v2    # "l":I
    :cond_2
    return-void
.end method

.method public setOnListViewArrivedListener(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$b;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$b;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->i:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$b;

    .line 166
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->j:Landroid/widget/AbsListView$OnScrollListener;

    .line 170
    return-void
.end method
