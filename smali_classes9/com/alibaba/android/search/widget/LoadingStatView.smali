.class public Lcom/alibaba/android/search/widget/LoadingStatView;
.super Landroid/widget/LinearLayout;
.source "LoadingStatView.java"


# instance fields
.field private a:Landroid/view/View$OnClickListener;

.field private b:Lcom/alibaba/android/search/widget/NetworkErrorView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/search/widget/LoadingStatView;->f:I

    .line 44
    invoke-direct {p0}, Lcom/alibaba/android/search/widget/LoadingStatView;->b()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/search/widget/LoadingStatView;->f:I

    .line 49
    invoke-direct {p0}, Lcom/alibaba/android/search/widget/LoadingStatView;->b()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/search/widget/LoadingStatView;->f:I

    .line 54
    invoke-direct {p0}, Lcom/alibaba/android/search/widget/LoadingStatView;->b()V

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/widget/LoadingStatView;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/widget/LoadingStatView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/android/search/widget/LoadingStatView;->a:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/LoadingStatView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lemt$f;->layout_loading_stat_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 100
    sget v0, Lemt$e;->ll_network_stat_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/widget/LoadingStatView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/widget/NetworkErrorView;

    iput-object v0, p0, Lcom/alibaba/android/search/widget/LoadingStatView;->b:Lcom/alibaba/android/search/widget/NetworkErrorView;

    .line 101
    iget-object v0, p0, Lcom/alibaba/android/search/widget/LoadingStatView;->b:Lcom/alibaba/android/search/widget/NetworkErrorView;

    sget v1, Lemt$e;->tv_network_error_content:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/widget/NetworkErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lemt$g;->dt_search_weak_network_loading_failed_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 102
    iget-object v0, p0, Lcom/alibaba/android/search/widget/LoadingStatView;->b:Lcom/alibaba/android/search/widget/NetworkErrorView;

    sget v1, Lemt$e;->tv_retry_btn:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/widget/NetworkErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lemt$g;->dt_search_network_error_progress_reload:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 103
    iget-object v0, p0, Lcom/alibaba/android/search/widget/LoadingStatView;->b:Lcom/alibaba/android/search/widget/NetworkErrorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/widget/NetworkErrorView;->setDividerVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/alibaba/android/search/widget/LoadingStatView;->b:Lcom/alibaba/android/search/widget/NetworkErrorView;

    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/LoadingStatView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lemt$b;->ui_common_warming_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/widget/NetworkErrorView;->setWarningColor(I)V

    .line 106
    sget v0, Lemt$e;->tv_loading:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/widget/LoadingStatView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/search/widget/LoadingStatView;->c:Landroid/widget/TextView;

    .line 107
    sget v0, Lemt$e;->ll_loading_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/widget/LoadingStatView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/widget/LoadingStatView;->e:Landroid/view/View;

    .line 108
    sget v0, Lemt$e;->btn_reload:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/widget/LoadingStatView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/widget/LoadingStatView;->d:Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcom/alibaba/android/search/widget/LoadingStatView;->d:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/search/widget/LoadingStatView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/widget/LoadingStatView$1;-><init>(Lcom/alibaba/android/search/widget/LoadingStatView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/widget/LoadingStatView;->a(I)V

    .line 118
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4
    .param p1, "stat"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 58
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/LoadingStatView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 62
    :cond_0
    iput p1, p0, Lcom/alibaba/android/search/widget/LoadingStatView;->f:I

    .line 63
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 65
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/alibaba/android/search/widget/LoadingStatView;->setVisibility(I)V

    goto :goto_0

    .line 69
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/alibaba/android/search/widget/LoadingStatView;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/alibaba/android/search/widget/LoadingStatView;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/alibaba/android/search/widget/LoadingStatView;->c:Landroid/widget/TextView;

    sget v1, Lemt$g;->progress_loading:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 72
    iget-object v0, p0, Lcom/alibaba/android/search/widget/LoadingStatView;->b:Lcom/alibaba/android/search/widget/NetworkErrorView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/search/widget/NetworkErrorView;->setVisibility(I)V

    goto :goto_0

    .line 76
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/alibaba/android/search/widget/LoadingStatView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/alibaba/android/search/widget/LoadingStatView;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/alibaba/android/search/widget/LoadingStatView;->c:Landroid/widget/TextView;

    sget v1, Lemt$g;->dt_search_weak_network_loading_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 79
    iget-object v0, p0, Lcom/alibaba/android/search/widget/LoadingStatView;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/alibaba/android/search/widget/LoadingStatView;->b:Lcom/alibaba/android/search/widget/NetworkErrorView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/search/widget/NetworkErrorView;->setVisibility(I)V

    goto :goto_0

    .line 84
    :pswitch_3
    invoke-virtual {p0, v2}, Lcom/alibaba/android/search/widget/LoadingStatView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/alibaba/android/search/widget/LoadingStatView;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/alibaba/android/search/widget/LoadingStatView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/alibaba/android/search/widget/LoadingStatView;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/search/widget/LoadingStatView;->b:Lcom/alibaba/android/search/widget/NetworkErrorView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/widget/NetworkErrorView;->setVisibility(I)V

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 95
    iget v1, p0, Lcom/alibaba/android/search/widget/LoadingStatView;->f:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/alibaba/android/search/widget/LoadingStatView;->f:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setReloadClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/alibaba/android/search/widget/LoadingStatView;->a:Landroid/view/View$OnClickListener;

    .line 122
    iget-object v0, p0, Lcom/alibaba/android/search/widget/LoadingStatView;->b:Lcom/alibaba/android/search/widget/NetworkErrorView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/search/widget/NetworkErrorView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    return-void
.end method
