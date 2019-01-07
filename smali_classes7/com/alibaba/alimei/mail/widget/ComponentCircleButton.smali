.class public Lcom/alibaba/alimei/mail/widget/ComponentCircleButton;
.super Landroid/widget/LinearLayout;
.source "ComponentCircleButton.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/widget/ComponentCircleButton;->a(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/widget/ComponentCircleButton;->a(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/widget/ComponentCircleButton;->a(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 38
    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/widget/ComponentCircleButton;->setOrientation(I)V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Laxo$d;->cmail_dimen_6_dp:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 40
    .local v1, "sixDp":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Laxo$d;->cmail_dimen_4_dp:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 41
    .local v0, "fourDp":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Laxo$d;->cmail_dimen_2_dp:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 42
    .local v2, "twoDp":I
    invoke-virtual {p0, v0, v0, v1, v0}, Lcom/alibaba/alimei/mail/widget/ComponentCircleButton;->setPadding(IIII)V

    .line 44
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/alibaba/alimei/mail/widget/ComponentCircleButton;->a:Landroid/widget/TextView;

    .line 45
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/ComponentCircleButton;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Laxo$d;->alm_cmail_font_size_s12:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 46
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/ComponentCircleButton;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Laxo$c;->ui_common_blue1_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/ComponentCircleButton;->a:Landroid/widget/TextView;

    sget v4, Laxo$e;->cmail_white_circle_selector:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 48
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/ComponentCircleButton;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 50
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/alibaba/alimei/mail/widget/ComponentCircleButton;->b:Landroid/widget/TextView;

    .line 51
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/ComponentCircleButton;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Laxo$d;->alm_cmail_font_size_s12:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 52
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/ComponentCircleButton;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Laxo$c;->ui_common_content_fg_color_alpha_72:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/ComponentCircleButton;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 55
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/ComponentCircleButton;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/widget/ComponentCircleButton;->addView(Landroid/view/View;)V

    .line 56
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/ComponentCircleButton;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/widget/ComponentCircleButton;->addView(Landroid/view/View;)V

    .line 58
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/widget/ComponentCircleButton;->setShowDividers(I)V

    .line 59
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/widget/ComponentCircleButton;->setDividerPadding(I)V

    .line 61
    sget v3, Laxo$e;->cmail_gray_circle_selector:I

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/widget/ComponentCircleButton;->setBackgroundResource(I)V

    .line 62
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/widget/ComponentCircleButton;->setClickable(Z)V

    .line 63
    return-void
.end method


# virtual methods
.method public setLeftText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ComponentCircleButton;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 71
    return-void
.end method

.method public setLeftText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ComponentCircleButton;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-void
.end method

.method public setRightText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ComponentCircleButton;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 79
    return-void
.end method

.method public setRightText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ComponentCircleButton;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method
