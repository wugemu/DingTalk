.class public Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;
.super Landroid/widget/LinearLayout;
.source "ContactEmptyView.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;->a(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;->a(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;->a(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;->setOrientation(I)V

    .line 43
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;->setGravity(I)V

    .line 44
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;->getLayoutId()I

    move-result v0

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    sget v0, Lcig$f;->image1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;->a:Landroid/widget/ImageView;

    .line 46
    sget v0, Lcig$f;->tv_empty:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;->b:Landroid/widget/TextView;

    .line 47
    sget v0, Lcig$f;->tv_empty_description:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;->c:Landroid/widget/TextView;

    .line 48
    sget v0, Lcig$f;->tv_extended_description:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;->d:Landroid/widget/TextView;

    .line 49
    return-void
.end method


# virtual methods
.method public getExtendedTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcig$h;->view_rimet_contact_empty:I

    return v0
.end method

.method public setEmptyDescription(I)V
    .locals 2
    .param p1, "resId"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 97
    if-lez p1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 99
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;->c:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setEmptyDescription(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    return-void
.end method

.method public setEmptyImageResource(I)V
    .locals 2
    .param p1, "resid"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 56
    if-lez p1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;->a:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

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
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 72
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;->b:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setEmptyTextContentSpanStringBuilder(Landroid/text/SpannableStringBuilder;)V
    .locals 1
    .param p1, "string"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    return-void
.end method

.method public setEmptyTextContentString(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method

.method public setExtendedDescription(I)V
    .locals 2
    .param p1, "resId"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 75
    if-lez p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
