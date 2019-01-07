.class public Lcom/alibaba/android/search/widget/SearchFeedbackView;
.super Landroid/widget/LinearLayout;
.source "SearchFeedbackView.java"


# instance fields
.field private a:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/widget/SearchFeedbackView;->a(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/widget/SearchFeedbackView;->a(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/widget/SearchFeedbackView;->a(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/SearchFeedbackView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lemt$f;->common_feedback_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 64
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    sget v0, Lemt$e;->content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/widget/SearchFeedbackView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    :goto_0
    sget v0, Lemt$e;->ll_feedback_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/widget/SearchFeedbackView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/search/widget/SearchFeedbackView$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/search/widget/SearchFeedbackView$1;-><init>(Lcom/alibaba/android/search/widget/SearchFeedbackView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void

    .line 67
    :cond_0
    sget v0, Lemt$e;->content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/widget/SearchFeedbackView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/search/widget/SearchFeedbackView;Landroid/view/View;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/widget/SearchFeedbackView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 39
    .line 1095
    iget-object v0, p0, Lcom/alibaba/android/search/widget/SearchFeedbackView;->a:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/alibaba/android/search/widget/SearchFeedbackView;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 39
    :cond_0
    return-void
.end method


# virtual methods
.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/alibaba/android/search/widget/SearchFeedbackView;->a:Landroid/view/View$OnClickListener;

    .line 91
    return-void
.end method
