.class public Lcom/alibaba/android/ding/widget/CommentFilterLayout;
.super Landroid/widget/LinearLayout;
.source "CommentFilterLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ding/widget/CommentFilterLayout$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/content/Context;

.field private e:J

.field private f:J

.field private g:Lcom/alibaba/android/ding/widget/CommentFilterLayout$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v0, -0x1

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    iput-wide v0, p0, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->e:J

    .line 32
    iput-wide v0, p0, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->f:J

    .line 39
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->d:Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->c()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v0, -0x1

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-wide v0, p0, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->e:J

    .line 32
    iput-wide v0, p0, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->f:J

    .line 45
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->d:Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->c()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const-wide/16 v0, -0x1

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput-wide v0, p0, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->e:J

    .line 32
    iput-wide v0, p0, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->f:J

    .line 51
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->d:Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->c()V

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/widget/CommentFilterLayout;)Lcom/alibaba/android/ding/widget/CommentFilterLayout$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/CommentFilterLayout;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->g:Lcom/alibaba/android/ding/widget/CommentFilterLayout$a;

    return-object v0
.end method

.method private static a(J)Ljava/lang/String;
    .locals 2
    .param p0, "count"    # J

    .prologue
    .line 99
    const-wide/16 v0, 0x64

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "99+"

    goto :goto_0
.end method

.method private b()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 88
    iget-wide v4, p0, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->e:J

    cmp-long v2, v4, v6

    if-gtz v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->b:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 90
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->c:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 96
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->getCurrentIndex()I

    move-result v2

    if-ne v2, v0, :cond_1

    iget-wide v4, p0, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->f:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_1

    .line 94
    .local v0, "emptyViewVisible":Z
    :goto_1
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->b:Landroid/view/View;

    if-eqz v0, :cond_2

    move v2, v3

    :goto_2
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->c:Landroid/view/View;

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .end local v0    # "emptyViewVisible":Z
    :cond_1
    move v0, v1

    .line 93
    goto :goto_1

    .restart local v0    # "emptyViewVisible":Z
    :cond_2
    move v2, v1

    .line 94
    goto :goto_2

    :cond_3
    move v1, v3

    .line 95
    goto :goto_3
.end method

.method static synthetic b(Lcom/alibaba/android/ding/widget/CommentFilterLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/CommentFilterLayout;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->b()V

    return-void
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laxp$g;->ding_layout_ding_comment_filter:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 104
    sget v0, Laxp$f;->view_sliding_tab_strip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;

    .line 105
    sget v0, Laxp$f;->line_above_empty_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->b:Landroid/view/View;

    .line 106
    sget v0, Laxp$f;->tv_empty_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->c:Landroid/view/View;

    .line 108
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->setInitialIndex(I)V

    .line 109
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;

    new-instance v1, Lcom/alibaba/android/ding/widget/CommentFilterLayout$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/widget/CommentFilterLayout$1;-><init>(Lcom/alibaba/android/ding/widget/CommentFilterLayout;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->setTabSelectListener(Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$a;)V

    .line 123
    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 9
    .param p1, "allCommentCount"    # J
    .param p3, "userCommentCount"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 70
    iget-wide v0, p0, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->e:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->f:J

    cmp-long v0, v0, p3

    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 74
    :cond_0
    iput-wide p1, p0, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->e:J

    .line 75
    iput-wide p3, p0, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->f:J

    .line 76
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->b()V

    .line 77
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->setVisibility(I)V

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->d:Landroid/content/Context;

    sget v3, Laxp$i;->dt_ding_all_comment_num_fmt:I

    new-array v4, v7, [Ljava/lang/Object;

    .line 83
    invoke-static {p1, p2}, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->a(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->d:Landroid/content/Context;

    sget v3, Laxp$i;->dt_ding_comment_user_num_AT:I

    new-array v4, v7, [Ljava/lang/Object;

    .line 84
    invoke-static {p3, p4}, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->a(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 82
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->a([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->getCurrentIndex()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCommentFilterListener(Lcom/alibaba/android/ding/widget/CommentFilterLayout$a;)V
    .locals 0
    .param p1, "commentFilterListener"    # Lcom/alibaba/android/ding/widget/CommentFilterLayout$a;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->g:Lcom/alibaba/android/ding/widget/CommentFilterLayout$a;

    .line 67
    return-void
.end method

.method public setCurrentFilter(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->getCurrentIndex()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->setCurrentItemAndRefresh(I)V

    .line 63
    :cond_0
    return-void
.end method
