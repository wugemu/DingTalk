.class public Lcom/alibaba/android/user/contact/view/CommonScrollListView;
.super Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;
.source "CommonScrollListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/view/CommonScrollListView$a;
    }
.end annotation


# instance fields
.field private b:Landroid/view/View;

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->f:Z

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->g:I

    .line 47
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->a()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->f:Z

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->g:I

    .line 57
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->a()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->f:Z

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->g:I

    .line 52
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->a()V

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/view/CommonScrollListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/view/CommonScrollListView;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->g:I

    return p1
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->footer_loading_view:I

    const/4 v2, 0x0

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->b:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->addFooterView(Landroid/view/View;)V

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/view/CommonScrollListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/view/CommonScrollListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    .prologue
    .line 31
    iget v0, p0, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->c:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/view/CommonScrollListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/view/CommonScrollListView;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->d:I

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/view/CommonScrollListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    .prologue
    .line 31
    iget v0, p0, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->d:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/view/CommonScrollListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/view/CommonScrollListView;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->c:I

    return p1
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/view/CommonScrollListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    .prologue
    .line 31
    iget v0, p0, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->e:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/view/CommonScrollListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/view/CommonScrollListView;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->e:I

    return p1
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/view/CommonScrollListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    .prologue
    .line 31
    iget v0, p0, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->g:I

    return v0
.end method


# virtual methods
.method public setCanScrollLoadMore(Z)V
    .locals 0
    .param p1, "canScrollLoadMore"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->f:Z

    .line 108
    return-void
.end method

.method public setOnScrollChange(Lcom/alibaba/android/user/contact/view/CommonScrollListView$a;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/android/user/contact/view/CommonScrollListView$a;

    .prologue
    .line 68
    new-instance v0, Lcom/alibaba/android/user/contact/view/CommonScrollListView$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/user/contact/view/CommonScrollListView$1;-><init>(Lcom/alibaba/android/user/contact/view/CommonScrollListView;Lcom/alibaba/android/user/contact/view/CommonScrollListView$a;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 104
    return-void
.end method
