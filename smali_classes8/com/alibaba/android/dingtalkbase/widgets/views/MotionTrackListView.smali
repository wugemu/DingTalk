.class public Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;
.super Landroid/widget/ListView;
.source "MotionTrackListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$b;,
        Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$a;,
        Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$c;
    }
.end annotation


# instance fields
.field public a:Z

.field private b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$c;

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$a;

.field private d:Landroid/view/GestureDetector;

.field private e:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->a(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->a(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->a(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->e:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 39
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$b;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$b;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->d:Landroid/view/GestureDetector;

    .line 40
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;)V

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;
    .param p1, "x1"    # Z

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->a:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$a;

    return-object v0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 70
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$c;

    if-eqz v1, :cond_0

    .line 71
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 72
    .local v0, "location":[I
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->getLocationOnScreen([I)V

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 75
    .end local v0    # "location":[I
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->d:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$b;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$b;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->d:Landroid/view/GestureDetector;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->d:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 84
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setFlingCallBack(Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$a;)V
    .locals 0
    .param p1, "callBack"    # Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$a;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$a;

    .line 98
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "onScrollListener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->e:Landroid/widget/AbsListView$OnScrollListener;

    .line 90
    return-void
.end method

.method public setTouchCallBack(Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$c;)V
    .locals 0
    .param p1, "touchCallBack"    # Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$c;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$c;

    .line 94
    return-void
.end method
