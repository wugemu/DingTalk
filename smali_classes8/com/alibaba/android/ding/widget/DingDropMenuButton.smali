.class public Lcom/alibaba/android/ding/widget/DingDropMenuButton;
.super Landroid/widget/FrameLayout;
.source "DingDropMenuButton.java"


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/ding/widget/DingDropMenuButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/ding/widget/DingDropMenuButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1037
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingDropMenuButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laxp$g;->ding_drop_menu_item:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1038
    sget v0, Laxp$f;->iv_type:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingDropMenuButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingDropMenuButton;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1039
    sget v0, Laxp$f;->item_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingDropMenuButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingDropMenuButton;->b:Landroid/widget/TextView;

    .line 1040
    sget v0, Laxp$f;->item_text_right_padding:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingDropMenuButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingDropMenuButton;->c:Landroid/view/View;

    .line 1041
    sget v0, Laxp$f;->item_red_dot_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingDropMenuButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingDropMenuButton;->d:Landroid/view/View;

    .line 1042
    sget v0, Laxp$f;->item_red_dot_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingDropMenuButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingDropMenuButton;->e:Landroid/widget/TextView;

    .line 1043
    sget v0, Laxp$f;->item_red_dot:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingDropMenuButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingDropMenuButton;->f:Landroid/view/View;

    .line 34
    return-void
.end method


# virtual methods
.method public setIconFontResId(I)V
    .locals 2
    .param p1, "iconFontResId"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 55
    if-lez p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingDropMenuButton;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingDropMenuButton;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setRedCount(I)V
    .locals 3
    .param p1, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 63
    if-nez p1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingDropMenuButton;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingDropMenuButton;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingDropMenuButton;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingDropMenuButton;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    const/16 v0, 0x63

    if-le p1, v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingDropMenuButton;->e:Landroid/widget/TextView;

    const-string/jumbo v1, "99+"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingDropMenuButton;->e:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setRedCountNumberShow(Z)V
    .locals 3
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 78
    if-eqz p1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingDropMenuButton;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingDropMenuButton;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 85
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingDropMenuButton;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingDropMenuButton;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setText(I)V
    .locals 1
    .param p1, "stringRes"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingDropMenuButton;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 48
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingDropMenuButton;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    return-void
.end method
