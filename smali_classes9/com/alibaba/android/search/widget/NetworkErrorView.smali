.class public Lcom/alibaba/android/search/widget/NetworkErrorView;
.super Landroid/widget/LinearLayout;
.source "NetworkErrorView.java"


# instance fields
.field private a:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0}, Lcom/alibaba/android/search/widget/NetworkErrorView;->a()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0}, Lcom/alibaba/android/search/widget/NetworkErrorView;->a()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-direct {p0}, Lcom/alibaba/android/search/widget/NetworkErrorView;->a()V

    .line 49
    return-void
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/NetworkErrorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lemt$f;->network_error_view:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 55
    sget v1, Lemt$e;->tv_retry_btn:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/widget/NetworkErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "retryBtn":Landroid/view/View;
    new-instance v1, Lcom/alibaba/android/search/widget/NetworkErrorView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/widget/NetworkErrorView$1;-><init>(Lcom/alibaba/android/search/widget/NetworkErrorView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/widget/NetworkErrorView;Landroid/view/View;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/widget/NetworkErrorView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 32
    .line 1080
    iget-object v0, p0, Lcom/alibaba/android/search/widget/NetworkErrorView;->a:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 1084
    iget-object v0, p0, Lcom/alibaba/android/search/widget/NetworkErrorView;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 32
    :cond_0
    return-void
.end method


# virtual methods
.method public setDividerVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 70
    sget v0, Lemt$e;->divider:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/widget/NetworkErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alibaba/android/search/widget/NetworkErrorView;->a:Landroid/view/View$OnClickListener;

    .line 76
    return-void
.end method

.method public setWarningColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 65
    sget v0, Lemt$e;->my_balance_icon_iv:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/widget/NetworkErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 66
    sget v0, Lemt$e;->tv_retry_btn:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/widget/NetworkErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    return-void
.end method
