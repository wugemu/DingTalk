.class public Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;
.super Landroid/widget/LinearLayout;
.source "DingRimetListEmptyView.java"


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->a(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->a(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->a(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->setOrientation(I)V

    .line 42
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->setGravity(I)V

    .line 43
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->getLayoutId()I

    move-result v0

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    sget v0, Laxp$f;->iv_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 45
    sget v0, Laxp$f;->tv_empty:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->b:Landroid/widget/TextView;

    .line 46
    sget v0, Laxp$f;->tv_empty_description:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->c:Landroid/widget/TextView;

    .line 47
    sget v0, Laxp$f;->tv_btn:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->d:Landroid/widget/TextView;

    .line 48
    return-void
.end method


# virtual methods
.method public final a(IILandroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "resColorId"    # I
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 85
    if-lez p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 87
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(ILandroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 96
    if-lez p1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 98
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 51
    sget v0, Laxp$g;->ding_rimet_list_empty:I

    return v0
.end method

.method public setEmptyIconFontResource(I)V
    .locals 2
    .param p1, "resId"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 56
    if-lez p1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 58
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setEmptyTextContent(I)V
    .locals 2
    .param p1, "resid"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 65
    if-lez p1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 72
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->b:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setEmptyTextContentString(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
